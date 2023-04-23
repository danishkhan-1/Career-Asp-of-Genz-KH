-- 5. Factors influencing on aspirations on people by gender?

SELECT Factors_influence_your_career_aspirations,
       COUNT(CASE WHEN Gender = 'Male' THEN 1 ELSE NULL END) AS Male,
       COUNT(CASE WHEN Gender = 'Female' THEN 1 ELSE NULL END) AS Female
FROM kulturehire.table_1
GROUP BY Factors_influence_your_career_aspirations;