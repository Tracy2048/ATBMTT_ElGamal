function [result_str] = create_sign(text, gamal, a, k, p)
    text_ascii = double(text);
    result = [];
    k_inv = mod_inverse(p - 1, k);
    for i = 1:length(text_ascii)
        char_ascii = text_ascii(i);
        teta = mod((char_ascii - a * gamal) * k_inv, (p - 1));
        result = [result, teta];
    end
    result_str = sprintf('[%s]', num2str(result));
end