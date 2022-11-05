gen_logit = function(B_mat, x_vec){
    log_rel_probs = c(0, B_mat %*% x_vec)
    # rel_probs = exp(c(0, B_mat %*% x_vec))
    log_rel_probs = log_rel_probs - max(log_rel_probs)
    rel_probs = exp(log_rel_probs)
    # if (any(is.infinite(rel_probs))) {
    #     log_rel_probs = log_rel_probs - max(log_rel_probs)
    #     rel_probs = exp(log_rel_probs)
    # }
    prob_vec = rel_probs / sum(rel_probs)
    return(prob_vec)
}