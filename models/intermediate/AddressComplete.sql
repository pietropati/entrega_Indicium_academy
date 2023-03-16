select  cast(a.addressid as string) as addressid					
        , a.city			
        , b.name as stateprovince			
        , c.name as countryregion
        , a.spatiallocation	
from {{ ref ('sapAddress') }} as a
left join {{ ref ('sapStateProvince') }} as b on a.stateprovinceid = b.stateprovinceid
left join {{ ref ('sapCountryRegion') }} as c on b.countryregioncode = c.countryregioncode