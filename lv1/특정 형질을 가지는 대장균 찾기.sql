SELECT COUNT(*) COUNT
FROM ECOLI_DATA
WHERE (GENOTYPE&1 OR GENOTYPE&4) AND (GENOTYPE&2=0)
