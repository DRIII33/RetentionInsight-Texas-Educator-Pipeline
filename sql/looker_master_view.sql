CREATE OR REPLACE TABLE `driiiportfolio.prep_analysis.looker_master_view` AS
SELECT 
    e.teacher_id,
    e.hire_date,
    e.prep_route,
    e.district_id,
    e.is_retained,
    s.mentorship_score,
    s.admin_support,
    s.work_life_balance,
    -- CORRECTED: Three-Tier Sentiment Group logic with NULL handling
    CASE 
      WHEN s.mentorship_score IS NULL OR s.admin_support IS NULL THEN 'No Response'
      WHEN s.mentorship_score >= 4 AND s.admin_support >= 4 THEN 'Satisfied'
      WHEN s.mentorship_score <= 2 OR s.admin_support <= 2 THEN 'Detractor'
      ELSE 'Neutral'
    END AS sentiment_group,
    -- Mentorship Sentiment for Charting
    CASE 
        WHEN s.mentorship_score IS NULL THEN 'No Response'
        WHEN s.mentorship_score >= 4 THEN 'Positive Mentorship'
        ELSE 'Needs Improvement'
    END AS mentorship_sentiment
FROM `driiiportfolio.prep_analysis.teacher_employment` AS e
LEFT JOIN `driiiportfolio.prep_analysis.retention_survey` AS s 
ON e.teacher_id = s.teacher_id
