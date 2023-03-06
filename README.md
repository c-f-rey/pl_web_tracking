# Directory of California Public Library Websites and their Descriptive Statistics 2019
## Table of Contents

   1. [General information](#general-information)
   2. [Naming Convention](#naming-convention)
   3. [Data Dictionary](#data-dictionary)
   4. [Metadata](#metadata)
   5. [Contact](#contact)

## General Information

This dataset has been curated to investigate data tracking on public library websites in the state of California. We have combined datasets from the [California Public Library  Administrative Headquarters Directory](http://ca.countingopinions.com/pireports/report.php?ff5a767bd8ab7a953f295552669a26a5&live) and the [IMLS 2019 Public Library Survey](https://www.imls.gov/research-evaluation/data-collection/public-libraries-survey) (PLS) from the IMLS to provide contextual information on the service population, website usage, and scale of the library systems being studied. This dataset has been compiled in preparation for an upstream curation project in Data Curation II, in which the data will be run through the Markup’s [Blacklight Real-Time Web Privacy Inspector](https://github.com/the-markup/investigation-blacklight-the-high-cost-of-free). We aim to retrieve data on intances on library websites of third party cookies, key logging, session recording, canvas fingerprinting, ad trackers, Facebook pixel, Google remarketing analytics, as indicated by [Blacklight's methodolgy](https://themarkup.org/blacklight/2020/09/22/how-we-built-a-real-time-privacy-inspector). Additionally, we intend to curate and code a dataframe on each public library's privacy policy to investigate whether the potential presence of these trackers may be unlawful.

To normalize the datasets, we standardized variable titles to be consistently lower case, and include more expressive contexual information, such as the year when certain datapoint were collected. A great deal of information was removed from the original datasets, this was done for two reasons: Either to remove identifying information for library workers to maintain their privacy; or to remove PLS data that did not seem relevant for the purposes of this study. PLS data that has been included is to aid with eventual analysis. 

The intended audiences are researchers and California policymakers interested in data privacy in public libraries. Additionally, concerned citizens may wish to access the completed dataset.

To provide conext and transparency, the original data files and the R script used to process and standardize the datasets have been included in this repository in the ['original_data' folder](https://github.com/c-f-rey/pl_web_tracking/tree/main/original_data).

## Naming Convention

Filenames follow the convention:

` {state postal code}_pl_websites.csv `

where `{state postal code}` denotes the state postal code contained in the parameters of the dataset. This will allow for more state directories to be added to this depository as the project progresses. 

## Data Dictionary

| Variable | Variable Type | Allowed Values | Description |
| ------ | ------ | ------ | ----- |
|state|string|two letter string state postal code| State postal code|
|library_system| string | capitalized string | Name of public library system|
|web_address|string | active web address | Web address of public library system|
|popu_lsa_2019|integer| integers greater than zero | PLS data included to illustrate the population of the Legal Service Area of library system |
|web_visits_2019|integer|integers greater than zero, -1, -3| PLS data included to indicate usage of library system website. <br> Total visits (sessions) to library website <br> -1–Missing <br>-3–Not applicable (closed or temporarily closed administrative entity)
|locale_mod|integer| 11, 12, 13, 21, 22, 23, 31, 32, 33, 41, 42, 43| PLS data included to group library systems by size. <br> Urban-centric locale code. The geographic location in terms of the size of the community in which it is located and the proximity of that community to urban and metropolitan areas. Assigned based on the modal locale code of associated stationary outlets (i.e., central and branch libraries). <br> 11–City, Large: Territory inside an urbanized area and inside a principal city with population of 250,000 or more. <br> 12–City, Mid-size: Territory inside an urbanized area and inside a principal city with a population less than 250,000 and greater than or equal to 100,000.<br> 13–City, Small: Territory inside an urbanized area and inside a principal city with a population less than 100,000.<br> 21–Suburb, Large: Territory outside a principal city and inside an urbanized area with population of 250,000 or more.<br> 22–Suburb, Mid-size: Territory outside a principal city and inside an urbanized area with a population less than 250,000 and greater than or equal to 100,000. <br> 23–Suburb, Small: Territory outside a principal city and inside an urbanized area with a population less than 100,000.<br> 31–Town, Fringe: Territory inside an urban cluster that is less than or equal to 10 miles from an urbanized area. <br> 32–Town, Distant: Territory inside an urban cluster that is more than 10 miles and less than or equal to 35 miles from an urbanized area.<br> 33–Town, Remote: Territory inside an urban cluster that is more than 35 miles from an urbanized area.<br> 41–Rural, Fringe: Census-defined rural territory that is less than or equal to 5 miles from an urbanized area, as well as rural territory that is less than or equal to 2.5 miles from an urban cluster.<br> 42–Rural, Distant: Census-defined rural territory that is more than 5 miles but less than or equal to 25 miles from an urbanized area, as well as rural territory that is more than 2.5 miles but less than or equal to 10 miles from an urban cluster.<br> 43–Rural, Remote: Census-defined rural territory that is more than 25 miles from an urbanized area and is also more than 10 miles from an urban cluster.|
|cen_tract|integer| integers formatted 0000.YY (YY=blank or numeric) | PLS data included to aid with potential interoperability with other demographic datasets. <br> Census Tract code. 7 character - A small, relatively permanent statistical subdivision of a county or statistically equivalent entity delineated by local participants as part of the Census Bureau’s Participant Statistical Areas Program. This field consists of four integers and two decimals, with an explicit decimal point.|

## Metadata

Metadata Schema: [Project Open Data](https://resources.data.gov/resources/dcat-us) 
| Attribute | Value |
| --- | --- |
| title | Directory of California Public Library Websites and Descriptive Statistics |
| description | This dataset is being curated to investigate data tracking on public library websites in the state of California. We will be combining datasets from the California Public Library Directory and the 2019 Public Library Survey from the IMLS to provide contextual information on the service population, website usage, and scale of the library systems being studied. |
| keyword | California, public library, library, website, data, data tracking, data privacy |
| issued | 02/27/2023|
|modified|03/02/2023|
|publisher|Connor Franklin Rey, <br> Carly Stewart|
|contactPoint|Connor Franklin Rey, crey@uw.edu <br> Carly Stewart, cestew@uw.edu |
|accessLevel | public|
|license|https://opendatacommons.org/licenses/pddl/|
|spatial| California|
|temporal|2019|
|describedBy|https://github.com/c-f-rey/pl_web_tracking/blob/main/README.md|
|language|English|
|references |https://www.imls.gov/research-evaluation/data-collection/public-libraries-survey ,<br> http://ca.countingopinions.com/pireports/report.php?ff5a767bd8ab7a953f295552669a26a5&live |
|theme| Public Library Data Privacy |
|accessURL |https://github.com/c-f-rey/pl_web_tracking|
|format|CSV|

## Contact

Connor Franklin Rey  crey@uw.edu <br>
Carly Stewart  cestew@uw.edu
