
/*
1. Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).
2. Создать структуру пиццы, она должна содержать стоимость , вид пиццы, толстое или тонкое тесто и добавки(напирмер, дополнительно добавить пепперони, помидоры, сыр). Вид пиццыы должен быть вложенным типом для структуры пиццы. Подстказка: добавки лучше также сделать перечислением. 
3. Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализатооре.
4. Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
5. Создать экземпляр класса пиццерии и добавить в него несколько пицц.
*/

struct Pizza {
  let pizzaType: PizzaType
  var size: Size 
  var cost: Double
  var isThinDough: Bool = true // по умолчанию тесто тонкое
  var pizzaAdditives: PizzaAdditives
}
enum PizzaType: String { 
  case carbonara = "Карбонара"
  case guatroFormaggi = "Четыре сыра"
  case pepperoni = "Пепперони"
  case margarita = "Маргарита"
  case caprichoza = "Капричоза"
}
enum Size{
  case s
  case m
  case l

  init (Size: String) (
    switch size {
      case "small": self = .s
      case "medium": self = .m
      case "large": self = .l
      default: self = .m
    }
  )
}
enum PizzaAdditives: String {
  case pepperoni = "острая салями"
  case cheese = "сыр"
  case tomatoes = "помдиоры"
}
}

class Pizzeria {
  private var pizzas: [Pizza]

  init (pizzas: [Pizza]) {
    self.pizzas = pizzas
  }

  func getPizza( () -> [Pizza] {
    return pizzeria.pizzas
  }
  
  func addPizza(pizza: Pizza) -> Void 
    pizzas.append(pizza: Pizza)
}

let pizzeria1: Pizzeria = []
  pizzeria1.addPizza(pepperoni, 450)
                
print(pizzeria1.getPizza())

  
