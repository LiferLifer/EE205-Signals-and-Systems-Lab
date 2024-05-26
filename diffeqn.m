function y = diffeqn(a,x,yn1)
y = [];
for n = 1:length(x)
    if n == 1 
        y(n) = a.*yn1+x(n);
    else
        y(n) = a.*y(n-1)+x(n);
    end
end