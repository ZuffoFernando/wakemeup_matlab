%%
clear
close
clc

%--------------------------------------------------------------------------
%Criado Por - Fernando Grahl Zuffo
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
%Adiciona o caminho na raiz para a função Karplus-Strong
addpath('C:\Users\Ferna\Desktop\karplus_strong.m');
%--------------------------------------------------------------------------


%--------------------------------------------------------------------------
% Definições de variáveis de controle básicas onde:
Fs = 48e3; % Frequência de Amostragem
tempo = 0.121; % Tempo da Música calculado para 124BPM
alpha = 0.99; % Alpha, entonação das notas da música
divisorFrequencia = 3.5; % Divisor de Frequência para as notas
%--------------------------------------------------------------------------


%--------------------------------------------------------------------------
%Cálculo utilizado para o tempo da música sendo:
%BPM - Batidas por Minuto
%BPS - Batidas por segundo
%TEMPO - Proporção 4/4 (4 batidas por 4 seções de tempo)
%Como precisa entender o tempo de 1 nota, dividimos 1 em 4 partes e divimos
%esta pelo BPS;
%bpm = 124;
%bps = bpm/60;
%tempo = (1/4)/bps;
% -------------------------------------------------------------------------

%--------------------------------------------------------------------------

%Configuração de tempos de 0, tempos vazios para acompanhar melodias
%Função round para arrendondar o valor da divisão e atingir um valor exato

%--------------------------------------------------------------------------
tempZHalf = zeros(1,0.5*round(tempo*Fs));
tempZ1 = zeros(1,1*round(tempo*Fs));
tempZ2 = zeros(1,2*round(tempo*Fs));
tempZ3 = zeros(1,3*round(tempo*Fs));
tempZ4 = zeros(1,4*round(tempo*Fs));
tempZ6 = zeros(1,6*round(tempo*Fs));
tempZ8 = zeros(1,8*round(tempo*Fs));
tempZ9 = zeros(1,9*round(tempo*Fs));
tempZ10 = zeros(1,10*round(tempo*Fs));
tempZ13 = zeros(1,13*round(tempo*Fs));
tempZ16 = zeros(1,16*round(tempo*Fs));
tempZ17 = zeros(1,17*round(tempo*Fs));
tempZ19 = zeros(1,19*round(tempo*Fs));
tempZ20 = zeros(1,20*round(tempo*Fs));
tempZ21 = zeros(1,21*round(tempo*Fs));
tempZ23 = zeros(1,23*round(tempo*Fs));
tempZ24 = zeros(1,24*round(tempo*Fs));
tempZ26 = zeros(1,26*round(tempo*Fs));
tempZ27 = zeros(1,27*round(tempo*Fs));
tempZ32 = zeros(1,32*round(tempo*Fs));
tempZ48 = zeros(1,48*round(tempo*Fs));
tempZ49 = zeros(1,49*round(tempo*Fs));
% -------------------------------------------------------------------------

% DEFINIÇÃO DAS NOTAS EM SUAS RESPECTIVAS OITAVAS

% Define-se a frequência da nota pela fonte:
% https://iazzetta.eca.usp.br/tutor/acustica/introducao/tabela1.html
% Divisor de frequência para atingir notas mais graves ou agudas
% https://muted.io/note-frequencies/

% Utiliza a função karplus-strong passando de parâmetro a: 
% Frequência de Amostragem (Fs)
% Frequência Atual da Nota (F_nota)
% Ajuste da entonação da nota (Alpha)

% Ajuste do tempo da nota (tempo)
% Ajuste do timbre da nota (timbre)


%--------------------------------------------------------------------------
% 6ª OITAVA ---------------------------------------------------------------
%--------------------------------------------------------------------------
f_A6 = 1760;
A6 = karplus_strong(Fs,f_A6,alpha,tempo,0);

A6_Synth = karplus_strong(Fs,f_A6,alpha,tempo,4);

f_G6 = 1567.98;
G6 = karplus_strong(Fs,f_G6,alpha,tempo,0);
G6_Long = karplus_strong(Fs,f_G6,alpha,2*tempo,0);

G6_Synth = karplus_strong(Fs,f_G6,alpha,tempo,4);
G6_Long_Synth = karplus_strong(Fs,f_G6,alpha,2*tempo,4);

f_F6 = 1496.91;
F6 = karplus_strong(Fs,f_F6,alpha,tempo,0);
F6_Long = karplus_strong(Fs,f_F6,alpha,2*tempo,0);

F6_Synth = karplus_strong(Fs,f_F6,alpha,tempo,4);
F6_Long_Synth = karplus_strong(Fs,f_F6,alpha,2*tempo,4);

