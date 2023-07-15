function result = check_prime(n)
    % Hàm kiểm tra số nguyên tố
    if n < 2
        result = false;
        return
    end
    for i = 2:sqrt(n) + 1
        if mod(n, i) == 0
            result = false;
            return
        end
    end
    result = true;
end