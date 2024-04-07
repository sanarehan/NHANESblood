CREATE DATABASE nhanesblood;

USE nhanesblood;

CREATE TABLE blood_metals(
pbcd_id VARCHAR(50),
respondent_id VARCHAR(50),
`year` VARCHAR(50),
cadmium VARCHAR(50),
`lead` VARCHAR(50),
manganese VARCHAR(50),
mercury VARCHAR(50),
selenium VARCHAR(50)
);

CREATE TABLE blood_voc(
voc_id VARCHAR(50),
respondent_id VARCHAR(50),
`year` VARCHAR(50),
dimethylfuran VARCHAR(50),
dichloroethane VARCHAR(50),
dichlorobenzene VARCHAR(50),
chlorobenzene VARCHAR(50),
benzene VARCHAR(50),
dichloropropane VARCHAR(50),
nitrobenzene VARCHAR(50)
);

CREATE TABLE bloodchem(
bloodcells_id VARCHAR(50),
respondent_id VARCHAR(50),
`year` VARCHAR(50),
whitebc_count VARCHAR(50),
platelet_count VARCHAR(50),
mean_cellvol VARCHAR(50),
hemoglobin VARCHAR(50),
lymphocyte_pct VARCHAR(50)
);

CREATE TABLE demographics(
demo_id VARCHAR(50),
respondent_id VARCHAR(50),
`year` VARCHAR(50),
gender VARCHAR(50),
age_months VARCHAR(50)
);

CREATE TABLE blood_comp AS
SELECT
    bc.respondent_id,
    bc.year,
    bv.voc_id,
    bm.pbcd_id,
    bc.bloodcells_id
FROM
    bloodchem bc
JOIN
    blood_metals bm ON bc.respondent_id = bm.respondent_id AND bc.year = bm.year
JOIN
    blood_voc bv ON bc.respondent_id = bv.respondent_id AND bc.year = bv.year;