f_D6 = 1174.66;
D6 = karplus_strong(Fs,f_D6,alpha,tempo,0);
D6_Long = karplus_strong(Fs,f_D6,alpha,2*tempo,0);

D6_Long_Synth = karplus_strong(Fs,f_D6,alpha,2*tempo,4);
D6_Synth = karplus_strong(Fs,f_D6,alpha,tempo,4);

f_C6 = 1046.5;
C6 = karplus_strong(Fs,f_C6,alpha,tempo,0);

C6_Synth = karplus_strong(Fs,f_C6,alpha,tempo,4);

%--------------------------------------------------------------------------
% 5ª OITAVA ---------------------------------------------------------------
%--------------------------------------------------------------------------

f_B5 = 987.77;
B5_Half = karplus_strong(Fs,f_B5,alpha,tempo*0.5,0);
B5 = karplus_strong(Fs,f_B5,alpha,tempo,0);
B5_Long = karplus_strong(Fs,f_B5,alpha,2*tempo,0);
B5_Triple = karplus_strong(Fs,f_B5,alpha,3*tempo,0);

f_A5 = 880;
A5 = karplus_strong(Fs,f_A5,alpha,tempo,0);
A5_Long = karplus_strong(Fs,f_A5,alpha,2*tempo,0);
A5_Triple = karplus_strong(Fs,f_A5,alpha,3*tempo,0);

A5_Synth = karplus_strong(Fs,f_A5,alpha,tempo,4);

f_Asharp5 = 932.33;
Asharp5 = karplus_strong(Fs,f_Asharp5,alpha,tempo,0);

f_Gsharp5 = 830.61;
Gsharp5 = karplus_strong(Fs,f_Gsharp5,alpha,tempo,0);
Gsharp5_Long = karplus_strong(Fs,f_Gsharp5,alpha,2*tempo,0);

f_G5 = 783.99;
G5_Half = karplus_strong(Fs,f_G5,alpha,tempo*0.5,0);
G5 = karplus_strong(Fs,f_G5,alpha,tempo,0);
G5_Long = karplus_strong(Fs,f_G5,alpha,2*tempo,0);
G5_Triple = karplus_strong(Fs,f_G5,alpha,3*tempo,0);

G5_Synth = karplus_strong(Fs,f_G5,alpha,tempo,4);
G5_Long_Synth = karplus_strong(Fs,f_G5,alpha,2*tempo,4);

f_Fsharp5 = 739.99;
Fsharp5 = karplus_strong(Fs,f_Fsharp5,alpha,tempo,0);
Fsharp5_Long = karplus_strong(Fs,f_Fsharp5,alpha,2*tempo,0);
Fsharp5_Triple = karplus_strong(Fs,f_Fsharp5,alpha,3*tempo,0);

f_F5 = 698.46;
F5 = karplus_strong(Fs,f_F5,alpha,tempo,0);
F5_Long = karplus_strong(Fs,f_F5,alpha,2*tempo,0);

F5_Synth = karplus_strong(Fs,f_F5,alpha,tempo,4);
F5_Long_Synth = karplus_strong(Fs,f_F5,alpha,2*tempo,4);

f_E5 = 659.25;
E5_Half = karplus_strong(Fs,f_E5,alpha,tempo*0.5,0);
E5 = karplus_strong(Fs,f_E5,alpha,tempo,0);
E5_Long = karplus_strong(Fs,f_E5,alpha,2*tempo,0);
E5_Triple = karplus_strong(Fs,f_E5,alpha,3*tempo,0);
E5_Long4 = karplus_strong(Fs,f_E5,alpha,4*tempo,0);
E5_Long8 = karplus_strong(Fs,f_E5,alpha,8*tempo,0);

f_Dsharp5 = 622.25;
Dsharp5 = karplus_strong(Fs,f_Dsharp5,alpha,tempo,0);
Dsharp5_Long = karplus_strong(Fs,f_Dsharp5,alpha,2*tempo,0);
Dsharp5_Long8 = karplus_strong(Fs,f_Dsharp5,alpha,8*tempo,0);

f_D5 = 587.33;
D5 = karplus_strong(Fs,f_D5,alpha,tempo,0);
D5_Long = karplus_strong(Fs,f_D5,alpha,2*tempo,0);
D5_Triple = karplus_strong(Fs,f_D5,alpha,3*tempo,0);
D5_Long4 = karplus_strong(Fs,f_D5,alpha,4*tempo,0);
D5_Long8 = karplus_strong(Fs,f_D5,alpha,8*tempo,0);

