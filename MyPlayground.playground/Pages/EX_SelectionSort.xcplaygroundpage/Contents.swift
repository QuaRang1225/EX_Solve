
var myArr = [5,9,1,7,8,2,4,3,10,6]

func selectionSort(_ arr:inout Array<Int>)->[Int]{

    guard arr.count > 1 else{   //배열이 1개거나 없으면 이미 정렬상태
        return arr
    }
    for i in 0..<arr.count{
        var min = i
        for j in (i+1)..<arr.count{
            if arr[min] > arr[j]{
                min = j
            }
        }
        arr.swapAt(i,min)
    }
    return arr
}
print(selectionSort(&myArr))
