
/*
1. В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри, в которо йбедт стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная,в которую можно  было бы класть и пиццу, и картошку фри. 
2. Добавьте в класс пиццерии функцию, котора ябудет добавлять новую позицию в меню.
3. Создайте протокол, в октором будут содержаться функции открытия и закрытия
4. Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
5. Написать функцию, в которой происходит выитание одного числа из другого. Функция должна рабоатть и с Int, и с Double. Функция должна возвращать результат вычитания.
*/
 
struct Pizza {
  let pizzaType: PizzaType
  var size: Size 
  var cost: Double
  var isThinDough: Bool = true // по умолчанию тесто тонкое
  var pizzaAdditives: PizzaAdditives

  enum PizzaType: String { 
    case carbonara = "Карбонара"
    case guatroFormaggi = "Четыре сыра"
    case pepperoni = "Пепперони"
    case margarita = "Маргарита"
    case caprichoza = "Капричоза"
    }

  enum Size {
    case s
    case m
    case l
    
    init (size: String) {
      switch size {
        case "small": self = .s
        case "medium": self = .m
        case "large": self = .l
        default: self = .m
        }
      }
    }
  
  enum PizzaAdditives: String {
    case pepperoni = "острая салями"
    case cheese = "сыр"
    case tomatoes = "помидоры"
    }
  }

struct FrenchFries {
  enum Size {
    case s
    case m
    case l
  }
  var size: Size
  var cost: Double  
}

protocol OpenCloseProtocol {
  func open()
  func close()
}

extension Pizzeria: OpenCloseProtocol {
   func open() {
    print("Открыто")
  }

  func close() {
    print("Закрыто")
  }
}

class Pizzeria<T> {
  private var menu: [T] = []
  
  init (menu: [T]) {
    self.menu = menu
  }

  func printMenu () {
    print ( menu )
  }
  
  func addMenu(food: T) {
    menu.append(food)
    }
}




let pizzeria1: Pizzeria = Pizzeria(menu: [])

pizzeria1.addMenu(food: Pizza(pizzaType: .caprichoza, size: .s, cost: 100, pizzaAdditives: .cheese))

pizzeria1.addMenu(food: FrenchFries(size: .m, cost: 60))

pizzeria1.printMenu()
pizzeria1.open() // пример работы расширения по протоколу

func minus<T: Numeric> (a: T, b: T) -> T {
  a - b
}
print(minus(a: 4, b: 2))
print(minus(a: 3.8, b: 1))