D5_Synth = karplus_strong(Fs,f_D5,alpha,tempo,4);
D5_Long_Synth = karplus_strong(Fs,f_D5,alpha,2*tempo,4);

f_Csharp5 = 554.37;
Csharp5 = karplus_strong(Fs,f_Csharp5,alpha,tempo,0);
Csharp5_Long = karplus_strong(Fs,f_Csharp5,alpha,2*tempo,0);
Csharp5_Long4 = karplus_strong(Fs,f_Csharp5,alpha,4*tempo,0);

f_C5 = 523.25;
C5 = karplus_strong(Fs,f_C5,alpha,tempo,0);
C5_Long = karplus_strong(Fs,f_C5,alpha,2*tempo,0);
C5_Triple = karplus_strong(Fs,f_C5,alpha,3*tempo,0);
C5_Long4 = karplus_strong(Fs,f_C5,alpha,4*tempo,0);
C5_Long8 = karplus_strong(Fs,f_C5,alpha,8*tempo,0);

C5_Synth = karplus_strong(Fs,f_C5,alpha,tempo,4);

C5_Kick = karplus_strong(Fs,f_C5,alpha-0.8,tempo,1);
C5_Clap = karplus_strong(Fs,f_C5,alpha,tempo,2);
C5_Hihats = karplus_strong(Fs,f_C5,alpha-0.7,tempo,3);


%--------------------------------------------------------------------------
% 4ª OITAVA ---------------------------------------------------------------
%--------------------------------------------------------------------------

f_B4 = 493.88;
B4_Half = karplus_strong(Fs,f_B4,alpha,tempo*0.5,0);
B4 = karplus_strong(Fs,f_B4,alpha,tempo,0);
B4_Long = karplus_strong(Fs,f_B4,alpha,2*tempo,0);
B4_Triple = karplus_strong(Fs,f_B4,alpha,3*tempo,0);
B4_Long4 = karplus_strong(Fs,f_B4,alpha,4*tempo,0);
B4_Long8 = karplus_strong(Fs,f_B4,alpha,8*tempo,0);

f_Asharp4 = 466.16;
Asharp4 = karplus_strong(Fs,f_Asharp4,alpha,tempo,0);
Asharp4_Long = karplus_strong(Fs,f_Asharp4,alpha,2*tempo,0);
Asharp4_Long4 = karplus_strong(Fs,f_Asharp4,alpha,4*tempo,0);
Asharp4_Long8 = karplus_strong(Fs,f_Asharp4,alpha,8*tempo,0);

f_A4 = 440;
A4 = karplus_strong(Fs,f_A4,alpha,tempo,0);
A4_Long = karplus_strong(Fs,f_A4,alpha,2*tempo,0);
A4_Triple = karplus_strong(Fs,f_A4,alpha,3*tempo,0);
A4_Long4 = karplus_strong(Fs,f_A4,alpha,4*tempo,0);
A4_Long8 = karplus_strong(Fs,f_A4,alpha,8*tempo,0);

A4_Synth = karplus_strong(Fs,f_A4,alpha,tempo,4);

f_Gsharp4 = 415.3;
Gsharp4 = karplus_strong(Fs,f_Gsharp4,alpha,tempo,0);
Gsharp4_Long = karplus_strong(Fs,f_Gsharp4,alpha,2*tempo,0);
Gsharp4_Long4 = karplus_strong(Fs,f_Gsharp4,alpha,4*tempo,0);

f_G4 = 392;
G4_Half = karplus_strong(Fs,f_G4,alpha,tempo*0.5,0);
G4 = karplus_strong(Fs,f_G4,alpha,tempo,0);
G4_Long = karplus_strong(Fs,f_G4,alpha,2*tempo,0);
G4_Triple = karplus_strong(Fs,f_G4,alpha,3*tempo,0);
G4_Long4 = karplus_strong(Fs,f_G4,alpha,4*tempo,0);
G4_Long8 = karplus_strong(Fs,f_G4,alpha,8*tempo,0);

G4_Synth = karplus_strong(Fs,f_G4,alpha,tempo,4);
G4_Long_Synth = karplus_strong(Fs,f_G4,alpha,2*tempo,4);

f_Fsharp4 = 369.99;
Fsharp4 = karplus_strong(Fs,f_Fsharp4,alpha,tempo,0);
Fsharp4_Long = karplus_strong(Fs,f_Fsharp4,alpha,2*tempo,0);
Fsharp4_Triple = karplus_strong(Fs,f_Fsharp4,alpha,3*tempo,0);
Fsharp4_Long4 = karplus_strong(Fs,f_Fsharp4,alpha,4*tempo,0);
Fsharp4_Long8 = karplus_strong(Fs,f_Fsharp4,alpha,8*tempo,0);

