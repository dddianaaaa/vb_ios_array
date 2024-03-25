import Foundation

//Сортировка замыканием в обе стороны
let numbers = [4,3,12,7,6,3,56,7,8,9,10]
var filteredArr : [Int] = numbers.sorted(by: { (s1: Int, s2: Int) -> Bool in 
    return s1 > s2
})
print(filteredArr)

var filteredArr2 : [Int] = numbers.sorted(by: { (s1: Int, s2: Int) -> Bool in 
    return s1 < s2
})
print(filteredArr2)


//не работает то что ниже не понял почему
// func filterNames(_ names: [String]) -> [String]{
//     var t = ""
//     var filtered = names
//     for i in 0..<filtered.count-1 {
//         for j in 0..<filtered.count-i-1  {
//            if(filtered[j]<filtered[j+1]){
//                t = filtered[j]
//                filtered[j] = filtered[j+1]
//                filtered[j+1] = t
//            }
//         }
//     }
//     return filtered
// }

//Сортировка массива по кол-ву букв в имени
var names = ["Alex","Diana","Vasya","Brian"]

 let reversedName = names.sorted(by: {$0.count > $1.count})
 print(reversedName)

//Создание словаря
var dict : [Int:String] = [4:"Alex",5:"Diana",6:"Vasyaa",8:"Brianaaa"]


//Функция которая принимает ключ и выводит ключ и значение
func outputNames(_ key1: Int){
    for (key,value) in dict{
        if(key == key1){
            print("Ключ: \(key) ,Значение: \(dict[key])")
        }
    }
}
outputNames(5) //Сюда нужно ввести ключ


//Создание 2 пустых массивов
var numbersEmpty : [Int] = []
var stringsEmpty : [String] = []

//фунция если массивы пустые то происходит добавление 
func isEmpty(_ nums:[Int], _ strs:[String]){
    if(strs.isEmpty){
         stringsEmpty.append("Hello")
    }
    if(nums.isEmpty){
        numbersEmpty.append(1)
    }
}
isEmpty(numbersEmpty,stringsEmpty)
print(numbersEmpty,stringsEmpty)
