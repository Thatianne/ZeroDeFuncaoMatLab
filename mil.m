% ***** MÉTODO ITERATIVO LINEAR - MATLAB
% Pedro Gomes e Thatianne Carvalho

% Função
func = '(x*x)*sin(x) + cos(x)';
% Erro
amplitude = 0.01;
%quantidade máxima de operações
qtd = 20;
%valores de x0
xs = zeros(20, 1);
%Recebe intervalo
disp('Digite o valor inferior');
a = input('');
disp('Digite o valor superior');
b = input('');
possuiRaiz = 1;
iteracoes = 1;
amplitudeAtual = b -a;

%G(x)
g = '-cos(x)/(x*sin(x))';
%G'(x)
g1 = '(cos(x)/(x*x)*sin(x)) + (x*(1/(sin(x)*sin()x)))/(x*x))';

while()
end






