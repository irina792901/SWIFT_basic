/*1. Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать). Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал и стоимость).
*/
// enum Tea {
//   case black
//   case green
//   case fruit
// }

// let a: [Tea:Double] = [.black: 50, .green: 50, .fruit: 90]
// let typesOfTea: [Tea] = [.black, .green, .fruit]

// func generateListOfOrders(a: Int, b: [Tea]) -> [Tea]{
//   var result: [Tea] = []
//   var i: Int = 0
//   while i != a {
//     result.append(b[Int.random(in: 0...2)])
//     i+=1
//   }
//   return result
// }

// var people: [Tea] = generateListOfOrders(a: 20, b: typesOfTea)

// for (index, element) in people.enumerated() {
//   print(String(index+1), " ", element, " ", a[element]!) 
// }


/*2. Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.
*/

// let a: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]

// var b = a.filter{$0 != nil}
// var c = b.filter{$0 != 0}
// var d = c.filter{$0 != 4}
// var e = d.sorted{$0! < $1!}

// print(e)

/*3. Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.
*/
func getFibonacci(a: Int) -> [Int] {
  let index: Int = 1
  var result: [Int] = Array(repeating: index, count: a)
  for index in 1..<a {
    result[index] = result[index-1] * 2
  }
  return result
}
print(getFibonacci(a:10))
