SELECT
	t.trans_id,
	t.trans_date,
    amount,
    name
	
FROM transactions t
JOIN credit_card cc
ON t.card = cc.card_number
JOIN card_holder ch
ON cc.ch_id = ch.ch_id       
WHERE amount < 2.00 AND t.trans_date BETWEEN '2018-01-01 07:00:00' AND '2018-12-31 09:00:00'
GROUP BY
	t.trans_id,
    amount,
    name,
	t.trans_date
ORDER BY
   t.trans_date DESC    
;    
