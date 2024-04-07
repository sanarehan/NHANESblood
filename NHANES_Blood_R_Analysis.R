library(haven)
library(tidyverse)
library(readr)

# I am going to tidy my data now... :O

CBCmaster <- read_csv("CDS 302 Final Project/CBCmaster.csv")
VOCmaster <- read_csv("CDS 302 Final Project/VOCmaster.csv")
PBCDmaster <- read_csv("CDS 302 Final Project/PBCDmaster.csv")

respondent <- CBCmaster %>%
  select(
    "SEQN"
  ) %>%
  rename(
    "respondent_id" = "SEQN"
  )

CBC <- CBCmaster %>%
  select(
    "...1",
    "SEQN",
    "year",
    "LBXWBCSI",
    "LBXPLTSI",
    "LBXMCVSI",
    "LBXHGB",
    "LBXLYPCT"
  ) %>%
  rename(
    "respondent_id" = "SEQN",
    "bloodchem_id" = "...1",
    "whitebc_count" = "LBXWBCSI",
    "platelet_count" = "LBXPLTSI",
    "mean_cellvol" = "LBXMCVSI",
    "hemoglobin"= "LBXHGB",
    "lymphocyte_pct" = "LBXLYPCT"
  )

VOC <- VOCmaster %>%
  select(
    "...1",
    "SEQN",
    "year",
    "LBX2DF",
    "LBXV2A",
    "LBXVDB",
    "LBXVCB",
    "LBXVBZ",
    "LBXVDP",
    "LBXVNB"
  ) %>%
  rename(
    "voc_id" = "...1",
    "respondent_id" = "SEQN",
    "dimethylfuran" = "LBX2DF",
    "dichloroethane" = "LBXV2A",
    "dichlorobenzene" = "LBXVDB",
    "chlorobenzene" = "LBXVCB",
    "benzene" = "LBXVBZ",
    "dichloropropane" = "LBXVDP",
    "nitrobenzene" = "LBXVNB"
  )
    
PBCD <- PBCDmaster %>%
  select(
    "...1",
    "SEQN",
    "year",
    "LBXBCD",
    "LBXBPB",
    "LBXBMN",
    "LBXTHG",
    "LBXBSE"
  ) %>%
  rename(
    "pbcd_id" = "...1",
    "respondent_id" = "SEQN",
    "cadmium" = "LBXBCD",
    "lead" = "LBXBPB",
    "manganese" = "LBXBMN",
    "mercury" = "LBXTHG",
    "selenium" = "LBXBSE"
  )
    
DEMO9900 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/1999-2000/DEMO.XPT") %>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "1999-2000"
  )
DEMO0102 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/2001-2002/DEMO_B.XPT") %>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "2001-2002"
  )
DEMO0304 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/2003-2004/DEMO_C.XPT") %>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "2003-2004"
  )
DEMO0506 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/2005-2006/DEMO_D.XPT") %>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "2005-2006"
  ) 
DEMO0708 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/2007-2008/DEMO_E.XPT") %>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "2007-2008"
  ) 
DEMO0910 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/2009-2010/DEMO_F.XPT")%>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "2009-2010"
  ) 
DEMO1112 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DEMO_G.XPT") %>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "2011-2012"
  ) 
DEMO1314 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DEMO_H.XPT") %>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "2013-2014"
  ) 
DEMO1516 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DEMO_I.XPT") %>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "2015-2016"
  ) 
DEMO1718 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DEMO_J.XPT") %>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "2017-2018"
  ) 
DEMO1920 <- read_xpt("https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/P_DEMO.XPT") %>%
  select(
    "SEQN",
    "RIAGENDR",
    "RIDAGEMN"
  ) %>%
  rename(
    "gender" = "RIAGENDR",
    "age_months" = "RIDAGEMN"
  ) %>%
  mutate(
    "year" = "2019-2020"
  ) 
DEMOmaster <- rbind(DEMO9900, DEMO0102) %>%
  rbind(DEMO0304) %>%
  rbind(DEMO0506) %>%
  rbind(DEMO0708) %>%
  rbind(DEMO0910) %>%
  rbind(DEMO1112) %>%
  rbind(DEMO1314) %>%
  rbind(DEMO1516) %>%
  rbind(DEMO1718) %>%
  rbind(DEMO1920)

write.csv(DEMOmaster, "C:\\Users\\sanar\\OneDrive\\Documents\\CDS 302 Final Project\\DEMO.csv")

write.csv(CBC, "C:\\Users\\sanar\\OneDrive\\Documents\\CDS 302 Final Project\\CBC.csv")
write.csv(PBCD, "C:\\Users\\sanar\\OneDrive\\Documents\\CDS 302 Final Project\\PBCD.csv")
write.csv(VOC, "C:\\Users\\sanar\\OneDrive\\Documents\\CDS 302 Final Project\\VOC.csv")
write.csv(respondent, "C:\\Users\\sanar\\OneDrive\\Documents\\CDS 302 Final Project\\respondents.csv")
