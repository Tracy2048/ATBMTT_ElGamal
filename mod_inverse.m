function result = mod_inverse(p, k)
    % Hàm tìm phần tử nghịch đảo k^-1 mod p áp dụng oclitmorong
    r = ones(1, 100);
    q = zeros(1, 100);
    s = zeros(1, 100);
    t = zeros(1, 100);
    r(1) = p;
    r(2) = k;
    i = 1;
    while true
        q(i + 1) = floor(r(i) / r(i + 1));
        r(i + 2) = mod(r(i), r(i + 1));
        if i == 1
            s(1) = 1;
            t(1) = 0;
        elseif i == 2
            s(2) = 0;
            t(2) = 1;
        else
            s(i) = s(i - 2) - q(i - 1) * s(i - 1);
            t(i) = t(i - 2) - q(i - 1) * t(i - 1);
        end
        if r(i + 2) == 0
            break;
        else
            i = i + 1;
        end
    end
    i = i + 1;
    s(i) = s(i - 2) - q(i - 1) * s(i - 1);
    t(i) = t(i - 2) - q(i - 1) * t(i - 1);
    if t(i) > 0  
        result = t(i);
    else
        result = t(i) + p;
    end
end