f_F4 = 349.23;
F4 = karplus_strong(Fs,f_F4,alpha,tempo,0);
F4_Long = karplus_strong(Fs,f_F4,alpha,2*tempo,0);

F4_Synth = karplus_strong(Fs,f_F4,alpha,tempo,4);
F4_Long_Synth = karplus_strong(Fs,f_F4,alpha,2*tempo,4);

f_E4 = 329.63;
E4_Half = karplus_strong(Fs,f_E4,alpha,tempo*0.5,0);
E4 = karplus_strong(Fs,f_E4,alpha,tempo,0);
E4_Long = karplus_strong(Fs,f_E4,alpha,2*tempo,0);
E4_Triple = karplus_strong(Fs,f_E4,alpha,3*tempo,0);
E4_Long4 = karplus_strong(Fs,f_E4,alpha,4*tempo,0);
E4_Long8 = karplus_strong(Fs,f_E4,alpha,8*tempo,0);

f_Dsharp4 = 311.13;
Dsharp4 = karplus_strong(Fs,f_Dsharp4,alpha,tempo,0);
Dsharp4_Long = karplus_strong(Fs,f_Dsharp4,alpha,2*tempo,0);
Dsharp4_Long4 = karplus_strong(Fs,f_Dsharp4,alpha,4*tempo,0);
Dsharp4_Long8 = karplus_strong(Fs,f_Dsharp4,alpha,8*tempo,0);

f_D4 = 293.66;
D4 = karplus_strong(Fs,f_D4,alpha,tempo,0);
D4_Long = karplus_strong(Fs,f_D4,alpha,2*tempo,0);
D4_Triple = karplus_strong(Fs,f_D4,alpha,3*tempo,0);
D4_Long4 = karplus_strong(Fs,f_D4,alpha,4*tempo,0);
D4_Long8 = karplus_strong(Fs,f_D4,alpha,8*tempo,0);

D4_Synth = karplus_strong(Fs,f_D4,alpha,tempo,4);
D4_Long_Synth = karplus_strong(Fs,f_D4,alpha,2*tempo,4);

f_Csharp4 = 277.18;
Csharp4 = karplus_strong(Fs,f_Csharp4,alpha,tempo,0);
Csharp4_Long = karplus_strong(Fs,f_Csharp4,alpha,2*tempo,0);
Csharp4_Long4 = karplus_strong(Fs,f_Csharp4,alpha,4*tempo,0);

f_C4 = 261.63;
C4 = karplus_strong(Fs,f_C4,alpha,tempo,0);
C4_Long = karplus_strong(Fs,f_C4,alpha,2*tempo,0);
C4_Triple = karplus_strong(Fs,f_C4,alpha,3*tempo,0);
C4_Long4 = karplus_strong(Fs,f_C4,alpha,4*tempo,0);
C4_Long8 = karplus_strong(Fs,f_C4,alpha,8*tempo,0);

C4_Synth = karplus_strong(Fs,f_C4,alpha,tempo,4);

%--------------------------------------------------------------------------
% 3ª OITAVA ---------------------------------------------------------------
%--------------------------------------------------------------------------

f_Asharp3 = 233.08;
Asharp3_Long = karplus_strong(Fs,f_Asharp3,alpha,2*tempo,0);

%--------------------------------------------------------------------------
% DEFINIÇÕES DAS PARTITURAS DAS MÚSICAS
%--------------------------------------------------------------------------

%Para cada música há uma partitura que deve ser seguida, juntando as notas
%e os tempos corretamente para ela fluir como deve em seu tempo;

%Notas Half -> tempo = 0.5;
%Notas Padrão -> tempo = 1;
%Notas Long -> tempo = 2;
%Notas Long4 -> tempo = 4;
%Notas Long8 -> tempo = 8;

%A progressão dos acordes foi desenvolvida no software FL Studio e usada
%como base para as matrizes e vetores;

%--------------------------------------------------------------------------

%DEFINIÇÃO DAS MÚSICAS

%--------------------------------------------------------------------------
% Avicii - Wake Me Up (2013)
%--------------------------------------------------------------------------

