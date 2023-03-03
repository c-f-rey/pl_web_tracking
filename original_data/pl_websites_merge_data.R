library(dplyr)

# Load original 2019 PLS Data, can be found at https://www.imls.gov/research-evaluation/data-collection/public-libraries-survey
pls_data <- read.csv("https://raw.githubusercontent.com/c-f-rey/pl_web_tracking/main/original_data/PLS_FY19_AE_pud19i.csv", stringsAsFactors = FALSE)

  
#extract only California public libraries
ca_pls_data <- pls_data %>% 
  filter(STABR == "CA")

#extract relevant fields from PLS data
ca_pls_data_weeded <- ca_pls_data %>% 
  select(STABR , LIBNAME , POPU_LSA , WEBVISIT, LOCALE_MOD, CENTRACT) #Add or remove columns you would like here

# load California directory of public libraries
ca_directory <- read.csv("https://raw.githubusercontent.com/c-f-rey/pl_web_tracking/main/original_data/_temp_published_published_table_report_75857_1000034.csv", stringsAsFactors = FALSE)

#extract relevant fields from cal_directory
ca_directory_weeded <- ca_directory %>% 
  select(Location , X1.23.Library.s.Web.Address) #Add or remove columns you would like here

#merge datasets
ca_pl_websites <- left_join(ca_directory_weeded , ca_pls_data_weeded , by = c("Location" = "LIBNAME"))

#rename columns

ca_pl_websites <- ca_pl_websites %>% 
rename(
  state = STABR ,
  library_system = Location ,
  web_address = X1.23.Library.s.Web.Address ,
  popu_lsa_2019 = POPU_LSA ,
  web_visits_2019 = WEBVISIT ,
  locale_mod = LOCALE_MOD , 
  cen_tract = CENTRACT
)

write.csv(ca_pl_websites , # "[insert directory here]" , row.names = FALSE)
