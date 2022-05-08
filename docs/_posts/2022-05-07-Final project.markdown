---
layout: post
title:  "AIT580 Projetct"
Author: Tuan Nguyen, Seunggyu Choi
categories: jekyll update

---

## Introduction

 In recent years, storm events have been occurring with increasing frequency and intensity in the North Atlantic Ocean, affecting millions of lives across and causing billions of damages across the US. The previous year (2021) was the second year in a row with high number of hurricanes in the North Atlantic, and the third most active hurricane season in history after 2020 and 2005 (“2021 Hurricane Season Was Third Most Active,” 2021). According to the National Oceanic and Atmospheric Administration (NOAA) (Hurricane Costs, n.d.), the estimated economic loss of the 2021 hurricane season was $145 billion, the third highest ever recorded, with over 538 live lost during the first 9 months of the year (Rice, n.d.). 
 
 Storm data recorded by NOAA might contain helpful insights which can assist in the understanding or re  ducing the potential economic, environmental, or social impacts of storms and hurricane events. Thus, this analysis aims to explore the potential trends and patterns of storm events over the last 42 years (1980 – 2021) and their effects in terms of economic, agriculture and live lost for the US’s East Coast region. The result of this analysis can be used to assist specialists in their own field of expertise or as a summary of some aspects of storms events' effect on the region. For example, economist could use this analysis to help predicts and estimate economic damage of a storm event, while stakeholders with interest in this topic without prior knowledge could refer to this result as introduction to about some of the characteristic of storm episodes in the East Coast over the last four decades 


## Nature of the Data Curation
  NOAA is an acronym for National Oceanic and Atmospheric Administration, an agency under the US Department of Commerce. NOAA's primary duties include weather monitoring, typhoon warning, climate monitoring, fisheries management, and coastal recovery. Their service is the communication of research, data, information, and knowledge that people living in the country or domestic can use in their daily life. These services include various climate predictions, disaster information, and government collection and research on natural ecosystems. It also provides an environment where data sets and information that can be used in public, private, and academic fields can be continuously used. In addition, one-third of GDP in the United States is affected by NOAA’s services. (About Our Agency | National Oceanic and Atmospheric Administration, n.d.) The NOAA's services, which stand out, especially in the economic part, can come to us as an important economically important role. 
  
  They provide reliable information decision-makers need through cutting-edge machines and various research. According to their main task, they accumulate various data information that can be obtained from nature through state-of-the-art equipment and research methods. 
  The massive and wide category amount of data from NOAA gives us more options and tremendous scalability. However, these characteristics cannot be covered everything due to time or resource limitations. So we can narrow down the scope of the appropriate target and focus on the most effective way to actively utilize the data that fits that scope. 
  In addition, NOAA's policy on data materials provided is as follows:  “NOAA will adhere to the policies contained in the Paperwork Reduction Act, the Government Paperwork Elimination Act, OMB Circular No. A-130, "Management of Federal Information Resources," and other relevant laws." (Policy on Partnerships in the Provision of Environmental Information | National Oceanic and Atmospheric Administration, n.d.) 


