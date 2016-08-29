check.bool <- function(x)
{
  if (x==1)
  {
    print("hello")
  } else
  {
    print ('goodbye')
  }
}

check.bool(1)
check.bool(8)
check.bool('steve')
check.bool(TRUE)

check.bool <- function(x)
{
  if (x==1)
  {
    # anything after this symbo is a comment
    # ignored by computer
    print("hello")
    
  } else if(x == 0)
  {
    print('goodbye')
    
  } else
  {
    print('confused')
  }
}

check.bool(1)
check.bool(99)
check.bool(0)
check.bool('test')
check.bool(FALSE)
