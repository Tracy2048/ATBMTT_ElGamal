function gcd = find_gcd(a, b)
    % Hàm tìm ước chung lớn nhất của a và b
    if b == 0
        gcd = a;
    else
        gcd = find_gcd(b, mod(a, b));
    end
end