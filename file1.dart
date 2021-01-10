
import "dart:io";

// The main data class
class Data {
  // The data that already have in the system
  List<String> names = ["Pudis", "Nutthakit", "banglang", "chisanupong"];
  List passwords = ["kongpudis", "ihearfirst", "ihearbank", "paopao"];
  List amountmoney = [1000000000000, 8387373, 837373, 83737373];
  Map borrow_name = {"Chisanupong": [32900], "Pong mung tai": [68493]};

  // The map variable
  Map rent_name = {};
  Map credit_names = {};
}

// The main system class

class Bank extends Data{



  // The code below is the main function that is in the bank
  // The register function
  void register(String name, var password) {
    for (var ind = 0; ind != names.length; ++ind) {
      if (name != names[ind] && password != passwords[ind]) {
        names.add(name);
        passwords.add(password);
        print("[Sign up finished]");
        break;
      }
      else {
        // To called the login function
      }
    }
  }

  void check_account(String name, var password) {
    for (var j = 0; j != names.length; ++j) {
      if (name == names[j] && password == passwords[j]) {
        print("[Login finished]");
        break;
      }
      else {
        // To call the register function
        register(name, password);
      }
    } // To go through all of the data in the system


  }

  // The option function
  void add_money(String name, var password, int money) {
    for (var m = 0; m != names.length; ++m) {
      if (name == names[m] && password == passwords[m]) {
        if (money <= amountmoney[m]) {
          int nmoney = money + amountmoney[m];
          amountmoney.remove(amountmoney[m]);
          amountmoney.insert(m, nmoney);

          print("[Finished]");

          break;
        }


        else {
          stdout.writeln("Enter the amount of money again :");

          int nmoney = int.parse(stdin.readLineSync());

          if (nmoney <= amountmoney[m]) {
            add_money(name, password, nmoney);
            break;
          }
        }

        break;
      } // To check the name that was input is in the system
      else {
        register(name, password);
      }
      break;
    }
  }

  void get_money(String name, var password, int money) {
    for (var index = 0; index <= names.length; ++index) {
      if (name == names[index] && password == passwords[index]) {
        if (money <= amountmoney[index]) {
          int nmoney = amountmoney[index] - money;
          amountmoney.remove(amountmoney[index]);
          amountmoney.insert(index, nmoney);
          print("[Finished]");
          break;
        }
        else {
          stdout.writeln("Enter the amount of money again :");
          int nmoney = int.parse(stdin.readLineSync());

          get_money(name, password, nmoney);
        }
        break;
      } // To check the data that was input
      else {
        register(name, password);
        print("[Sign up finished]");
        break;
      }
    } // To go through all of the data in the system
  }

  void give_money(var password, String name_give, int money) {
    for (var ind = 0; ind != passwords.length; ++ind) {
      if (password == passwords[ind]) {
        int nnmoney = amountmoney[ind] - money;

        amountmoney.remove(amountmoney[ind]);
        amountmoney.insert(ind, nnmoney);


        break;
      }
      else {
        stdout.writeln("Enter the password again :");
        var npasswd = stdin.readLineSync();

        give_money(npasswd, name_give, money);
        break;
      }
    } // To go through all of the password and check the password of the current user

    for (int ind = 0; ind <= names.length; ++ind) {
      if (name_give == names[ind]) {
        int newmoney = amountmoney[ind] + money;
        amountmoney.remove(amountmoney[ind]);
        amountmoney.insert(ind, newmoney);

        print("[Finished]");

        break;
      }
    } // Go through all of the names to check the name that is given


  }

  // This is a function that will be called by another function

  void interest() {
    var percent = 8;

    var interest = 0.0;

    List number = [];

    for (var k in borrow_name.keys) {
      for (var d in borrow_name[k]) {
        number.add(d / percent);
      }
    }

    for (var ind = 0; ind < number.length; ++ind) {
      interest += number[ind];
    }

    // Next is to check that how many account that was in the system and add the money that was divided to all of the account in the system
    for (var index = 0; index < amountmoney.length; ++index) {
      int newmoney = amountmoney[index] + interest;
      amountmoney.remove(amountmoney[index]);
      amountmoney.insert(index, newmoney);
      print("[Process finished]");

      break;
    }
  }


