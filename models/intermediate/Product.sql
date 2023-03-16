select  cast(productid as string) as productid							
        , name as productname
        , productnumber
from {{ ref ('sapProduct') }}