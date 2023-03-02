library(dplyr)

# Load original 2019 PLS Data, can be found at https://www.imls.gov/research-evaluation/data-collection/public-libraries-survey
pls_data <- read.csv("/Users/connor/Library/CloudStorage/GoogleDrive-crey@uw.edu/My Drive/MLIS/2_WQ23/lis545_data_curation/curation_protocol/data/pls_FY2019_csv/PLS_FY19_AE_pud19i.csv", stringsAsFactors = FALSE)

  
#extract only California public libraries
cal_pls_data <- pls_data %>% 
  (STABR == "CA")

#extract relevant fields from PLS data
cal_pls_data_weeded <- cal_pls_data %>% 
  select(LIBNAME , POPU_LSA , WEBVISIT, LOCALE_MOD, CENTRACT) #Add or remove columns you would like here

# load California directory of public libraries
cal_directory <- read.csv("/Users/connor/Library/CloudStorage/GoogleDrive-crey@uw.edu/My Drive/MLIS/2_WQ23/lis545_data_curation/curation_protocol/data/_temp_published_published_table_report_75857_1000034.csv", stringsAsFactors = FALSE)

#extract relevant fields from cal_directory
cal_directory_weeded <- cal_directory %>% 
  select(Location , X1.23.Library.s.Web.Address) #Add or remove fields you would like here

#merge datasets
ca_pl_websites <- left_join(cal_directory_weeded , cal_pls_data_weeded , by = c("Location" = "LIBNAME"))

#rename columns
rename(
  ca_pl_websites,
  library_system = Location ,
  web_address = X1.23.Library.s.Web.Address ,
  popu_lsa_2019 = POPU_LSA ,
  web_visits_2019 = WEBVISIT ,
  locale_mod = LOCALE_MOD , 
  cen_tract = CENTRACT
)

write.csv(cal_pl_websites , "/Users/connor/Library/CloudStorage/GoogleDrive-crey@uw.edu/My Drive/MLIS/2_WQ23/lis545_data_curation/curation_protocol/data/cal_pl_websites.csv" , row.names = FALSE)
