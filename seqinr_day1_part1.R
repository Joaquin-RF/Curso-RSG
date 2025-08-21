# install.packages("seqinr")

library(seqinr)

lseqinr()

citation("seqinr")

?read.fasta

?write.table  #r-base

?write.csv    #r-base

legacyfile <- system.file("sequences/legacy.fasta", package = "seqinr")

legacyseq <- read.fasta(file = legacyfile, as.string = TRUE)

class(legacyseq)
# [1] "list"

print(legacy)

print(legacyseq)

str(legacy)

getSequence(legacyseq)

getName(legacyseq)

getAnnot(legacyseq)

?c2s
?s2c
# ?s2n

c2s(legacyseq)
class(c2s(legacyseq))
legacychar <- c2s(legacyseq)

s2c(legacychar)

toyORF <- s2c("atggagcaaataaatcgg")
toyORF
(toyORF <- s2c("atggagcaaataaatcgg"))
# s2n(toyORF)

length(legacyseq)
length(legacychar)

nchar(legacyseq)
nchar(legacychar)

splitseq(toyORF, frame = 0, word = 3)

?translate

translate(toyORF)

translate(toyORF, numcode = 13)

translate(toyORF, frame = 1)

translate(toyORF, frame = 2)

translate(toyORF, frame = 3)

translate(toyORF, frame = 0)

comp(toyORF)
# que hace la funcion comp()?
