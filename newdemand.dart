import "dart:io";

class Supply {
  // The variable below is the amount of supply of the basic need
  int water = 40;
  int energy = 80;
  int food = 700;
}

class Demand extends Supply {
  String _want_object;
  int _amount;
  Demand(want_object, amount) {
    this._want_object = want_object;
    this._amount = amount;
  }

  void check_demand() {
    Map demand = {
      "Water": super.water,
      "Energy": super.energy,
      "Food": super.food
    };

    List keys = [];
    for (var k in demand.keys) {
      keys.add(k);
    }

    // To check that the amount of the demand that citizen want that is less than the supply in the city
    for (var i = 0; i < keys.length; ++i) {
      if (keys[i] == _want_object) {
        if (_amount < demand[keys[i]]) {
          print("The demand of this mouth is less than the supply in the city");
          break;
        } else if (_amount > demand[keys[i]]) {
          print("The demand is more than the supply in the city");
          break;
        }
        break;
      }
    }
  }
}

// The function below is the function that will test two class above

void test_demand() {
  var d = Demand("Water", 50);
  d.check_demand();
}

void test_supply() {}

// The main function that will call the test function
void main() {
  test_demand();
}