  void option(String answer) {
    if (answer == "add money" || answer == "Add money") {
      // To call the function add money
      stdout.writeln("Enter the name of your account :");
      String name = stdin.readLineSync();

      stdout.writeln("Enter your password to your account :");

      var password = stdin.readLineSync();
      stdout.writeln("Enter the money that you want :");
      int money = int.parse(stdin.readLineSync());

      add_money(name, password, money);
    }
    else if (answer == "give money" || answer == "Give money") {
      // To call the function give money
      stdout.writeln("Enter your password :");
      var npasswd = stdin.readLineSync();
      stdout.writeln(
          "Enter the name of the account that you want to give the money :");
      String name_give = stdin.readLineSync();
      stdout.writeln("Enter the amount of money that you want to give :");
      int nmoney = int.parse(stdin.readLineSync());

      // To called the function

      give_money(npasswd, name_give, nmoney);
    }
    else if (answer == "add money" || answer == "Add money") {
      stdout.writeln("Enter the name of your account :");
      String name = stdin.readLineSync();
      stdout.writeln("Enter the password :");
      var passwd = stdin.readLineSync();
      stdout.writeln("Enter the money that you want to add :");
      var money = int.parse(stdin.readLineSync());


      if (money is! int) {
        while (money is! int) {
          stdout.writeln("Enter the money again :");
          int nmoney = int.parse(stdin.readLineSync());

          if (nmoney is int) {
            add_money(name, passwd, nmoney);
            break;
          }
        }
      }
      add_money(name, passwd, money);
    }
  }

  // The login function
  void login(String name, var password) {
    for (var i = 0; i != names.length; ++i) {
      if (name == names[i] && password == passwords[i]) {
        // To called the option function
        stdout.writeln("What service that you want to use :");

        String answer = stdin.readLineSync();
        option(answer);
        break;
      }
    }
  } // The login function

  // return_car function

  void return_car(String name, int hour) {
    final per_hour = 750;
    for (var k in borrow_name.keys) {
      if (name == k) {
        if (hour == borrow_name[k]) {
          print(borrow_name[k]);
          break;
        }
        else {
          int nhour = hour - borrow_name[k];
          print(nhour);
        }
      } // To check if the name that was input is the correct name that borrowed the car
      break;
    }
  }

  void rent(String name, String object, var price, int salary) {
    List<int> mouths = [6, 8, 10, 12, 16];
    List per_mouths = [];
    for (var n = 0; n < names.length; ++n) {
      if (name == names[n]) {
        stdout.writeln("How much mouth that you want to pay :");
        for (var m in mouths) {
          per_mouths.add(price / m);
          stdout.writeln("$m mouths for ${price / m}");
        }


        String answer = stdin.readLineSync();

        for (var m = 0; m < mouths.length; ++m) {
          String sentence = "${mouths[m]} mouths";
          if (answer == sentence) {
            dynamic per_mouth = price / mouths[m];
            rent_name[name] = [object, price];
            print("You have to pay $per_mouth per mouth");

            break;
          }
        }
        break;
      } // To check the account that was input is in the bank system
      else {
        rent_name[name] = [object, price];

        stdout.writeln("Enter the amount of mouths that you want to pay :");

        for (var m in mouths) {
          String sentence = "$m mouths for ${price / m}";
          print(sentence);
        }
        String answer = stdin.readLineSync();

        for (var m = 0; m < mouths.length; ++m) {
          String sentence = "${mouths[m]} mouths";

          if (answer == sentence) {
            dynamic per_mouth = mouths[m] / price;
            print("You have to pay $per_mouth per mouth");
            break;
          }
        }
      }
    }
  }

