select
    portfolio_id,
    investor_id,
    portfolio_type,
    investor_segment,
    asset_class,
    sector,
    country,
    current_value,
    aum_contribution,
    esg_score,
    sharpe_ratio,
    alpha,
    concentration_risk_score,

    case
        when esg_score >= 80 then 'High ESG'
        when esg_score >= 50 then 'Medium ESG'
        else 'Low ESG'
    end as esg_bucket

from {{ ref('silver_atlas_portfolio') }}