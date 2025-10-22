library(wooldridge)

data("hprice1")
data("vote1")
data("loanapp")
data("gpa1")
data("k401ksubs")

#write each dataset to .xlsx

library(openxlsx)
write.xlsx(hprice1, file = "hprice1.xlsx")
write.xlsx(vote1, file = "vote1.xlsx")
write.xlsx(loanapp, file = "loanapp.xlsx")
write.xlsx(gpa1, file = "gpa1.xlsx")
write.xlsx(k401ksubs, file = "k401ksubs.xlsx")
