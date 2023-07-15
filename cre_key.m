function keys = cre_key()
    p = find_prime();
    alpha = gen_alpha(p);
    a = gen_a(p);
    % tính beta = alpha^a mod p
    beta = pow_mod(alpha, a, p);
    k = gen_k(p);
    % gamal = alpha^k mod p
    gamal = pow_mod(alpha, k, p);
    keys = {p, alpha, beta, a, k, gamal};
    % truy cập keys{i}
end