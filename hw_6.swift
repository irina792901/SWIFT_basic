
/*
1. В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри, в которо йбедт стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная,в которую можно  было бы класть и пиццу, и картошку фри. 
2. Добавьте в класс пиццерии функцию, котора ябудет добавлять новую позицию в меню.
3. Создайте протокол, в октором будут содержаться функции открытия и закрытия
4. Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
5. Написать функцию, в которой происходит выитание одного числа из другого. Функция должна рабоатть и с Int, и с Double. Функция должна возвращать результат вычитания.
*/
 
struct Pizza: MenuProtocol{
  let pizzaType: PizzaType
  var size: Size 
  var cost: Double
  var name: String {pizzaType.rawValue}
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

struct FrenchFries: MenuProtocol {
  enum Size {
    case s
    case m
    case l
  }
  var size: Size
  var cost: Double  
  var name: String = "Картошка фри"
}

protocol OpenCloseProtocol {
  func open()
  func close()
}

protocol MenuProtocol {
  var cost: Double { get }
  var name: String { get }
}

extension Pizzeria: OpenCloseProtocol {
   func open() {
    print("Открыто")
  }

  func close() {
    print("Закрыто")
  }
}

struct Employee {
  enum Post {
    case casher
    case cook
  }
  var name: String
  var salary: Double
  var post: Post
}

class Table { 
  var countOfSeats: Int = 2
  var cafe: Cafe?

  init(_ countOfSeats: Int, _ cafe: Cafe) {
    self.countOfSeats = countOfSeats
    self.cafe = cafe 
  }

  func isSuitableForGuests(countOfGuests: Int) -> Bool {
    countOfSeats >= countOfGuests    
  }
}

class Cafe {
  var name: String
  var menu: [MenuProtocol]

  init(name: String, menu: [MenuProtocol]) {
    self.name = name
    self.menu = menu
  }
}

class Pizzeria {
  private var menu: [MenuProtocol]
  var staff: [Employee]
  var tables: [Table]

  init (menu: [MenuProtocol], staff: [Employee]) {
    self.menu = menu
    self.staff = staff
    tables = [Table(2, Cafe(name: "first", menu: [])), Table(4, Cafe(name: "second", menu: [])), Table(6, Cafe(name: "first", menu: []))]
  }

  func getAllMenu()-> [String: [MenuProtocol]] {
    var pizzas: [Pizza] = []
    var frenchFries: [FrenchFries] = []
    for element in menu {
      if let element = element as? Pizza {
        pizzas.append(element)
      } else if let element = element as? FrenchFries {
        frenchFries.append(element)
      }
    }
    return ["Пиццы": pizzas, "Картошка фри": frenchFries]
  }
  
  func add(_ new: MenuProtocol) {
    menu.append(new)
  }
}

let pizzeria1: Pizzeria = Pizzeria(menu: [], staff: [])

pizzeria1.add(Pizza(pizzaType: .caprichoza, size: .s, cost: 100, pizzaAdditives: .cheese))

pizzeria1.add(FrenchFries(size: .m, cost: 60))
print(pizzeria1.getAllMenu())
