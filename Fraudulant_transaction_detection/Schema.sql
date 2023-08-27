create table card_holder(
	ch_id int PRIMARY KEY,
	name varchar(50)
);

create table credit_card(
	card_number varchar(20) PRIMARY KEY,
	ch_id int REFERENCES card_holder(ch_id)
);
create table merchant_cat(
	merch_cat_id int PRIMARY KEY,
	merch_cat_name varchar(50)
);
create table merchant(
	merchant_id int PRIMARY KEY,
	name varchar(50), 
	category int REFERENCES merchant_cat(merch_cat_id)
);
create table transactions(
	trans_id int PRIMARY KEY,
	trans_date TIMESTAMP,
	amount int,
	card varchar(20) REFERENCES credit_card(card_number),
	id_merchant int REFERENCES merchant(merchant_id)
);