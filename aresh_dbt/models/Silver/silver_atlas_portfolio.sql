with cleaned as ( 
    select investor_id,
    portfolio_id,
    portfolio_type,
    investor_segment,
    ticker,
    security_name,
    asset_class,
    sector,
    country,
    advisor_region,
    cast(investment_amount as decimal(18,2)) as investment_amount,
        cast(current_value as decimal(18,2)) as current_value,
        cast(market_value as decimal(18,2)) as market_value,
        cast(management_fee_revenue as decimal(18,2)) as management_fee_revenue,

        cast(annual_return_pct as decimal(10,4)) as annual_return_pct,
        cast(benchmark_return_pct as decimal(10,4)) as benchmark_return_pct,
        cast(active_return_pct as decimal(10,4)) as active_return_pct,
        cast(volatility_pct as decimal(10,4)) as volatility_pct,
        cast(beta as decimal(10,4)) as beta,
        cast(sharpe_ratio as decimal(10,4)) as sharpe_ratio,
        cast(alpha as decimal(10,4)) as alpha,
        cast(information_ratio as decimal(10,4)) as information_ratio,

        risk_level,
        cast(portfolio_weight_pct as decimal(10,4)) as portfolio_weight_pct,
        cast(sector_weight_pct as decimal(10,4)) as sector_weight_pct,
        top_holding_flag,
        cast(dividend_income as decimal(18,2)) as dividend_income,
        cast(aum_contribution as decimal(18,2)) as aum_contribution,
        cast(esg_score as decimal(10,2)) as esg_score,
        cast(concentration_risk_score as decimal(10,2)) as concentration_risk_score,
        rebalancing_needed,
        cast(last_review_date as date) as last_review_date

    from {{ ref('bronze_atlas_portfolio') }}

    where portfolio_id is not null

)

select *
from cleaned