  // The borrow the car function
  void borrow_car(String name, int hour, [int money]) {
    int per_hour = 750;
    for (var ind = 0; ind < names.length; ++ind) {
      if (name == names[ind]) {
        print("[Login finished]");

        int all_money = per_hour * hour; // The money that the user have to pay
        int nmoney = amountmoney[ind] - all_money;


        amountmoney.remove(amountmoney[ind]);
        amountmoney.insert(ind, nmoney);
        borrow_name[name] = hour;

        print("Finished");
        break;
      }
      else {
        if (money == null) {
          stdout.writeln("Enter the money :");
          int nmoney = int.parse(stdin.readLineSync());
          print("Finished");

          borrow_car(name, hour, nmoney);

          break;
        } // To check the variable money that is null or not

        int all_money = per_hour * hour;

        bool condition = all_money < money;

        // Checking the money by using the boolean variable and the switch case
        switch (condition) {
          case true:
            {
              stdout.writeln("Please enter the money again :");
              int nmoney = int.parse(stdin.readLineSync());

              borrow_name[name] = hour;

              borrow_car(name, hour, nmoney);
            }
            break;
          case false:
            {
              int newmoney = money - all_money;
              borrow_name[name] = hour;

              print("Return : $newmoney");
            }
        }
      }
    }
  }

  // The pay the bill function
  void pay_bill(ave_use_light, ave_use_water, day) {
    // The variable that will be used in this processed


    // Get the total for electricity
    dynamic moneys_pay = (ave_use_light * day) + (ave_use_water * day);

    stdout.writeln(
        "The total that you have to pay is $moneys_pay, what way would you pay :");
    String answer = stdin.readLineSync();

    if (answer == "Pay money" || answer == "pay money") {
      stdout.writeln("Please pay your bill please :");
      dynamic pay_money = stdin.readByteSync().toDouble();

      if (pay_money < moneys_pay) {
        var newmoney = 0.0;
        while (pay_money < moneys_pay) {
          stdout.writeln("Please enter the money again please :");

          dynamic nmoney = stdin.readByteSync();
          newmoney += nmoney;
          continue;
        }

        if (newmoney > moneys_pay) {
          var nnewmoney = newmoney - moneys_pay;
          print("Here's your return $nnewmoney");
        }
      }
      else if (pay_money > moneys_pay) {
        var nnmoney = pay_money - moneys_pay;

        print("Here's your return $nnmoney");
      }
      else if (pay_money == moneys_pay) {
        print("[Finsished]");
      }
    }
    else if (answer == "Have a account" || answer == "have a account") {
      String name = stdin.readLineSync();
      for (var j = 0; j < names.length; ++j) {
        if (name == names[j]) {
          if (moneys_pay < amountmoney[j]) {
            dynamic newmoney = amountmoney[j] - moneys_pay;
            amountmoney.remove(amountmoney[j]);
            amountmoney.insert(j, newmoney);

            print("[Process finished]");

            break;
          }
          else {
            dynamic moneys = 0.0;
            while (moneys_pay > amountmoney[j]) {
              stdout.writeln(
                  "You have to add the money to your account first and this is the money that you have to add ${moneys_pay -
                      amountmoney[j]}");
              dynamic newmoney = int.parse(stdin.readLineSync()).toDouble();

              if (moneys_pay < amountmoney[j]) {
                moneys += newmoney;
                break;
              }
            }

            // First we have to add the money to the account
            int moremoney = amountmoney[j] + moneys;

            amountmoney.remove(amountmoney[j]);
            amountmoney.insert(j, moremoney);

            // Second is to get the different of the money that was in the account and the money that the user have to pay
            int different = amountmoney[j] - moneys_pay;
            amountmoney.remove(amountmoney[j]);
            amountmoney.insert(j, different);

            break;
          }
          break;
        }
        else {
          stdout.writeln("Enter your password :");
          String newpassword = stdin.readLineSync();

          // To call the function register
          register(name, newpassword);
          break;
        }
      }
    }
  } // This function is to get the total money that you have to pay for the electricity and the water
  // The Login to the credit card and use it function

