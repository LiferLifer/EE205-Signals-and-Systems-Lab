function a = dtfs(x, n_init)
N = length(x);
n_init = -n_init;
if n_init == 0
    a = fft(x) ./ N;
elseif n_init > 0
    x2 = x(:, n_init+1:end);
    x2 = [x2 x(:, 1:n_init)];
    a = fft(x2) ./ N;
else
    n_init = n_init + N;
    x2 = x(:, n_init+1:end);
    x2 = [x2 x(:, 1:n_init)];
    a = fft(x2) ./ N;
end
end