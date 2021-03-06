% ***** M�TODO DA BISSE��O - MATLAB ****
% Pedro Gomes e Thatianne Carvalho


% Fun��o
func = '(x*x)*sin(x) + cos(x)';
% Erro
amplitude = 0.01;
%quantidade m�xima de opera��es
qtd = 20;
%valores de x0
xs = zeros(20, 1);

%Recebe intervalo
disp('Digite o valor inferior');
a = input('');
c = a;
disp('Digite o valor superior');
b = input('');

possuiRaiz = 1;
iteracoes = 1;
amplitudeAtual = b -a;

while iteracoes<qtd 
    x0 = (a+b)/2;
    xs(iteracoes) = x0;
    if(subs(func, a)*subs(func, x0) < 0)
        b = x0;
        possuiRaiz = 1;
        if(amplitudeAtual < amplitude)
            break;
        end
    elseif(subs(func, b)*subs(func, x0) < 0)
        a = x0;
        possuiRaiz = 1;
        if(amplitudeAtual < amplitude)
            break;
        end
    else %n�o possui raiz no intervalo dado
        a = x0;
        possuiRaiz = 0;
    end
    if((x0*x0)*sin(x0) + cos(x0) == 0)        
        break;
    end
    iteracoes = iteracoes + 1;
    amplitudeAtual = b - a;
    
end

if(possuiRaiz == 1)
    fprintf('A raiz � %d', x0)    
    x = linspace(a-2, b+2);    
else
    x = linspace(-10, 10);
    fprintf('N�o possui raiz no intervalo (%d, %d)', c, b);
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
