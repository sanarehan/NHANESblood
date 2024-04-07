SELECT gender, 
COUNT(*) AS gender_count 
FROM demographics 
GROUP BY gender;

SELECT respondent_id, nitrobenzene AS min_nitrobenzene
FROM blood_voc
WHERE nitrobenzene = 
(SELECT MIN(nitrobenzene)
FROM blood_voc);

SELECT respondent_id, dimethylfuran AS max_dimethylfuran
FROM blood_voc
WHERE dimethylfuran = (
    SELECT MAX(dimethylfuran) 
    FROM blood_voc
    WHERE dimethylfuran != 'NA'
);

SELECT `year`, AVG(selenium) AS avg_selenium
FROM blood_metals
GROUP BY `year`;

SELECT d.respondent_id, d.year, d.gender, bm.lead
FROM demographics d
JOIN blood_metals bm ON d.respondent_id = bm.respondent_id
WHERE d.gender = '2' AND bm.lead > 0.5;

SELECT d.gender, AVG(d.age_months / 12) AS average_age_years
FROM demographics d
JOIN respondent r ON d.respondent_id = r.respondent_id
GROUP BY d.gender;

SELECT bc.year, AVG(bc.whitebc_count) AS average_whitebc_count, AVG(bc.hemoglobin) AS average_hemoglobin
FROM bloodchem bc
JOIN respondent r ON bc.respondent_id = r.respondent_id
GROUP BY bc.year;

SELECT d.*, bm.lead
FROM demographics d
JOIN blood_metals bm ON d.respondent_id = bm.respondent_id
WHERE bm.lead > 0.5;

SELECT d.gender, AVG(bc.lymphocyte_pct) AS average_lymphocyte_percent
FROM demographics d
JOIN bloodchem bc ON d.respondent_id = bc.respondent_id
GROUP BY d.gender;

SELECT d.gender, d.age_months, bm.*
FROM demographics d
JOIN blood_metals bm ON d.respondent_id = bm.respondent_id
JOIN blood_voc bv ON d.respondent_id = bv.respondent_id
WHERE bv.benzene > 0.3;

SELECT d.gender, AVG(bc.platelet_count) AS avg_platelet_count
FROM demographics d
JOIN bloodchem bc ON d.respondent_id = bc.respondent_id
GROUP BY d.gender;

SELECT d.*, bm.lead, bm.mercury
FROM demographics d
JOIN blood_metals bm ON d.respondent_id = bm.respondent_id
WHERE bm.lead > 0.5 AND bm.mercury > 0.3;
