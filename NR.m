% ***** MÉTODO NEWTON-RAPHSON - MATLAB ****
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
c = a;
disp('Digite o valor superior');
b = input('');

fPrim = '(2*x*sin(x))-(sin(x))+(x*x*cos(x))'; %primeira derivada de 'func'
fSeg = '(-x*2*sin(x))+(2*sin(x))+(4*x*cos(x))-(cos(x))'; %segunda deriada de 'func'
erroAbs = b - a;
iteracoes = 1;
possuiRaiz = 0;

%escolha do extremo
if(subs(func, a)*subs(fSeg, a) > 0)
    x0 = a;
else
    x0 = b;
end

while(iteracoes < qtd)
    xAnt = x0;
    x0 = x0 - (((x0*x0)*sin(x0) + cos(x0))/((2*x0*sin(x0))-(sin(x0))+(x0*x0*cos(x0))));
    xs(iteracoes) = x0;
    erroAbs = x0 - xAnt;
    if(erroAbs<0)
        erroAbs = erroAbs * (-1);
    end
    if(erroAbs < erro)        
        possuiRaiz = 1;
        break;
    end
    iteracoes = iteracoes + 1;
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


