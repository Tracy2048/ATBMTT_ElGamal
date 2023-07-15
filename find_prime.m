function prime = find_prime()
    % Hàm này trả về 1 số nguyên lớn
    while true
        result = randi([1000, 10000]);
        if check_prime(result)
            prime = result;
            return
        end
    end
end