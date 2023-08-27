SELECT
    COUNT(card),
    card,
    name,
	amount
FROM 
    transactions t
JOIN credit_card cc
on cc.card_number = t.card
JOIN card_holder ch
ON cc.ch_id = ch.ch_id
WHERE amount < '2.00'
GROUP BY 
    ch.name,
	card,
	t.amount
ORDER BY
    ch.name    
; 
