import UIKit

var array = [1, 2, 3, 4, 5, 6]
var maxValue = 0, temp = 0, maxIndex = 0
for(index, item) in array.enumerated(){
    if (item > temp){
        maxIndex = index
    }
}

array.remove(at: maxIndex)
for(_, item) in array.enumerated(){
    if (item > maxValue){
        maxValue = item
    }
}

print("=============")
print(maxValue)
print("=============")
