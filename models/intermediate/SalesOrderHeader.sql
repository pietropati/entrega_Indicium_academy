select  cast(salesorderid as string) as salesorderid								
        , cast(customerid as string) as customerid
        , cast(territoryid as string) as territoryid	
        , cast(billtoaddressid as string) as billtoaddressid		
        , cast(shiptoaddressid as string) as shiptoaddressid			
        , cast(creditcardid as string) as creditcardid
        , cast(cast(orderdate as datetime) as date) as orderdate
        , status
from {{ ref ('sapSalesOrderHeader') }}