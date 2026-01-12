function [y] = karplus_strong(Fs,f,alpha,tempo,timbre)
%--------------------------------------------------------------------------
% Por Fernando Grahl Zuffo
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Definição da função de Karplus Strong recebendo a frequência de
% amostragem, a frequência da nota, o valor de alpha (atenuação), tempo da batida e o
% timbre para definir a entonação/instrumento de cada nota
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Definindo parâmetros 
% M = buffer de atraso, calcula o período de Karplus_Strong por Fs/f
% n = valor de índice de amostras
% n_total = número total de amostras pelo tempo da música (124bpm)
% t_drum = usado para Synth, modulação de onda e tempo contínuo
M = round(Fs/f);
n = 1:M;
n_total = round(tempo*Fs);
t_drum = (0:n_total-1)/Fs;
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Definindo os parâmetros das senóides que geram as harmônicas do piano
x1 = 0.09120.*sin(2*pi/M*n*1); x2 = 0.01445.*sin(2*pi/M*n*2); 
x3 = 0.02570.*sin(2*pi/M*n*3); x4 = 0.00316.*sin(2*pi/M*n*4);
x5 = 0.00955.*sin(2*pi/M*n*5); x6 = 0.00251.*sin(2*pi/M*n*6);
harmonicaPiano = x1 + x2 + x3 + x4 + x5 + x6;

% Modelo Fase/Frequência = 2*pi*(n/M)*k - gerando k vezes a frequência
% base do nosso buffer;

%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Switch case para os Timbres
switch(timbre)
    case 0 % Case 0 para o Piano
        x = harmonicaPiano;

    case 1 % Case 1 para Batidas (Kicks)
        f_env = (150 - 45) * exp(-t_drum/0.03) + 45;
        fase = 2 * pi * cumsum(f_env) / Fs;
        x = tanh(sin(fase) * 25) .* exp(-9 * t_drum);
        click = (rand(1, n_total)-0.5) .* exp(-t_drum/0.003) * 0.8;
        x = x + click;

    case 2 % Case 2 para os pratos? não sei o termo kkkkk(Claps)
    
        % White noise (ruído branco) ruído padrão sintetizado
        % Env é uma queda de frequência exponencial
        % Multiplicando temos um "Kick com White Noise"
        noise = (rand(1, n_total) - 0.5) * 2;
        env = exp(-70 * t_drum);
        x = noise .* env;

    case 3 % Case 3 para os chocalhos, não faço ideia, o som me assimila a um chocalho(Hihats)
        x = (rand(1, n_total) - 0.5) .* exp(-60 * t_drum);

    case 4 % Case 4 Sintetizadores de SuperSerra(Lead)
        % SuperSaw com 3 osciladores, usando função de serra do matlab com
        % variação de inteiro 2*pi*1*(n/M) (quase uma senóide quadrada),
        % pequenas variações nela geram um formato de serra
        s1 = sawtooth(2*pi*n/M);
        s2 = sawtooth(2*pi*1.005*n/M); 
        s3 = sawtooth(2*pi*0.995*n/M);
        x = (s1 + s2 + s3);

    case 5 % Case 5 Piano 2 (Não usei por enquanto), este é para caso haja algum piano a mais que soe diferente
        x = x1 + x2;

    otherwise % Se não entrar em nenhum dos cases ou for inválido o timbre, ele só reseta ao piano
        x = harmonicaPiano;
end
%--------------------------------------------------------------------------

% Realizando os testes do timbre, a princípio, não usamos Karplus para
% estes sons de Bateria, visto que são pontos de senóide no tempo desejado
if (timbre >= 1 && timbre <= 3)
    y = x;
else
    y = zeros(1, n_total);
    y(1:M) = x(1:M); % Preenche o som no tempo
    
    for i = M+1:n_total
        % repetição de sustentação
        y(i) = alpha * y(i-M);
    end

% Cada amostra vai ter que ser atrasada em um em relação a M;

    if timbre == 4
        y = tanh(y * 4); % Saturação agressiva - Aumento do supersaw para parecer um oscilador
        y = y * 2.5;     % O Volume dele é ele mesmo multiplicado, queremos que ele seja mais alto, comum em Leads
    end
end

% Normalização Final
if max(abs(y)) > 0
    y = y / max(abs(y));
end

end