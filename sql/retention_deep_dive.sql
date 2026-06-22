-- Join employment metrics with qualitative survey results
CREATE OR REPLACE TABLE `driiiportfolio.prep_analysis.retention_deep_dive` AS
SELECT
    e.teacher_id,
    e.prep_route,
    e.is_retained,
    s.mentorship_score,
    s.admin_support,
    -- Create a 'Sentiment' flag based on average survey scores
    CASE
        WHEN (s.mentorship_score + s.admin_support) / 2 >= 4 THEN 'High Satisfaction'
        ELSE 'Low Satisfaction'
    END AS sentiment_group
FROM `driiiportfolio.prep_analysis.teacher_employment` AS e
JOIN `driiiportfolio.prep_analysis.retention_survey` AS s
ON e.teacher_id = s.teacher_id;

-- Business Logic: Identify retention rate by route and sentiment
SELECT
    prep_route,
    sentiment_group,
    AVG(is_retained) AS retention_rate
FROM `driiiportfolio.prep_analysis.retention_deep_dive`
GROUP BY 1, 2;
