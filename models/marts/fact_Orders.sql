select  a.salesorderdetailid
        , a.salesorderid
        , a.productid
        , a.orderqty			
        , a.unitprice		
        , a.unitpricediscount
        , a.finalunitprice
        , a.orderprice
        , b.orderdate		
        , b.status
from {{ ref ('SalesOrderDetail') }} as a
left join {{ ref ('SalesOrderHeader') }} as b on a.salesorderid = b.salesorderid