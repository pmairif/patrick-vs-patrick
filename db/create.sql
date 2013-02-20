create table users (
	id serial not null primary key,
	username varchar not null,
	pwhash varchar not null
);
create unique index user_username on users(lower(username));

create table subscriptions (
	id serial not null primary key,
	firstname varchar,
	lastname varchar,
	email varchar not null,
	confirmed boolean not null default false,
	confirmation_code varchar
);
create unique index subscriptions_email on subscriptions(lower(email));
create index subscriptions_confirmed on subscriptions(confirmed);