## Data analysis question of interest.
  Storm events related data has always been in interests of numerous organizations in a variety of disciplines, from airlines who use the data study and optimize air flight paths of an airport, to agriculture sector where storm events would result in loss of harvest and damage of related infrastructure. In this analysis of NOAA’s storm event data, several aspects of the data are inspected to draw insights that would prove beneficial to related stakeholders: 

  <dl>
  <dt>1. Trend of events though out the years: </dt>
  <dd>The trend of storm events is one of the aspects with most interest for various stakeholders. In the agriculture sector, farmers could reference this trend while planning their crop schedule or setting up safety measures to avoid negative impacts on a crop season. For civil engineering, understanding the trend of events helps select the right design frequency for structures that could satisfy safety requirements with minimum waste of resources. Data related to event frequency are also of interest to environmental and climate researchers, as storm events affect the local ecosystem, while also serving as indicator for larger scale climate phenomenon and events. The analysis of this aspect aims to find and analyze the trend of storm events in the East Coast region during the period of 1980 – 2021,  </dd>

  <dt>2. Effects of storm events related to human casualties: </dt>
  <dd>Storm events are considered hazardous due to several accompanying events such as hailstorm, heavy rain/snow, flood/flash flood, thunderstorm and tornado which can cause property damage as well as human casualties. Understanding the correlation between event types and number of injuries/deaths could help identify which events are more dangerous than others in terms of life lost, and in turn, assist in reducing the negative effects of storm events. The analysis of this aspect aims to find the correlation between each type of event in a storm episode and their corresponding human casualties during the period of 1980 – 2021. </dd>

  <dt>3. Effects of storm events related to economic damage: </dt>
  <dd>Economic damage by storm events occurs more frequently compared to human casualties, as some storm events can cause tremendous damage to infrastructures and crops while being less dangerous to humans. For example, while people can seek shelter during a hailstorm event, the ice pellets can cause damage to buildings, cars, crop fields and animals, resulting in high economic lost. The analysis of this aspect aims to find the correlation between each type of event to crops and infrastructure damage cost during the same mentioned period. </dd>
  </dl>


## Requirements and Resources needed

<h4>Software</h4> 

  Operating System: Microsoft Windows 10   

  Tools: RStudio, Visual studio code

  Language: R

    

  We started with cvs files from 1950 to 2021 which were divided into 71 files. These data files were integrated and filtered for our target region, the Eastern Americas. also, it was filtered by year from 1980 to 2021. Data filtered through the input information for the filtered dataset was checked for missing values and outliers, and attributes with some disaster characteristics were converted into factor types. In addition, for the calculation of values, the existing unit range was also converted to a general numeric value. 


## Descriptive Analysis
The dataset was extracted from the original Storm Event Bulk Data in NOAA’s Storm Event Database. The original dataset is comprised of 71 csv files from 1950 to 2021 (need source, accessed April 15th, 2022), each csv file contains 51 attributes. The metadata for the original dataset can be found at  <a href="https://www.ncei.noaa.gov/pub/data/swdi/stormevents/csvfiles/" target="_blank">NOAA’s Storm Event csv repository</a>. The dataset used in this analysis was aggregated from 41 csv files corresponding to the interested period (1980– 2021), filtered for the 14 states of US’s East Coast region, and reduced dimension to 19 attributes (668,664 observations) useful for this analysis. 


