sprintf("hello %s", "Seven")
sprintf("hello %s, today is %s.", "Seven", "Friday")

hello.person <- function(name)
{
    print(sprintf("Hello %s", name))
}

hello.person("Seven")
hello.person("Steve")

hello.person <- function(first, last)
{
    print(sprintf("Hello %s %s", first, last))
}
hello.person

hello.person("Steve", "Rogers")
hello.person(last="Rogers", first = "Steve")
hello.person('Steve', last="Rogers")
hello.person(last='Rogers', 'Steve')

hello.person <- function(first, last="Stark")
{
    print(sprintf("Hellow %s %s", first, last))
}

hello.person("Steve", "Rogers")
hello.person("Steve")
hello.person(first="Steve")

hello.person("Steve", extra="Goodbye")
hello.person("Steve", "Rogers", "Barton")

hello.person <- function(first, last="Stark", ...)
{
  print(sprintf("Hello %s %s", first, last))
}

