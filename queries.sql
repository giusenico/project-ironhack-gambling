use ih_gambling_cleaned;

/* Answer 1 */

select Title, FirstName, LastName, DateOfBirth from customer;

/* Answer 2 */

select CustomerGroup, count(CustId) as NumberOfCustomers
from customer
group by CustomerGroup;

/* Answer 3 */

select customer.CustId, customer.AccountLocation, customer.Title, customer.FirstName, customer.LastName, customer.CreateDate, customer.CountryCode, customer.Language, customer.Status, customer.DateOfBirth, customer.Contact, customer.CustomerGroup, account.CurrencyCode
from customer
inner join account on account.CustId = customer.CustId;

/* Answer 4 */

select product.Product, product.SubProduct, sum(betting.Bet_Amt) as BetAmount, date(betting.BetDate) as BetDate
from betting
inner join product on product.ClassId = betting.ClassId
group by product.Product, product.SubProduct, date(betting.BetDate);

/* Answer 5 */

select product.Product, product.SubProduct, sum(betting.Bet_Amt) as BetAmount, date(betting.BetDate) as BetDate
from betting
inner join product on product.ClassId = betting.ClassId
where date(betting.BetDate) >= '2012-11-01' and product.Product = 'Sportsbook'
group by product.Product, product.SubProduct, date(betting.BetDate)
order by date(betting.BetDate) asc;