## Results/Findings

  <h3>1.Trend of events throughout the year</h3>
  This analysis of trend of storm events for the East Coast in period of 1980 to 2021 is divided into 2 smaller parts: General trend of storm events and possible explanations, Difference in number of events based on state. 

 <h4>a.General trend of storm events and possible explanations</h4>
  From the dataset of storm events records for the East Coast in period of 1980 to 2021, using R, the data were aggregated into table that shows the number of events occurred in each state, for each year and another table for every month of every year during the study period. The following interactive graph shows the number of storm events for each month of every year during the study period:

  <iframe src="assets/event_per_month.html" height="600px" width="100%" style="border:none;"></iframe>



  Based on this visualization, it can be observed that the months with the highest frequency of storm events are June and July, with June being the higher of the two months. Additionally, the latter half of the year tends to have more occurrence of storm events compared to the first half.  
  The data related to the number of events according to states is visualized in the following interactive map and graph:
  <iframe src="assets/map.html" height="800px" width="100%" style="border:none;"></iframe>


  In this visualization, a steady increase trend is observed in the of number of storm event occurrence in each state, with the number of storm events rising as time progresses. However, this rate of increase is not constant, a sudden increase in number of events is observed in the plot for Florida, Georgia, New York, North Carolina, and Virginia around the year 1995. Using k-means clustering technique with k = 2, it is evident that the number of events according to year separates into 2 distinct clusters.
  ![figure 4 Scatter k mean](assets/scatter_k_mean_Q1.jpeg)

  The first cluster with lower number of events consists of the years from 1980 – 1994, the second cluster with of higher number of events comprise of the remaining years from 1995 -2021. There is extreme difference in the mean of number of events between these two clusters, with the mean of cluster 1 is 3790 events/year, while cluster 2 is 24168 events/year. T-test with significant level of 1% performed for these 2 clusters also yield p-value = 2.2e-16, approximate 0, indicating statistical significance. Based on this evidence, it can be concluded that the trend in number of storm events occurring yearly in the East Coast had a notable change from 1995, compare to prior years, and the trend of high number of storm events is observed to remain constant based on data from 1995 to 2021. 

  The result of this analysis in line with <a href="https://www.noaa.gov/stories/atlantic-high-activity-eras-what-does-it-mean-for-hurricane-season" target="_blank">NOAA’s finding on the increased number of storm events and hurricanes in the Atlantic from 1995 compared to previous years</a>.
  According to NOAA, the period from 1995 to present is considered a high-activity era for Atlantic hurricane seasons. As the frequency and intensity of storm events in the Atlantic is affected by numerous atmospheric and ocean conditions such as El Nino/La Nina, the current trend of high-activity is the result of one such condition: the Atlantic Multi-decadal Oscillation (AMO). The AMO is a long duration changes in surface sea temperature in the North Atlantic Ocean, separated into warm phrase and cool phrase, similar to the El Nino-Southern Oscillation (ENSO) in the Pacific, with each phrase can last up to 20-40 years. <a href="https://www.aoml.noaa.gov/phod/amo_faq.php" target="_blank">The warm phrase of AMO</a> is often related to droughts in Midwest/Southwest US, more rainfalls in Florida, and higher chance of a weak hurricane evolve into major hurricane in the Atlantic, while the cool phrase often has the opposite effects. AMO index (calculated based on the sea surface temperature, higher index means higher sea surface temperature) has been observed to increase during the early 90s and indicate that AMO has <a herf="https://agupubs.onlinelibrary.wiley.com/doi/abs/10.1029/2000gl012745" target="_blank">transitioned from cool phrase (1965 -1994) to warm phrase in 1995</a>. The effect of this warm phrase can be seen from the data, with significantly higher number of events during the period 1995 to 2021. This warm phrase effect is expected to continue as forecast showing increasing <a herf="https://climateimpactcompany.com/february-2022-pdo-amo-outlook-2-2/" target="_blank">AMO index throughout 2022.</a>

 <h4>b.Difference in number of events based on States</h4> 
  From the figure 5 ![figure 5 Event count state wrap plot](assets/Event_count_state_wrap_plot.jpeg) , there is a clear difference in timelines of number of storm events in Connecticut, Delaware, New Hampshire, and Rhode Island. To reconfirm this observation, a simple linear regression model was fitted to predict the number of storm events based on the year and location (each state as categorical variable). The model result shows that 66.44% of the variation in number of storm events throughout the years can be explained using year and location (based on adjusted R-squared). In this model, the 4 mentioned states have low coefficient and high p-value, meaning that they do not contribute much to the prediction of number of events. Additionally, Maine and Massachusetts also have lower model coefficient compared to the remaining states. Since this linear model uses year and location as input, the result can be interpreted as: Overall, Connecticut, Delaware, Maine, Massachusetts, New Hampshire, and Rhode Island have lower number of storm events occurrence compared to other states in the region. From a geographical point of view, except for Delaware, 5 of the 6 states mentioned are in the northernmost part of the region, which may have been a factor that contributed to the lower number of storm event occurrences.


<h3>2.Effects of storm events related to economic damage and casualties</h3>

Our questions were asked to gain insight into the impacts type of disasters can have on damage to humans also can damage to agriculture and property. Therefore, we focused on direct/indirect casualties, property damage, and crop damage caused by each type of disaster. 

