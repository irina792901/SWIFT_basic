/*
1. Написать функцию, которая на вход принимет число : сумма, которую пользователь хочет положить на клад, следующий аргумент - это годовой процент, третий аргумент - это срок. Функциф возвращает сколько денег получит пользователь по итогу.
*/

// func depositCount(money: Double, percent: Double, depositTermInYears: Int) -> Double {
//   var count: Double = money
//   var i = 0
//   while i != depositTermInYears{
//     count = count + count*percent/100
//     i+=1
//   }
//   count = count * 100
//   return count.rounded()/100
// }
// print(depositCount(money:100, percent:20, depositTermInYears:2))
/*

2. Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы
*/

enum Pizza: String {
  case carbonara = "Карбонара"
  case fattoria = "Фермерская"
  case quatroFormaggi = "Четыре сыра"
}
var pizzaCarbonara: Pizza = .carbonara
var pizzaFattoria: Pizza = .fattoria
var pizzaQuatroFormaggi: Pizza = .quatroFormaggi

/*
3. Добавить возможность получения названия пиццы через rawValue.
*/
func getPizzaName(pizzaName: Pizza)  -> String {
  return pizzaName.rawValue
}
print(getPizzaName(pizzaName: pizzaCarbonara))
