#leitura dos arquivos em variáveis no octave
[x1, fs1] = audioread('contagem_sep1.wav');
[x2, fs2] = audioread('contagem_sep2.wav');
[x3, fs3] = audioread('contagem_sep3.wav');

%caso o maior arquivo seja o x1
x2(numel(x1))=0
x3(numel(x1))=0

#Mixagem dos sinais (pondera-se eles em variáveis)
X1 = x1 + 0,25*x2 + 0.35*x3
X2 = 0.38*x1 + 1,25*x2 + 0.12*x3
X3 = 0.4*x1 + 0,22*x2 + 1.35*x3

audiowrite('contagem_mix1.wav', X1, fs1);
audiowrite('contagem_mix2.wav', X2, fs2);
audiowrite('contagem_mix3.wav', X3, fs3);