% Intro
wake_intro1 = [tempZ2 B5_Triple B5 B5 B5 tempZ2 A5_Triple A5 A5 A5 tempZ2 G5_Triple G5 G5 G5 tempZ2 B5 B5 tempZ2 B5 B5];
wake_intro2 = [tempZ2 G5_Triple tempZ1 G5 G5 tempZ2 Fsharp5_Triple Fsharp5 tempZ1 Fsharp5 tempZ2 E5_Triple E5 tempZ1 E5 tempZ2 G5 G5 tempZ2 G5 tempZ1];
wake_intro3 = [tempZ2 E5_Triple E5 E5 E5 tempZ2 D5_Triple D5 D5 D5 tempZ2 C5_Triple C5 C5 C5 tempZ2 D5 D5 D5_Long D5 D5];
wake_intro4 = [B4_Long B4_Triple B4 B4 tempZ1 A4_Long A4_Triple tempZ1 A4 A4 G4_Long G4_Triple G4 G4 G4 B4_Long B4 B4 B4_Long B4 B4];
wake_intro5 = [G4_Long G4_Triple G4 G4 G4 Fsharp4_Long Fsharp4_Triple Fsharp4 tempZ1 Fsharp4 E4_Long E4_Triple E4 tempZ1 E4 G4_Long tempZ1 G4 G4_Long G4 G4];
wake_intro6 = [E4_Long E4_Triple E4 E4 E4 D4_Long D4_Triple D4 D4 D4 C4_Long C4_Triple C4 C4 C4 D4_Long D4 D4 D4_Long D4 D4];

% Intro_Piano_Drums
wake_intro_guitar1 = [tempZ2 B5_Triple B5 B5 B5 tempZ2 A5_Triple A5 A5 A5 tempZ2 G5_Triple G5 G5 G5 tempZ2 B5 B5 tempZ2 B5 B5];
wake_intro_guitar2 = [tempZ2 G5_Triple tempZ1 G5 G5 tempZ2 Fsharp5_Triple Fsharp5 tempZ1 Fsharp5 tempZ2 E5_Triple E5 tempZ1 E5 tempZ2 G5 G5 tempZ2 G5 tempZ1];
wake_intro_guitar3 = [tempZ2 E5_Triple E5 E5 E5 tempZ2 D5_Triple D5 D5 D5 tempZ2 C5_Triple C5 C5 C5 tempZ2 D5 D5 D5_Long D5 D5];
wake_intro_guitar4 = [B4_Long B4_Triple B4 B4 tempZ1 A4_Long A4_Triple tempZ1 A4 A4 G4_Long G4_Triple G4 G4 G4 B4_Long B4 B4 B4_Long B4 B4];
wake_intro_guitar5 = [G4_Long G4_Triple G4 G4 G4 Fsharp4_Long Fsharp4_Triple Fsharp4 tempZ1 Fsharp4 E4_Long E4_Triple E4 tempZ1 E4 G4_Long tempZ1 G4 G4_Long G4 G4];
wake_intro_guitar6 = [E4_Long E4_Triple E4 E4 E4 D4_Long D4_Triple D4 D4 D4 C4_Long C4_Triple C4 C4 C4 D4_Long D4 D4 D4_Long D4 D4];

wake_intro_piano1 = [E5_Long4 E5_Long4 D5_Long4 D5_Long4 C5_Long4 C5_Long4 D5_Long4 D5_Long4];
wake_intro_piano2 = [B4_Long4 B4_Long4 A4_Long4 A4_Long4 G4_Long4 G4_Long4 A4_Long4 A4_Long4];
wake_intro_piano3 = [G4_Long4 G4_Long4 Fsharp4_Long4 Fsharp4_Long4 E4_Long4 E4_Long4 Fsharp4_Long4 Fsharp4_Long4];
wake_intro_piano4 = [E4_Long4 E4_Long4 D4_Long4 D4_Long4 C4_Long4 C4_Long4 D4_Long4 D4_Long4];

wake_piano_afterDrop1 = [E5_Long8 D5_Long8 C5_Long8 tempZ8];
wake_piano_afterDrop2 = [B4_Long8 A4_Long8 G4_Long8 tempZ8];
wake_piano_afterDrop3 = [G4_Long8 Fsharp4_Long8 E4_Long8 tempZ8];
wake_piano_afterDrop4 = [E4_Long8 D4_Long8 C4_Long8 tempZ8];

wake_intro_kicks1 = [C5_Kick tempZ3 C5_Kick tempZ3 C5_Kick tempZ3 C5_Kick tempZ3 C5_Kick tempZ3 C5_Kick tempZ3 C5_Kick tempZ3 C5_Kick tempZ3];

wake_intro_claps1 = [tempZ2 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ1];
wake_intro_claps2 = [C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3 C5_Clap tempZ3];

wake_intro_hihats1 = [tempZ2 C5_Hihats tempZ3 C5_Hihats tempZ3 C5_Hihats tempZ3 C5_Hihats tempZ3 C5_Hihats tempZ3 C5_Hihats tempZ3 C5_Hihats tempZ3 C5_Hihats tempZ1];


