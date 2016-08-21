A <- matrix(1:10, nrow=5)
A
B <- matrix(21:30, nrow=5)
C <- matrix(21:40, nrow=2)
CC
C
nrow(A)
ncol(A)
dim(A)

A
B
C
A+B
A*B
A == B
ncol(A)
nrow(B)
t(B)
A%*% t(B)
A %*%C
colnames(A)

colnames(A) <- c("Left", "Right")
rownames(A) <- c("First", "Second", "Third", "Fourth", "Fifth")
A
colnames(B) <- c("First", "Second")
rownames(B) <- c("One", "Two" ,"Three", "Four", "Five")

LETTERS
letters

colnames(C) <- LETTERS[1:10]
A%*%t(B)
1*21+6*26
rownames(C) <- c("top", "botton")
CC
C
t(A)

A%*%C
