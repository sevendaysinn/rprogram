use.switch <- function(x)
{
  switch(x,
         "a"="first",
         "b"="second",
         "z"="last",
         "c"="third",
         "other")
}

use.switch('a')
use.switch('b')
use.switch('c')
use.switch('steve')
use.switch('z')

# numbers use positional settings
use.switch(8)
use.switch(1)
use.switch(3)
is.null(use.switch(7))
