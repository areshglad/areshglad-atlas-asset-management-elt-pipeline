select

    portfolio_id,

    current_value,

    aum_contribution,

    management_fee_revenue,

    sharpe_ratio,

    alpha,

    beta,

    esg_score,

    concentration_risk_score,

    rebalancing_needed,

    case
        when sharpe_ratio < 1 then 'Underperforming'
        when sharpe_ratio between 1 and 2 then 'Healthy'
        else 'Top Performer'
    end as performance_status,

    case
        when concentration_risk_score > 80 then 'High Risk'
        when concentration_risk_score > 50 then 'Medium Risk'
        else 'Low Risk'
    end as concentration_bucket

from {{ ref('silver_atlas_portfolio') }}