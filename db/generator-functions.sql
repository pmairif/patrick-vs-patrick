create or replace function random_mail(length integer, domain varchar) returns text as
$$
declare
  chars text[] := '{0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,.,_}';
  result text := '';
  i integer := 0;
begin
  if length < 0 then
    raise exception 'Given length cannot be less than 0';
  end if;
  for i in 1..length loop
    result := result || chars[1+random()*(array_length(chars, 1)-1)];
  end loop;
  return result || '@' || domain;
end;
$$ language plpgsql;

create or replace FUNCTION generate_subscriptions(howmany integer) returns void AS $$
BEGIN
	FOR i IN 1..howmany LOOP
    	insert into subscriptions (email, confirmed) values(random_mail(20, 'example.com'), true);
	END LOOP;	
END;
$$ LANGUAGE plpgsql;
