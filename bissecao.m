% ***** M�TODO DA BISSE��O - MATLAB ****
% Pedro Gomes e Thatianne Carvalho

% Fun��o
func = '(x*x)*sin(x) + cos(x)';
% Erro
amplitude = 0.01;
%quantidade m�xima de opera��es
qtd = 150;

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
    if(subs(func, a)*subs(func, x0) < 0)
        b = x0;
    elseif(subs(func, b)*subs(func, x0) < 0)
        a = x0;
    else %n�o possui raiz no intervalo dado
        possuiRaiz = 0;
        break;
    end
    iteracoes = iteracoes + 1;
    amplitudeAtual = b - a;
end

if(possuiRaiz == 1)
    fprintf('A raiz � %d', x0)

    %plotar gr�fico
    x = linspace(a-2, b+2);
    y = ((x.*x).*sin(x)) + cos(x);
    plot(x, y);
    grid on;
    xlabel('x');
    ylabel('x^2*sin(x) + cos(x)');
else
    fprintf('N�o possui raiz no intervalo (%d, %d)', a, b);
end
