-- Análise de transações por meio de pagamento e status

SELECT
    payer_id_type AS tipo_pagador,
    status_name AS status_transacao,
    COUNT(*) AS total_transacoes,
    SUM(paid_total_value) AS valor_total
FROM transacoes
GROUP BY
    payer_id_type,
    status_name
ORDER BY
    valor_total DESC;
