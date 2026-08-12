select
    fr.listing_id,
    fr.review_date,
    dl.created_at
from {{ ref('dim_listings_cleansed') }} dl
join {{ ref('fct_reviews') }} fr
    on dl.listing_id = fr.listing_id
where fr.review_date < dl.created_at