function result = gen_k(p)
    % Hàm này để chọn số bí mật k thuộc đoạn [1, p - 2] 
    % Sao cho gcd(k, p - 1) = 1
    while true
        k = randi([1, p - 2]);
            if find_gcd(k, p - 1) == 1
                result = k;
                return
            end
    end
end