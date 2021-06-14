# a big dictionary with details of all variables possible to use
dict_all <- list(
# covid columns
deaths	= "Cumulative number of deaths.",
confirmed		= "Cumulative number of confirmed cases.",
tests	= "Cumulative number of tests.",
vaccines	= "Cumulative number of doses administered. This is counted as a single dose, and may not equal the total number of people vaccinated, depending on the specific dose regime (e.g. people receive multiple doses). If a person receives one dose of the vaccine, this metric goes up by 1. If they receive a second dose, it goes up by 1 again.",
recovered	= "Cumulative number of patients released from hospitals or reported recovered.",
hosp	= "Number of hospitalized patients on date.",
icu	= "Number of hospitalized patients in ICUs on date.",
vent	= "Number of patients requiring invasive ventilation on date.",
population	= "Total population.",
# restrictions columns
school_closing = "0: No measures - 1: Recommend closing - 2: Require closing (only some levels or categories, eg just high school, or just public schools - 3: Require closing all levels." ,
workplace_closing =	"0: No measures - 1: Recommend closing (or work from home) - 2: require closing for some sectors or categories of workers - 3: require closing (or work from home) all-but-essential workplaces (eg grocery stores, doctors)." ,
cancel_events = "0: No measures - 1: Recommend cancelling - 2: Require cancelling." ,
gatherings_restrictions =	"0: No restrictions - 1: Restrictions on very large gatherings (the limit is above 1000 people) - 2: Restrictions on gatherings between 100-1000 people - 3: Restrictions on gatherings between 10-100 people - 4: Restrictions on gatherings of less than 10 people." ,
transport_closing =	"0: No measures - 1: Recommend closing (or significantly reduce volume/route/means of transport available) - 2: Require closing (or prohibit most citizens from using it)." ,
stay_home_restrictions = "0: No measures - 1: recommend not leaving house - 2: require not leaving house with exceptions for daily exercise, grocery shopping, and 'essential' trips - 3: Require not leaving house with minimal exceptions (e.g. allowed to leave only once every few days, or only one person can leave at a time, etc.)." ,
internal_movement_restrictions = "0: No measures - 1: Recommend closing (or significantly reduce volume/route/means of transport) - 2: Require closing (or prohibit most people from using it)." ,
international_movement_restrictions = "0: No measures - 1: Screening - 2: Quarantine arrivals from high-risk regions - 3: Ban on high-risk regions - 4: Total border closure." ,
information_campaigns = "0: No COVID-19 public information campaign - 1: public officials urging caution about COVID-19 - 2: coordinated public information campaign (e.g. across traditional and social media)." ,
testing_policy = "0: No testing policy - 1: Only those who both (a) have symptoms AND (b) meet specific criteria (eg key workers, admitted to hospital, came into contact with a known case, returned from overseas) - 2: testing of anyone showing COVID-19 symptoms - 3: open public testing (eg 'drive through' testing available to asymptomatic people)." ,
contact_tracing = "0: No contact tracing - 1: Limited contact tracing, not done for all cases - 2: Comprehensive contact tracing, done for all cases." ,
stringency_index = "Stringency of governmental responses.",
details_res = "[More details](https://www.bsg.ox.ac.uk/sites/default/files/2020-04/BSG-WP-2020-032-v5.0.pdf)"
)



