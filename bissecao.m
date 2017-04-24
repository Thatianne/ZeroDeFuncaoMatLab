% ***** MÉTODO DA BISSEÇÃO - MATLAB ****
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
while(amplitudeAtual >= amplitude)
    x0 = (a+b)/2;
    xs(iteracoes) = x0;
    if(subs(func, a)*subs(func, x0) < 0)
        b = x0;
    elseif(subs(func, b)*subs(func, x0) < 0)
        a = x0;
    else %não possui raiz no intervalo dado
        possuiRaiz = 0;
        break;
    end
    iteracoes = iteracoes + 1;
    amplitudeAtual = b - a;
    
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
