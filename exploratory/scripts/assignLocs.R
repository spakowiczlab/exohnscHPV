#' Adds a column to given clincial df with organ/location assignments used in the gganatogram body plot
#'
#' @param clin a data frame with clinical data with a column containing body sites 

assignLocs <- function(clin){
  locs <- unique(clin$site)
  organs <- list(
    adipose = locs[grep("subcutaneous|omentum", locs ,ignore.case = TRUE)],
    adrenal = locs[grep("adrenal", locs ,ignore.case = TRUE)],
    bone = locs[grep("bone|vertebral|mandible|scapula", locs ,ignore.case = TRUE)],
    bladder = locs[grep("bladder", locs ,ignore.case = TRUE)],
    brain = locs[grep("brain", locs ,ignore.case = TRUE)],
    breast = locs[grep("breast", locs ,ignore.case = TRUE)],
    bronchus = locs[grep("bronchus", locs ,ignore.case = TRUE)],
    cecum = locs[grep("cecum", locs ,ignore.case = TRUE)],
    cerebellum = locs[grep("cerebellum", locs ,ignore.case = TRUE)],
    colon = locs[grep("colon", locs ,ignore.case = TRUE)],
    fallopian = locs[grep("fallopian", locs ,ignore.case = TRUE)],
    heart = locs[grep("heart|vena|vessels", locs ,ignore.case = TRUE)],
    kidney = locs[grep("kidney", locs ,ignore.case = TRUE)],
    liver = locs[grep("liver", locs ,ignore.case = TRUE)],
    lung = locs[grep("lung", locs ,ignore.case = TRUE)],
    lymph = locs[grep("lymph", locs ,ignore.case = TRUE)],
    nerve = locs[grep("nerv", locs ,ignore.case = TRUE)],
    muscle = locs[grep("soft tissue|muscle", locs ,ignore.case = TRUE)],
    nose = locs[grep("nasal", locs, ignore.case = TRUE)],
    ovary = locs[grep("ovary", locs ,ignore.case = TRUE)],
    pancreas = locs[grep("pancreas", locs, ignore.case = TRUE)],
    penis = locs[grep("penis", locs, ignore.case = TRUE)],
    prostate = locs[grep("prostate", locs ,ignore.case = TRUE)],
    rectum = locs[grep("rectum|anus", locs ,ignore.case = TRUE)],
    salivary_gland = locs[grep("Parotid", locs, ignore.case = TRUE)],
    skin = locs[grep("skin|scalp|perineum", locs ,ignore.case = TRUE)],
    small_intestine = locs[grep("Small intestine", locs ,ignore.case = TRUE)],
    spleen = locs[grep("spleen", locs ,ignore.case = TRUE)],
    stomach = locs[grep("stomach", locs ,ignore.case = TRUE)],
    testis = locs[grep("testis|sperm", locs ,ignore.case = TRUE)],
    thyroid = locs[grep("thyroid", locs ,ignore.case = TRUE)],
    tongue = locs[grep("tongue", locs ,ignore.case = TRUE)],
    trachea = locs[grep("trachea", locs ,ignore.case = TRUE)],
    uterus = locs[grep("uter|endometrium", locs ,ignore.case = TRUE)],
    vagina = locs[grep("vagina|vulva", locs ,ignore.case = TRUE)]
  )

  clin <- clin %>% mutate(.,organ = with(.,case_when(
    site %in% organs$thyroid ~ "thyroid_gland",
    site %in% organs$pancreas ~ "pancreas",
    site %in% organs$colon ~ "colon",
    site %in% organs$lung ~ "lung",
    site %in% organs$bronchus ~ "bronchus",
    site %in% organs$rectum ~ "rectum", 
    site %in% organs$skin ~ "skin", 
    site %in% organs$stomach ~ "stomach",
    site %in% organs$cecum ~ "caecum",
    site %in% organs$small_intestine ~ "small_intestine",
    site %in% organs$uterus ~ "uterus",
    site %in% organs$bone ~ "bone",
    site %in% organs$breast ~ "breast",
    site %in% organs$kidney ~ "kidney",
    site %in% organs$bladder ~ "urinary_bladder",
    site %in% organs$heart ~ "heart",
    site %in% organs$adrenal ~ "adrenal_gland",
    site %in% organs$liver ~ "liver",
    site %in% organs$ovary ~ "ovary", 
    site %in% organs$vagina ~ "vagina",
    site %in% organs$nerve ~ "nerve",
    site %in% organs$brain ~ "brain",
    site %in% organs$lymph ~ "lymph_node",
    site %in% organs$tongue ~ "tongue",
    site %in% organs$prostate ~ "prostate",
    site %in% organs$trachea ~ "trachea",
    site %in% organs$cerebellum ~ "cerebellar_hemisphere",
    site %in% organs$fallopian ~ "fallopian_tube",
    site %in% organs$adipose ~ "adipose_tissue",
    site %in% organs$muscle ~ "skeletal_muscle",
    site %in% organs$spleen ~ "spleen",
    site %in% organs$testis ~ "testis",
    site %in% organs$salivary_gland ~ "salivary_gland", 
    site %in% organs$nose ~ "nose", 
    site %in% organs$penis ~ "penis"
  )))
  
}


