select
    portfolio_id,
    investor_id,
    portfolio_type,
    investor_segment,
    current_value,
    aum_contribution,
    sharpe_ratio,
    alpha,
    beta,
    concentration_risk_score,
    rebalancing_needed,

    case
        when concentration_risk_score >= 80 then 'Critical Rebalance'
        when concentration_risk_score >= 60 then 'Review Needed'
        else 'Normal'
    end as rebalancing_priority

from {{ ref('silver_atlas_portfolio') }}

where rebalancing_needed = 'Yes'
   or concentration_risk_score >= 60
   or sharpe_ratio < 1