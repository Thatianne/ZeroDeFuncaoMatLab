% ***** M�TODO ITERATIVO LINEAR - MATLAB
% Pedro Gomes e Thatianne Carvalho

% Fun��o
func = '(x*x)*sin(x) + cos(x)';
% Erro
amplitude = 0.001;
%quantidade m�xima de opera��es
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

g1a = subs(g1, a);
g1a = abs(g1a); %pega valor absoluto da primeira derivada, tendo x como o valor de a

g1b = subs(g1, b);
g1b = abs(g1b);

if(g1a < g1b)
    x0 = g1a;
else
    x0 = g1b;
end

while(iteracoes<qtd && amplitudeAtual >= amplitude)    
    x0 = subs(g, x0);
    xs(iteracoes) = x0;
    
    iteracoes = iteracoes + 1;
    amplitudeAtual = b - a;
end

if(possuiRaiz == 1)
    fprintf('A raiz � %d', x0)    
    x = linspace(a-2, b+2);    
else
    x = linspace(-10, 10);
    fprintf('N�o possui raiz no intervalo (%d, %d)', a, b);
end
%plotar gr�fico
y = ((x.*x).*sin(x)) + cos(x);
plot(x, y);
grid on;
xlabel('x');
ylabel('x^2*sin(x) + cos(x)');

for index = 1 : iteracoes
    fprintf('\n%d', xs(index));
end






