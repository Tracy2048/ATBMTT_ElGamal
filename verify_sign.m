function result = verify_sign(text, sign, beta, gamal, alpha, p)
    text_ascii = double(text);
    signz = str2num(sign);
    if length(text_ascii) ~= length(signz)
        result = false;
        return;
    end
    for i = 1:length(signz)
        % (beta^gamal mod p) * (gamal^teta mod p) mod p
        beta_gamal = mod(pow_mod(beta, gamal, p) * pow_mod(gamal, signz(i), p), p);
        alpha_x = mod(pow_mod(alpha, text_ascii(i), p), p);
        if beta_gamal ~= alpha_x
            result = false;
            return;
        end
    end
    result = true;
end