% Melody
wake_melody1 = [D6_Long tempZ2 D6_Long tempZ1 C6 D6 F6 D6_Long tempZ1 C6 D6 C6 F6_Long tempZ2 F6_Long tempZ1 F6 G6 F6 G6 tempZ1 A6 tempZ1 G6_Long];
wake_melody2 = [D5_Long tempZ2 D5_Long tempZ1 C5 D5 F5 D5_Long tempZ1 C5 D5 C5 F5_Long tempZ2 F5_Long tempZ1 F5 G5 F5 G5 tempZ1 A5 tempZ1 G5_Long];
wake_melody3 = [D4_Long tempZ2 D4_Long tempZ1 C4 D4 F4 D4_Long tempZ1 C4 D4 C4 F4_Long tempZ2 F4_Long tempZ1 F4 G4 F4 G4 tempZ1 A4 tempZ1 G4_Long];
wake_melody4 = [tempZ2 A4_Long tempZ2 A4_Long tempZ2 F4_Long tempZ2 F4_Long tempZ2 A4_Long tempZ2 A4_Long tempZ2 G4_Long tempZ2 G4_Long];
wake_melody5 = [tempZ2 F4_Long tempZ2 F4_Long tempZ2 D4_Long tempZ2 D4_Long tempZ2 F4_Long tempZ2 F4_Long tempZ2 E4_Long tempZ2 E4_Long];
wake_melody6 = [D4_Long D4_Long D4_Long D4_Long Asharp3_Long Asharp3_Long Asharp3_Long Asharp3_Long C4_Long C4_Long C4_Long C4_Long C4_Long C4_Long C4_Long C4_Long];

% Melody Drop

wake_melody_drop1 = [D6_Long tempZ2 D6_Long tempZ1 C6 D6 F6 D6_Long tempZ1 C6 D6 C6 F6_Long tempZ2 F6_Long tempZ1 F6_Synth G6_Synth F6_Synth G6_Synth tempZ1 A6_Synth tempZ1 G6_Long_Synth];
wake_melody_drop2 = [D5_Long tempZ2 D5_Long tempZ1 C5 D5 F5 D5_Long tempZ1 C5 D5 C5 F5_Long tempZ2 F5_Long tempZ1 F5_Synth G5_Synth F5_Synth G5_Synth tempZ1 A5_Synth tempZ1 G5_Long_Synth];
wake_melody_drop3 = [D4_Long tempZ2 D4_Long tempZ1 C4 D4 F4 D4_Long tempZ1 C4 D4 C4 F4_Long tempZ2 F4_Long tempZ1 F4_Synth G4_Synth F4_Synth G4_Synth tempZ1 A4_Synth tempZ1 G4_Long_Synth];
wake_melody_drop4 = [tempZ2 A4_Long tempZ2 A4_Long tempZ2 F4_Long tempZ2 F4_Long tempZ2 A4_Long tempZ2 A4_Long tempZ2 G4_Long tempZ2 G4_Long];
wake_melody_drop5 = [tempZ2 F4_Long tempZ2 F4_Long tempZ2 D4_Long tempZ2 D4_Long tempZ2 F4_Long tempZ2 F4_Long tempZ2 E4_Long tempZ2 E4_Long];
wake_melody_drop6 = [D4_Long D4_Long D4_Long D4_Long Asharp3_Long Asharp3_Long Asharp3_Long Asharp3_Long C4_Long C4_Long C4_Long C4_Long C4_Long C4_Long C4_Long C4_Long];

% Melody Final

wake_melody_final1 = [D6_Long tempZ2 D6_Long tempZ1 C6 D6 F6 D6_Long D6_Long tempZ2 D6_Long tempZ1 C6 D6 F6 D6_Long D6_Long tempZ2 D6_Long tempZ1 C6 D6 F6 D6_Long];
wake_melody_final2 = [D5_Long tempZ2 D5_Long tempZ1 C5 D5 F5 D5_Long D5_Long tempZ2 D5_Long tempZ1 C5 D5 F5 D5_Long D5_Long tempZ2 D5_Long tempZ1 C5 D5 F5 D5_Long];
wake_melody_final3 = [D4_Long tempZ2 D4_Long tempZ1 C4 D4 F4 D4_Long D4_Long tempZ2 D4_Long tempZ1 C4 D4 F4 D4_Long D4_Long tempZ2 D4_Long tempZ1 C4 D4 F4 D4_Long];
wake_melody_final4 = [tempZ2 A4_Long tempZ2 A4_Long tempZ2 F4_Long tempZ2 A4_Long tempZ2 A4_Long tempZ2 F4_Long tempZ2 A4_Long tempZ2 A4_Long tempZ2 F4_Long];
wake_melody_final5 = [tempZ2 F4_Long tempZ2 F4_Long tempZ2 D4_Long tempZ2 F4_Long tempZ2 F4_Long tempZ2 D4_Long tempZ2 F4_Long tempZ2 F4_Long tempZ2 D4_Long];
wake_melody_final6 = [D4_Long D4_Long D4_Long D4_Long Asharp3_Long Asharp3_Long D4_Long D4_Long D4_Long D4_Long Asharp3_Long Asharp3_Long D4_Long D4_Long D4_Long D4_Long Asharp3_Long Asharp3_Long];

