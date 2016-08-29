hello.person <- function(first, last="Stark", ...)
{
    print(sprintf("Hello %s %s", first, last))
}

hello.person("Steve")
do.call("hello.person", args=list(first="STEVE", last="ROGERS"))
do.call(hello.person, args=list(first="STEVE", last="ROGERS"))

run.this <- function(x, func=mean)
{
  do.call(func, args=list(x))
}

run.this(1:10)
run.this(1: 10, mean)
run.this(1:10, sd)
run.this(1:10, sum)
