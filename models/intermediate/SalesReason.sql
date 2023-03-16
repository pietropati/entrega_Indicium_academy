select  cast(a.salesorderid as string) as salesorderid								
        , b.name as reason
        , b.reasontype
from {{ ref ('sapSalesOrderHeaderSalesReason') }} a
left join {{ ref ('sapSalesReason') }} b on a.salesreasonid = b.salesreasonid