% Melody Synth


wake_melody_synth1 = [D6_Long_Synth tempZ2 D6_Long_Synth tempZ1 C6_Synth D6_Synth F6_Synth D6_Long_Synth tempZ1 C6_Synth D6_Synth C6_Synth F6_Long_Synth tempZ2 F6_Long_Synth tempZ1 F6_Synth G6_Synth F6_Synth G6_Synth tempZ1 A6_Synth tempZ1 G6_Long_Synth];
wake_melody_synth2 = [D5_Long_Synth tempZ2 D5_Long_Synth tempZ1 C5_Synth D5_Synth F5_Synth D5_Long_Synth tempZ1 C5_Synth D5_Synth C5_Synth F5_Long_Synth tempZ2 F5_Long_Synth tempZ1 F5_Synth G5_Synth F5_Synth G5_Synth tempZ1 A5_Synth tempZ1 G5_Long_Synth];
wake_melody_synth3 = [D4_Long_Synth tempZ2 D4_Long_Synth tempZ1 C4_Synth D4_Synth F4_Synth D4_Long_Synth tempZ1 C4_Synth D4_Synth C4_Synth F4_Long_Synth tempZ2 F4_Long_Synth tempZ1 F4_Synth G4_Synth F4_Synth G4_Synth tempZ1 A4_Synth tempZ1 G4_Long_Synth];
wake_melody_synth4 = [tempZ2 A4_Long tempZ2 A4_Long tempZ2 F4_Long tempZ2 F4_Long tempZ2 A4_Long tempZ2 A4_Long tempZ2 G4_Long tempZ2 G4_Long];
wake_melody_synth5 = [tempZ2 F4_Long tempZ2 F4_Long tempZ2 D4_Long tempZ2 D4_Long tempZ2 F4_Long tempZ2 F4_Long tempZ2 E4_Long tempZ2 E4_Long];
wake_melody_synth6 = [D4_Long D4_Long D4_Long D4_Long Asharp3_Long Asharp3_Long Asharp3_Long Asharp3_Long C4_Long C4_Long C4_Long C4_Long C4_Long C4_Long C4_Long C4_Long];

%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% VETORES DE MELODIA (COMBINAÇÃO DE MELODIAS)
%--------------------------------------------------------------------------

%Para criar a música, precisamos somar todos os vetores criados
%anteriormente, assim, conseguimos criar uma matriz inteira com toda a
%progressão da música (melodia e acordes);

%Tratamos os volumes definindo que a melodia deve ter volume = 1 e os
%acordes baixos e progressão tem um volume mais baixo, pois a intenção é
%ouvir a parte melódica da música;

%--------------------------------------------------------------------------
%Wake me Up
%--------------------------------------------------------------------------
wakemeup_intro = (wake_intro1+wake_intro2+wake_intro3+wake_intro4+wake_intro5+wake_intro6);
wakemeup_intro_1min = (wake_intro_guitar1+wake_intro_guitar2+wake_intro_guitar3+wake_intro_guitar4+wake_intro_guitar5+wake_intro_guitar6+wake_intro_piano1+wake_intro_piano2+wake_intro_piano3+wake_intro_piano4+(3*wake_intro_kicks1)+(3.5*wake_intro_claps1)+(0.3*wake_intro_hihats1));
wakemeup_intro_1min_2 = (wake_intro_guitar1+wake_intro_guitar2+wake_intro_guitar3+wake_intro_guitar4+wake_intro_guitar5+wake_intro_guitar6+(2*wake_intro_kicks1)+(2*wake_intro_claps1)+(0.3*wake_intro_hihats1));
wakemeup_intro_afterDrop = (wake_intro1+wake_intro2+wake_intro3+wake_intro4+wake_intro5+wake_intro6+wake_piano_afterDrop1+wake_piano_afterDrop2+wake_piano_afterDrop3+wake_piano_afterDrop4+(0.5*wake_intro_hihats1));
wakemeup_melody = ((2*wake_melody2)+(3*wake_melody3)+(0.7*wake_melody4)+(0.7*wake_melody5)+(0.7*wake_melody6));
wakemeup_melody2 = ((2*wake_melody2)+(3*wake_melody3)+(0.7*wake_melody4)+(0.7*wake_melody5)+(0.7*wake_melody6)+(2.5*wake_intro_kicks1)+wake_intro_claps2);
wakemeup_melody3 = (wake_melody_final1+wake_melody_final2+wake_melody_final3+wake_melody_final4+wake_melody_final5+wake_melody_final6);
wakemeup_melody4 = ((2*wake_melody_drop2)+(2*wake_melody_drop3)+(0.7*wake_melody_drop4)+(0.7*wake_melody_drop5)+(0.7*wake_melody_drop6));
wakemeup_melody_synth = (wake_melody_synth1+wake_melody_synth2+wake_melody_synth3+wake_melody_synth4+wake_melody_synth5+wake_melody_synth6+(2.5*wake_intro_kicks1)+wake_intro_claps2);
wakemeup_melody_synth2 = (wake_melody_synth1+wake_melody_synth2+wake_melody_synth3+wake_melody_synth4+wake_melody_synth5+wake_melody_synth6);