The event types consisting of 51 different event types were reclassified into 7 major categories: Drought, Flood, Freeze, Severe Storm, Tropical typhoon, Wildfire, Winter storm. Based on this classification, graphs were constructed based on data for direct/indirect casualties, damage to property/crops, and integrated damage amount bar graph by year based on the type of disaster.

![figure 6 Direct casualties by disasters graph](assets/Rplot.png) Direct casualties are considered death caused by direct effects of storms. Example of direct casualties are drowning (in case of flood) or physical trauma (in case of strong wind with debris). Based on the Direct casualties by disasters graph above, we were able to obtain visual information about the direct damage according to the seven disaster classifications. Most notably, the direct casualties caused by tropical Cyclones and floodings were the highest. Additionally, the overall ranking of direct casualties could be listed in the following order: tropical cyclone, flooding, drought, freeze, severe storm, winter storm, and wildfire. Through the above analysis, it is evident that tropical Cyclones and flooding cause most of the direct human casualties, while the remaining disasters (wildfires, Winter storms, Severe storms, freezes, and drought) have caused relatively fewer direct casualties. 

![figure 7 Indirect casualties by disasters graph](assets/Rplot01.png) Indirect casualties are death caused by indirect effects of storms, such as illness (heart attacks) or physical accidents (driving accidents, fell from high places). From the graph of indirect casualties, it can be concluded that, similarly to direct casualty, tropical cyclones have caused the highest number of indirect casualties. However, in the case of floods, even though it was ranked high in the direct casualties' graph like tropical Cyclones, the degree of lethality regarding indirect human casualties was lower. In the case of drought, indirect lives lost to drought is lower compared to direct casualties, but in the case of winter storms, this number is higher in relation with direct casualties. 

![figure 8 property damage caused by disasters graph](assets/Rplot02.png) Regarding property damage caused by disasters, the following events have the highest level of property damage while wildfires, winter storms, freezes, and droughts have minimal effects on levels of property damage.

![figure 9 Crops damage caused by disasters graph](assets/Rplot03.png) The above graph illustrates crops damage caused by disasters, with Severe Storm being the type of disaster that causes the greatest damage to crops. In terms of property damage, Severe Storm inflicts the highest crop damage and the third most damage to property. 

![figure 10 total amount of damage caused by disasters graph](assets/Rplot04.png) The graph above shows the total amount of damage caused by disasters over time, from which we can see the trend of the total damage caused by all 7 disaster categories. Looking at the graph , it can be seen that, before the year 1995, there was relatively minor damage to property and crops from disasters. However, in the period from 1995-2021, the trend of the total damage caused by disasters fluctuates heavily, with high years (2005, 2017) and low years (2014-2016), although the general trend is positive. It can also be seen that the maximum amount of the total property and crop damage over years is highly increasing to an even higher value 


## Limitations

Even though several analyzing techniques have been performed to answer the research questions, due to external factors such as time constraints, more complex analysis techniques with higher performance have yet to be implemented. Since weather data is a time series data type, specialized time series analysis models such as moving average, exponential smoothing, or the Autoregressive Integrated Moving Average (ARIMA) family models will perform better compared to general analysis technique and is able to gain deeper insights into the data set.  

For future work, implementation of time series models, combining with external data from other sources would further improve the result of this analysis. 


## References

