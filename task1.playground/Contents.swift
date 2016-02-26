
//function to find ncr
func ncr(n:Int,_ r:Int)->Int
{
    if r > 0 && n > 0{
     return factorial(n)/(factorial(r)*factorial(n-r))
    }
    if r <= 0 && n > 0{
     return 1
    }
      return 0
}
func factorial(num:Int) ->Int{
    var f=1
    for var i=num;i>=1;i-- {
    f *= i
    }
    return f
}

assert(ncr(5,4)==5)
assert(ncr(5,0)==1)
assert(ncr(5,-1)==1)//practically is has to work or not???
assert(ncr(0,2)==0)
assert(ncr(5,5)==1)


//function to find largest of two numbers
func maxOfTwo(x:Int,_ y:Int) ->Int
{
    if x>=y
    {
        return x
    }
    return y
}
assert(maxOfTwo(maxOfTwo(7,123),189) == 189)
assert(maxOfTwo(maxOfTwo(0, 0), 0) == 0)
assert(maxOfTwo(maxOfTwo(189, 123), 7) == 189)
assert(maxOfTwo(maxOfTwo(-6, -5), -4) == -4)



//function to find gcd of given two numbers
func gcd(x:Int,_ y:Int)->Int{
    for var i=abs(abs(x)<abs(y) ? x:y);i>=1;i-- {
        if x%i==0 && y%i==0{
            return i;
        }
    }
    return 0
}

assert(gcd(27,3 )==3)
//assert(gcd(abs(-9),27)==9)
assert(gcd(-9,27)==9)
assert(gcd(0,100)==0)
assert(gcd(100,0)==0)


//function to find weather the given number is prime or not
func isPrime(num:Int) ->Bool
{
    let n=abs(num)
    var count=0
    if n>1
    {
        for var i=2;i<n;i++
        {
            if n%i==0
            {
                count++
                break
            }
        }
    }
    if count == 1 || n == 0
    {
        return false
    }
    return true
}


assert(isPrime(7)==true)
assert(isPrime(10)==false)
assert(isPrime(0)==false)
assert(isPrime(-7)==true)
assert(isPrime(-9)==false)
