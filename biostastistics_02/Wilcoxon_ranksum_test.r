x=c(131,115,124,131,122,117,88,114,150,169)

y=c(60,150,130,180,163,130,121,119,130,148)

n1=length(x)
n2=length(y)
print(n1)
print(n2)
print(sort(x))
print(sort(y))

r=wilcox.test(x, y, alternative = "two.sided", paired = FALSE,exact=FALSE)

print(r)