* 2021 hurricane season was third most active. (2021, December 1). BBC News. 	<a herf="https://www.bbc.com/news/science-environment-59489559" target="_blank">Link</a>			 
* Hurricane Costs. (n.d.). Retrieved April 28, 2022, <a herf="https://coast.noaa.gov/states/fast-facts/hurricane-costs.html" target="_blank">Link</a>
* Rice, D. (n.d.). Deadly year for weather disasters: 2021 storms cause most deaths in US since 	Hurricane Maria in 2017. USA TODAY. Retrieved April 28, 2022, <a herf="https://www.usatoday.com/story/news/nation/2021/11/09/u-s-weather-deaths-2021-deadliest-year-since-2017/6353312001/" target="_blank">Link</a>
* Leverage data to get quality insights for your business. (n.d.). Digiteum. Retrieved April 20, 2022, <a herf="https://www.digiteum.com/leverage-big-data/" target="_blank">Link</a>  
* NCEI Geoportal Search. (n.d.). Retrieved April 16, 2022, <a herf="https://www.ncei.noaa.gov/metadata/geoportal/#searchPane" target="_blank">Link</a>   
* Smith, A. B. (2020). U.S. Billion-dollar Weather and Climate Disasters, 1980—Present (NCEI Accession 0209268) [Data set]. NOAA National Centers for Environmental Information. <a herf="https://doi.org/10.25921/STKW-7W73" target="_blank">Link</a>
* Policy on Partnerships in the Provision of Environmental Information , National Oceanic and Atmospheric Administration. (n.d.). Retrieved April 20, 2022, <a herf="https://www.noaa.gov/work-with-us/partnership-policy" target="_blank">Link</a>  


## Explain/define Terms

## Appendix

The final dataset is comprised of 668664 observations across 19 attributes, which are:  

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>“begin_yearmonth”</td>
      <td> Year/month the event began (yyyy-mm format). </td>
    </tr>
    <tr>
      <td>“episode_ID”</td>
      <td> id of storm episode, 1 episode can contain several events</td>
    </tr>
    <tr>
      <td>“event_ID”</td>
      <td>id of storm event </td>
    </tr>
    <tr>
      <td>“state”</td>
      <td>state name where event occurred</td>
    </tr>
    <tr>
      <td>“state_FIPS”</td>
      <td>unique State Federal Information Processing number</td>
    </tr>
    <tr>
      <td>“year”</td>
      <td>4-digit year number</td>
    </tr>
    <tr>
      <td>“month_name”</td>
      <td>name of the month the event occurred (in character)</td>
    </tr>
    <tr>
      <td> “event_type”</td>
      <td>name of event type, based on Table 1 of <a herf="https://www.nws.noaa.gov/directives/sym/pd01016005curr.pdf" target="_blank">Section 2.1.1 of NWS Directive</a></td>
    </tr>
    <tr>
      <td>“cz_type”</td>
      <td>Indicates whether the event happened in a (C) County/Parish, (Z) NWS Public Forecast Zone or (M) Marine.</td>
    </tr>
    <tr>
      <td>“injuries_direct”, “injuries_indirect”</td>
      <td>Direct and Indirect injuries caused by the event </td>
    </tr>
    <tr>
      <td>“death_direct”, “death_indirect”</td>
      <td>Direct and Indirect deaths caused by the event </td>
    </tr>
    <tr>
      <td>“damage_property”, “damage_crops”</td>
      <td>Estimated amount of damage to property and crops caused by the event </td>
    </tr>
    <tr>
      <td>“source”</td>
      <td> Source reporting the weather event</td>
    </tr>
    <tr>
      <td>“magnitude”</td>
      <td>measure the extent of magnitude_type</td>
    </tr>
    <tr>
      <td>“magnitude_type”</td>
      <td>EG = Wind Estimated Gust; ES = Estimated Sustained Wind; MS = Measured Sustained Wind; MG = Measured Wind Gust (no magnitude is included for instances of hail). </td>
    </tr>
    <tr>
      <td>“tor_f_scale”</td>
      <td>Strength of the tornado measured in Enhanced Fujita Scale</td>
    </tr>
  </tbody>
</table>


There are over 1 million missing values in the dataset, of the following distribution: episode_ID (8.06%), damage_property (35.88%), damage_crops (45.33%), source (15.69%), magnitude (48.81%), magnitude_type (69.85%), tor_f_scale (97.65%).
