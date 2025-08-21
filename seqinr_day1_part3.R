toyORF

# install.packages("seqinr")

library(seqinr)

getwd()
# setwd()

Teven <- read.fasta("wyatt.fasta")

class(Teven)
length(Teven)
names(Teven)
getAnnot(Teven)
names(Teven) <- c("T2", "T4", "T6")

count(Teven$T2, 1)
count(wyatt$T4, 1)
count(wyatt$T6, 1)

# lapply(list, function)
lapply(Teven, count, 1)
lapply(Teven, count, 2)
lapply(Teven, count, 3)
# ...

## EcoRI ("eco-R-one")
## 5'-GAATTC-3'

#####

?gregexpr # r-base

grep("gaattc", Teven$T2)
grepexpr("gaattc", paste(Teven$T2, collapse = ""))
gregexpr("gaattc", paste(Teven$T2, collapse = ""))

Teven$T2[2730:2735]
Teven$T2[2729:2736]

i = 2730
Teven$T2[i-1:i+6]
Teven$T2[(i-1):(i+6)]

positions <- gregexpr("gaattc", paste(Teven$T2, collapse = ""))
positions[1]
positions[[1]][1]
positions[[1]][1] -> i
Teven$T2[(i-1):(i+6)]

unlist(positions)

for(i in unlist(positions)){
  print(i)
}

for(i in unlist(positions)){
  print(Teven$T2[(i-1):(i+6)])
}

Teven$T2[(i-1):(i+6)]
rev(comp(Teven[[1]]))
?comp # CUIDADO: NO da el reverso complementario
?rev # r-base

head(Teven[[1]], 10)
comp(head(Teven[[1]], 10)) # 3'->5'
rev(comp(head(Teven[[1]], 10))) # 5'->3'