select  a.salesorderid
        , c.cardtype
        , d.completename
        , e.city as city_bill
        , e.stateprovince as stateprovince_bill
        , e.countryregion as countryregion_bill
        , e.spatiallocation as spatiallocation_bill
        , f.city as city_ship
        , f.stateprovince as stateprovince_ship
        , f.countryregion as countryregion_ship
        , f.spatiallocation as spatiallocation_ship
from {{ ref ('SalesOrderHeader') }} a
left join {{ ref ('CreditCard') }} c on a.creditcardid = c.creditcardid
left join {{ ref ('CustomerPerson') }} d on a.customerid = d.customerid
left join {{ ref ('AddressComplete') }} e on a.billtoaddressid = e.addressid
left join {{ ref ('AddressComplete') }} f on a.shiptoaddressid = f.addressid