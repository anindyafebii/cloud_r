df_titanic <- data.frame(Titanic)
df_titanic

library (data.table)

data_titan <- data.table(df_titanic)
data_titan 

total.pass <- data_titan[, sum(Freq)]
total.pass

data_survive <- data_titan[, list(n=sum(Freq)), by="Survived"]
data_survive

data_survive[, percent := n / sum(n)]
data_survive
