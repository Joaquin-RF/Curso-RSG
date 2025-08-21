toyORF

# install.packages("seqinr")

library(seqinr)

(orf <- s2c("atggagcaaataaatcgg"))

splitseq(orf, frame = 0, word = 3)

orf
comp(orf)
# ?comp

rev(comp(orf))

GC(orf)
AT(orf)
# Error in AT(orf) : could not find function "AT"

####

getwd()
# setwd()

read.fasta("wyatt.fasta")
Teven <- read.fasta("wyatt.fasta")

class(Teven)
length(Teven)

GC(Teven)

GC(Teven$)
GC(Teven$)
GC(Teven$)

GC(Teven[[1]])
GC(Teven[[2]])
GC(Teven[[3]])

?lapply
# lapply(list, function)
lapply(Teven, GC)
class(lapply(Teven, GC))

GC("atg")
GC(s2c("atg"))
GC(s2c("ATG"))

GC(rev(comp(s2c("atg"))))
rev(comp(s2c("atg")))

count("atg")
count("atg", 1)
count(s2c("ATG"), 1)
count(tolower(s2c("ATG")), 1)

rev(comp(s2c("atg")))
count(s2c("cat"), 1)

