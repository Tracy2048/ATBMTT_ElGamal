function result = pow_mod(a, b, n)
    % Hàm này trả về a^b mod n
    p = 1;
    s = dec2bin(b);
    for i = 1:length(s)
        p = mod(p * p, n);
        if s(i) == '1'
            p = mod(p * a, n);
        end
    end
    result = p;
end