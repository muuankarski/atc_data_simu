


place_johdanto <- "<p>Eli tähän tulisi johdanto eli sama dokumentaatio datasta kuin sovelluksessa</p>"

place_data <- "<a href='data.csv'>Lataa data</a><br/><a href='metadata.csv'>Lataa metadata</a>"

place_esimerkit <- "
df <- readr::read_csv2('https://kelaresearchandanalytics.github.io/atc_data_simu/data.csv')
head(df)
#  vuosi atc   atc_selite           viikko   arvo  taso alue       aluekoodi sysdate            
#  <dbl> <chr> <chr>                 <dbl>  <dbl> <dbl> <chr>          <dbl> <dttm>             
#1  2019 A     A A A  selite taso 1      1 18421.     1 Ahvenanmaa         0 2020-03-31 17:00:03
#2  2019 A     A A A  selite taso 1      2 24384.     1 Ahvenanmaa         0 2020-03-31 17:00:03
#3  2019 A     A A A  selite taso 1      3 24072.     1 Ahvenanmaa         0 2020-03-31 17:00:03
#4  2019 A     A A A  selite taso 1      4 27529      1 Ahvenanmaa         0 2020-03-31 17:00:03
#5  2019 A     A A A  selite taso 1      5 25659      1 Ahvenanmaa         0 2020-03-31 17:00:03
#6  2019 A     A A A  selite taso 1      6 20214.     1 Ahvenanmaa         0 2020-03-31 17:00:03

meta <- readr::read_csv2('https://kelaresearchandanalytics.github.io/atc_data_simu/metadata.csv')
head(meta)

"


lns <- readLines("./index_tmp.html")
lns <- sub("PLACE_JOHDANTO", place_johdanto, lns)
lns <- sub("PLACE_DATA", place_data, lns)
lns <- sub("PLACE_ESIMERKIT", place_esimerkit, lns)

writeLines(lns, "index.html")