  void login_card() {
    Map type_card = {
      "bronze": [12000, 45000],
      "silver": [28000, 60000],
      "gold": [45700, 100000],
      "diamond": [120000, 500000]
    };

    for (var k in type_card.keys) {
      print("Type card: ${k}");

    } // To output the option the type of the card

    stdout.writeln("What type of card that you want :");

    String answer = stdin.readLineSync();
    // Next line of code is to check the type of card that the user want

    for (var ks in type_card.keys) {
      if (answer == ks) {
        stdout.writeln("What way that you want to pay :");

        String way_pay = stdin.readLineSync();

        if (way_pay == "Pay money" || way_pay == "pay money") {
          print("You have to pay ${type_card[ks][0]}");

          int pay_money = int.parse(stdin.readLineSync());

          if (pay_money == type_card[ks][0]) {
            print("Finished");
            break;
          }
          else if (pay_money > type_card[ks][0]) {
            print("Here's your return ${pay_money - type_card[ks][0]}");
            break;
          }
          else if (pay_money < type_card[ks][0]) {
            print("You have to pay ${type_card[ks][0] - pay_money} more");

            stdout.writeln("Please pay more money :");

            int more_money = int.parse(stdin.readLineSync());

            if ((pay_money + more_money) == type_card[ks][0]) {
              break;
            }
            login_card();
          }
        }
        else if (way_pay == "account" || way_pay == "Account") {

          // To get the useful thing for entering the account of the user
          stdout.writeln("Please enter the name of the account :");
          String name = stdin.readLineSync();
          stdout.writeln("Please enter the password of your account :");
          var password = stdin.readLineSync();

          for (var j=0; j<super.names.length; ++j) {
            if (name == super.names[j] && password == super.passwords[j]) {
              if (type_card[ks][0] < amountmoney[j]) {
                int newmoney = amountmoney[j] - type_card[ks][0];
                amountmoney.remove(amountmoney[j]);
                amountmoney.insert(j, newmoney);

                print("Process finished");
                break;

              }
              else {
                throw ("The money that was in your account is not enough");
              }
            }
            else {
              throw ("There was no name ${super.names[j]} and password ${super.passwords[j]} in the the bank account system");
              break;
            }
          }
        }
      }
    }
  } // This function can be used when the user wants to pay something but they don't have any money so they can use the credit_card on the ATM

  void Life_insurance() {
    Map performance = {"bronze":[80000, 12000], "silver":[200000, 20000], "gold":[600000, 40000], 'diamond':[10000000, 60000]};// This variable will have 4 main key is bronze, sliver, gold and diamon and the services will be in the list in the Map variable

    List keys = [];
    for (var k in performance.keys) {
      print("Type : $k ; Price : ${performance[k][1]}");
      keys.add(k);
    }

    stdout.writeln("What type of life insurance that you want :");

    String newanswer = stdin.readLineSync();

    for (var j=0; j<keys.length; ++j) {
      if (newanswer == keys[j]) {

        stdout.writeln("What way that you want to pay with the insurance :");

        String pay_way = stdin.readLineSync();

        if (pay_way == "pay money" || pay_way == "Pay money") {
          stdout.writeln("Please enter the money that you have to pay :");

          int pay_money = int.parse(stdin.readLineSync());

          if (pay_money == performance[keys[j]][1]) {
            print("Process finished");
            break;
          }
          else if (pay_money > performance[keys[j]][1]) {
            
          }
        }
        else if (pay_way == "bank account" || pay_way == "Bank account") {

        }
        else if (pay_way == "credit card" || pay_way == "Credit card") {
          // This function is not really finished you have to wait me to finished it
        }




        break;
      }

    }





  }

}

void main() {
  var b = Bank();

  b.Life_insurance();


}


