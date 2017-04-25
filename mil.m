% ***** MÉTODO ITERATIVO LINEAR - MATLAB
% Pedro Gomes e Thatianne Carvalho

% Função
func = '(x*x)*sin(x) + cos(x)';
% Erro
erro = 0.001;
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
erroAbs = b - a;

%G(x)
g = '-cos(x)/(x*sin(x))';
%G'(x)
gPrim = '(x*cos(x))/(x*x*sin(x))';

gPrimA = (a*cos(a))/(a*a*sin(a));

if(gPrimA < 0) 
    gPrimA = gPrimA*(-1); 
end %pega valor absoluto da primeira derivada, tendo x como o valor de a

gPrimB = (b*cos(b))/(b*b*sin(b));
if(gPrimB < 0) 
    gPrimB = gPrimB*(-1); 
end

if(gPrimA < gPrimB)
    x0 = a;
else
    x0 = b;
end

while(iteracoes<qtd)
    xAnt = x0;
    x0 = -cos(x0)/(x0*sin(x0));
    xs(iteracoes) = x0;
    if(x0 == inf || x0 == -inf)
        possuiRaiz = 0;
        break;
    end
    iteracoes = iteracoes + 1;
    erroAbs = x0 - xAnt;
    if(erroAbs<0)
        erroAbs = erroAbs * (-1);
    end
    if(erroAbs < erro)
        possuiRaiz = 1;
        break;
    else
        possuiRaiz = 0;
    end
end

if(possuiRaiz == 1)
    fprintf('A raiz é %d', x0)    
    x = linspace(a-2, b+2);    
else
    x = linspace(-10, 10);
    fprintf('Não possui raiz no intervalo (%d, %d)', a, b);
end
%plotar gráfico
y = ((x.*x).*sin(x)) + cos(x);
plot(x, y);
grid on;
xlabel('x');
ylabel('x^2*sin(x) + cos(x)');

for index = 1 : iteracoes
    fprintf('\n%d', xs(index));
end
