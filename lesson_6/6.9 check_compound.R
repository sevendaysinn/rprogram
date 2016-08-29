a <- c(1,1,0,1)
b <- c(2,1,0,1)
ifelse(a==1 & b==1,"yes","no")
ifelse(a==1 && b==1,"yes","no")

# & and
# | or

x <- 1
y <- 2
if (x == 0 && y == 3) 
{
  print("hello")
}

if (x == 1 || y == 3) 
{
  print("hello")
}

ifelse(b == 1, "HI", ifelse(b == 0, "hello", "goodbye"))
