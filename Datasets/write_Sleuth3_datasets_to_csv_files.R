install.packages()install.packages('Sleuth3')
library('Sleuth3')
install.packages('vcdExtra')
Sleuth3_datasets <- vcdExtra::datasets("Sleuth3")
# setwd('C:\\Users\\RohitSinghChauhan\\Downloads\\Study\\Statistics\\StatisticalSleuth\\Datasets\\')
setwd('path\\to\\data\\directory')

Sleuth3_datasets$Write_csv <- 'write.csv('
Sleuth3_datasets$comma_with_single_quote <- ",'"
Sleuth3_datasets$df_name_with_csv <- ".csv')"

Sleuth3_datasets$full_write_csv <- paste(Sleuth3_datasets$Write_csv, Sleuth3_datasets$Item, Sleuth3_datasets$comma_with_single_quote, Sleuth3_datasets$Item,Sleuth3_datasets$df_name_with_csv, sep="")

write.table(Sleuth3_datasets$full_write_csv, file = "full_write.R", sep = "\n",
row.names = FALSE, col.names = FALSE, quote = FALSE)

