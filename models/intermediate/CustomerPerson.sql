select  cast(a.customerid as string) as customerid
        , b.firstname
        , b.lastname
        , concat(b.firstname," ",b.lastname) as completename
from {{ ref ('sapCustomer') }} a
left join {{ ref ('sapPerson') }} b on a.personid = b.businessentityid