%--------------------------------------------------------------------------
% DEFINIÇÃO DA MÚSICA PRINCIPAL
%--------------------------------------------------------------------------

% Para executar a música utilizamos a função soundsc() do próprio matlab, o
% qual vai executar o vetor com os devidos sinais;

%--------------------------------------------------------------------------
musica = [wakemeup_intro wakemeup_intro (0.7*wakemeup_intro) (0.5*wakemeup_intro) (0.4*wakemeup_intro) (0.3*wakemeup_intro) (0.3*wakemeup_intro) (0.4*wakemeup_intro) (0.5*wakemeup_intro) (0.6*wakemeup_intro) (0.6*wakemeup_intro) (0.8*wakemeup_intro)...
wakemeup_intro_1min_2 wakemeup_intro_1min_2 (0.7*wakemeup_intro_1min_2) (0.5*wakemeup_intro_1min_2)...
(0.5*wakemeup_intro_1min) (0.7*wakemeup_intro_1min) (0.9*wakemeup_intro_1min) wakemeup_intro_1min...
(0.6*wakemeup_melody) (0.8*wakemeup_melody) (0.9*wakemeup_melody) wakemeup_melody4...
wakemeup_melody_synth (0.9*wakemeup_melody_synth) (0.8*wakemeup_melody_synth) (0.9*wakemeup_melody_synth) (0.8*wakemeup_melody_synth) (0.9*wakemeup_melody_synth) (0.7*wakemeup_melody_synth) (0.6*wakemeup_melody_synth2)...
tempZ4...
(0.3*wakemeup_intro) (0.4*wakemeup_intro) (0.6*wakemeup_intro) (0.6*wakemeup_intro) (0.7*wakemeup_intro) wakemeup_intro...
(0.7*wakemeup_intro_afterDrop) (0.8*wakemeup_intro_afterDrop) (0.7*wakemeup_intro_afterDrop) (0.8*wakemeup_intro_afterDrop) (0.9*wakemeup_intro_afterDrop) wakemeup_intro_afterDrop...
wakemeup_intro_1min_2 wakemeup_intro_1min_2 wakemeup_intro_1min_2 (0.8*wakemeup_intro_1min_2) (0.9*wakemeup_intro_1min_2) tempZ2...
(1.5*wakemeup_intro_1min) (0.9*wakemeup_intro_1min)...
(0.6*wakemeup_melody3) (0.9*wakemeup_melody3)...
(1.5*wakemeup_melody2) (1.3*wakemeup_melody2) (1.5*wakemeup_melody2) (1.5*wakemeup_melody2) wakemeup_melody4... 
(1.6*wakemeup_melody_synth) (1.5*wakemeup_melody_synth) (1.5*wakemeup_melody_synth) wakemeup_melody_synth (0.9*wakemeup_melody_synth)...
(0.8*wakemeup_melody_synth2)];

%musica = [wakemeup_melody_synth];
soundsc(musica,Fs)
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% DEFINIÇÃO DE ARQUIVO DE ÁUDIO GERADO
%--------------------------------------------------------------------------

%Utiliza a função audiowrite() para escrever a musica em um arquivo em
%determinado caminho, neste caso, a área de trabalho

%--------------------------------------------------------------------------

music_filter = musica*0.9 / max(abs(musica));

songFile = 'wakemeup.wav';
%songFile = 'wakemeup.mp3';
cd('C:/Users/Ferna/Desktop');
audiowrite(songFile,music_filter,Fs);
%--------------------------------------------------------------------------