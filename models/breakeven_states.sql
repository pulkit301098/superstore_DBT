select state
from {{ ref('profits_per_region') }}
where profit_health = 'Breaking Even'