//function to concatenating given set of arrays
func concat(arrays:[Int]...)->[Int]{
    var concatedArray=[Int]()
    for singleArr in arrays{
     concatedArray += singleArr
    }
 return concatedArray
}

assert(concat([1,1,2,3],[5,6,7,8])==[1,1,2,3,5,6,7,8])
assert(concat([1,1,2,3],[])==[1,1,2,3])
assert(concat([],[5,6,7,8])==[5,6,7,8])
assert(concat([],[])==[])


//function to finding largest number in an array
func maxElement(arr:[Int])->Int{
    var max=arr[0]
    for element in arr{
        if(max<element){
            max=element
        }
    }
    return max
}

assert(maxElement([54,2,3,6,9,7,85,46,2,1]) == 85)
assert(maxElement([-7,-1,-8]) == -1)


//function to remove all occurences of a number
func removeAllOccurences(arr:[Int],_ num:Int)->[Int]{
    var arr1=[Int]()
    for n in arr {
        if n != num {
            arr1.append(n)
        }
    }
    return arr1
}

assert(removeAllOccurences([1,5,4,2,3,61,1],1)==[5,4,2,3,61])
assert(removeAllOccurences([9,1,5,4,45,6,76,9,9,9,7,9,8,9,9,],9)==[1,5,4,45,6,76,7,8])
assert(removeAllOccurences([],1)==[])



//function to find reverse of a given array
func reverseArray(var arr:[Int])->[Int]{
    let n=arr.count
    for var i=0; i<n/2; i++ {
        let temp=arr[i]
        arr[i]=arr[n-i-1]
        arr[n-i-1]=temp
    }
    return arr
}

assert(reverseArray([1,2,3,56,43,12])==[12,43,56,3,2,1])
assert(reverseArray([])==[])
assert(reverseArray([1])==[1])



/* function to find the square's of all the elements in the given array  */
func squareAll(var arr:[Int])->[Int]{
    var index=0
    for element in arr{
        arr[index] = element*element
        index++
    }
    return arr
}

assert(squareAll([4,5,3,7,8])==[16,25,9,49,64])
assert(squareAll([-4,-5,-3,-7,-8])==[16,25,9,49,64])

