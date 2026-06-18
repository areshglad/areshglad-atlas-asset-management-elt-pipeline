select
    asset_class,
    sector,
    country,
    advisor_region,

    count(distinct portfolio_id) as total_portfolios,
    sum(aum_contribution) as total_aum,
    sum(management_fee_revenue) as total_fee_revenue,
    avg(sharpe_ratio) as avg_sharpe_ratio,
    avg(alpha) as avg_alpha,
    avg(esg_score) as avg_esg_score,
    avg(concentration_risk_score) as avg_concentration_risk_score

from {{ ref('silver_atlas_portfolio') }}

group by
    asset_class,
    sector,
    country,
    advisor_region