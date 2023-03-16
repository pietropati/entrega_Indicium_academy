select  cast (creditcardid as string) as creditcardid
        , cardtype
from {{ ref ('sapCreditCard') }}