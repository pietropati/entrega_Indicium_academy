with distinct_salesorderid as (
  select distinct(salesorderid) 
  from {{ ref ('SalesReason') }}
  ),
manufacturer as(
  select salesorderid,1 as boolean
  from {{ ref ('SalesReason') }}
  where reason = "Manufacturer"
),
on_promotion as(
  select salesorderid,1 as boolean
  from {{ ref ('SalesReason') }}
  where reason = "On Promotion"
),
other as(
  select salesorderid,1 as boolean
  from {{ ref ('SalesReason') }}
  where reason = "Other"
),
price as(
  select salesorderid,1 as boolean
  from {{ ref ('SalesReason') }}
  where reason = "Price"
),
quality as(
  select salesorderid,1 as boolean
  from {{ ref ('SalesReason') }}
  where reason = "Quality"
),
review as(
  select salesorderid,1 as boolean
  from {{ ref ('SalesReason') }}
  where reason = "Review"
),
television as(
  select salesorderid,1 as boolean
  from {{ ref ('SalesReason') }}
  where reason = "Television  Advertisement"
)

select  a.salesorderid
        , b.boolean as manufacturer
        , c.boolean as on_promotion
        , d.boolean as other
        , e.boolean as price
        , f.boolean as quality
        , g.boolean as review
        , h.boolean as television
from distinct_salesorderid a
left join manufacturer b on a.salesorderid = b.salesorderid
left join on_promotion c on a.salesorderid = c.salesorderid
left join other d on a.salesorderid = d.salesorderid
left join price e on a.salesorderid = e.salesorderid
left join quality f on a.salesorderid = f.salesorderid
left join review g on a.salesorderid = g.salesorderid
left join television h on a.salesorderid = h.salesorderid