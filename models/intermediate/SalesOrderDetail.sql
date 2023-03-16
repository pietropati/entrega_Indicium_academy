select  cast (salesorderdetailid as string) as salesorderdetailid
        , cast(salesorderid as string) as salesorderid
        , cast (productid as string) as productid
        , cast(orderqty as int) as orderqty	
        , cast(unitprice as Decimal) as unitprice
        , cast(unitpricediscount as Decimal) as unitpricediscount
        , (cast(unitprice as decimal)-cast(unitpricediscount as decimal)) as finalunitprice
        , (cast(unitprice as decimal)-cast(unitpricediscount as decimal))*orderqty as orderprice
from {{ ref ('sapSalesOrderDetail') }}