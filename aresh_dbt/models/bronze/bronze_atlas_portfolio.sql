select *
from  {{ source('aresh_dbt', 'atlas_portfolio') }}