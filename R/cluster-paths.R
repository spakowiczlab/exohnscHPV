# Large inputs that live on the cluster (PAS1695), not in this repository.
# These are the only absolute paths in the project. When the files are
# deposited publicly, replace the strings here (for example with figshare URLs).

drake_2021_07_15 <- "/fs/ess/PAS1695/projects/HNSC/data/drake-output/7-15-2021"
drake_2021_07_26 <- "/fs/ess/PAS1695/projects/HNSC/data/drake-output/7-26-2021"

kraken_taxonomy <- "/fs/ess/PAS1695/exoticpipe/external-data/kraken2-metaphlan-taxonomy.txt"
kraken_counts_hnsc <- "/fs/ess/PAS1695/generate-inputs_v1/TCGA-processing/data/HNSC/k2bout.txt"
rarefaction_r <- "/fs/ess/PAS1695/exoticpipe/R/counts-to-rarefied-prevalence.R"

exorien_ra_taxonomy <- "/fs/ess/PAS1695/projects/exorien/data/drake-output/2022-03-16/2022-03-16_RA-with-taxonomy.csv"
exorien_clinical <- "/fs/ess/PAS1695/projects/exorien/data/clinical/20PRJ060OSU_20210707_ClinicalMolLinkage_V4_as-in-drake.xlsx"

orien_project <- "/fs/ess/PAS1695/projects/exohnsc/data"

# All-cancer Buffa scores. Previously loaded as
# file.path(paths$mitoscore, "/data/buffa-mitophagy_tcga-cancer.RData")
# from the gitignored 00-paths.R.
buffa_tcga_cancer <- "/fs/ess/PAS1695/projects/mitoscore/data/buffa-mitophagy_tcga-cancer.RData"
