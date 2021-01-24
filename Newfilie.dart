import "dart:io";

class Data_credit {
  // The name, password and the amount of money that each account have

  List<String> names = [];
  List<String> emails = [];
  List passwords = [];
  List amountmoney = [];

  // The password for credit card that the function generate the password and add it to this database
  List credit_password = [];



}
// The main credit card class
class Credit_card extends Data_credit{



  String _name;
  int _age;
  dynamic _phone_number; // Phone number
  String _country;

  Credit_card(String name, int age, dynamic phone_number, String country, [String email, dynamic password]) {
    this._name = name;
    this._age = age;
    this._phone_number = phone_number;
    this._country = country;




    void login() {
      if (email != null && password != null) {

      }
      else {
        // If they didn't input anything in the constructor we have to ask them to generate the another password for using the credit card

        stdout.writeln("Enter your email :");

        String email = stdin.readLineSync();
        stdout.writeln("Enter your password :");
        dynamic password = stdin.readLineSync();

        // To check the data that was input and the data that was in the database

        for (var index=0; index<super.emails.length; ++index) {

          if (email == super.emails[index] && password == super.passwords[index]) {
            print("[Login finished]");

          }
        }






      }



    }


  }


}


// The main debit card class
class Debit_card {

}

// The country that each ecomerce company can ship to and it's a map {Countryname:The percent of the tax that the user have to pay}

Map country = {
  "Thailand":0.07,
  "England": 0.2,
  "America": 0.1,
  "France": 0.2,
  "Brazil":0.17,
  "Spain":0.21,
  "Germany": 0.19
};



// The main calculation of the tax of the object that you want

void main_tax(Map object, dynamic price) {
  const int line = 5000;
  // The main object that can sell in thailand
  List<String> type_object = [
    "Computer",
    "Medicine",
    "Electrical machine",
    "House work",
    "Books",
    "school"
  ];


}

// We'll have the main ecomerse company represent as a class, and the class below will be the child class
class Data_amazon {
  // The money that amazon own
  dynamic money_amazon = 0;

  // The data that is include that data of the user that login to the amazon account

  List<String> names = ["Pudis"];

  List emails = ["pudis.2550@gmail.com"];
  List passwords = ["kongpudis"];
  List amountmoney = [];
  List credit_password = [];

  // The country that amazon can ship to, and the percent of tax that the user have to pay

  Map name_country = {
    "Thailand":0.07,
    "England": 0.2,
    "America": 0.1,
    "France": 0.2,
    "Brazil":0.17,
    "Spain":0.21,
    "Germany": 0.19
  };

  // The percent of the price of an object that the user have to pay for shipping
  final dynamic ship_price = 13 / 100;

  // Map variable that will contain all of the object in the amazon database
  Map object = {
    // Category: All of the object that was sold in amazon
    "Computer": ["Notebook", "Mouse", "Monitor", "Macbook", "Mac mini", "Imac"],
    "House tool": ["Color", "Painting", "Table", "Sofa"],
    "Books and Cartoon": ["Python tutorial", "Python crash course", "Flutter book", "Java book", "C++ book", "C crash course"],
    "Electronic":["Refridgerator", "Microwave", "Blutooth"],
    "Music":["Keyboard", "Guitar"]

  };



}

class Amazon extends Data_amazon {

  String _country;

  Amazon(String country) {

    this._country = country;

  }
  // The function below is the important function that will use to pay money, add money like that
  void sign_up(String name, var password) {
    for (var j = 0; j < names.length; ++j) {
      bool condition = name == names[j] && password == passwords[j];

      switch (condition) {
        case true:
          {
            print("Login finished");
            break;
          }
          break;
        case false:
          {
            names.add(name);
            passwords.add(password);
            amountmoney.add(0);

            print("[Process finished]");

            break;
          }
      }
    }
  } // The sign up function

  void login(String name, var password) {
    for (var ind = 0; ind < names.length; ++ind) {
      if (name == names[ind] && password == passwords[ind]) {
        print("Login finished");
        break;
      } else {
        sign_up(name, password);
        break;
      }
    }
  } // The login function

  void add_money(String name, dynamic money, [var password]) {
    for (var index = 0; index < names.length; ++index) {
      if (password == null) {
        if (name == names[index]) {
          amountmoney[index] += money;
          print("[Process finished]");
          break;
        }
      } else if (password != null) {
        if (name == names[index] && password == passwords[index]) {
          amountmoney[index] += money;
          break;
        } else {
          sign_up(name, password);
          break;
        }
      } // To check that
    }
  }// The add money function


  void buy(String object, dynamic price, String country) {
    final dynamic money_tax = 7 / 100;
    const dynamic line_money = 5000;
    for (var k in name_country.keys) {
      bool condition = country == k;
      switch (condition) {

        case true: {
          switch (price < line_money) {
            case true: {

            }
            break;
            case false: {
              dynamic newprice = price + (price * money_tax);


            }
          }


        }


      }


    }



  } // This function is to subtract the money that was in the account and calculate the tax that have to pay

  // The main function that will communicate with the users
  void communicate() {
    stdout.writeln(
        """What service that you want to use
          1. Add money
          2. buy
          3. Login
          4. Sign up or Register"""
    );

    String service = stdin.readLineSync();

    if (service == "Add money" || service == "add money") {
      stdout.writeln("Enter your name :");
      String name = stdin.readLineSync();
      stdout.writeln("Enter your password :");
      var password = stdin.readLineSync();
      stdout.writeln("Enter the amount of money that you want to add to your account");
      dynamic money = int.parse(stdin.readLineSync()).toDouble();

      add_money(name, money, password);

    }
    else if (service == "buy") {

      // To output all of the object that was all of the category
      for (var k in super.object.keys) {
        print("Category: $k");
        for (var d in super.object[k]) {

          print("Object: $d");
        }
      }

      stdout.writeln("What object the you want to buy :");

      String want_object = stdin.readLineSync();

      // To let the user pick the item and check the data that was input
      for (var k in super.object.keys) {
        for (var d in super.object[k]) {
          if (want_object == d) {
            stdout.writeln("Enter the price of the object");

            dynamic price = int.parse(stdin.readLineSync()).toDouble();

            // The other price that have to add to the original price
            dynamic tax_price = price * country[_country];
            dynamic shipping_price = price * ship_price;

            // To add the tax price and the shipping price to the total price

            dynamic total_price = price + tax_price + shipping_price;

            stdout.writeln("You have to pay $total_price");

            stdout.writeln("""
            You have 4/ options to pay the payment
            1. Banking
            2. Credit card or Debit card
            3. Real money
            4. Amazon account
            
            Choose these option""");

            String way_pay = stdin.readLineSync();

            // To check that what way that the user wanted to pay
            if (way_pay == "Banking") {
              // Wait for me to make a Bank class

            }
            else if (way_pay == "Amazon account") {
              // To ask the name and password to find in the Amazon account system and subtract the money that was in that account

              stdout.writeln("Enter your name :");
              String newname = stdin.readLineSync();
              stdout.writeln("Enter your password :");
              dynamic newpassword = stdin.readLineSync();

              // To go through all of the data in the amazon account system
              for (var index = 0; index < super.names.length; ++index) {
                if (newname == super.names[index] &&
                    newpassword == super.passwords[index]) {
                  switch (super.amountmoney[index] > total_price) {
                    case true:
                      {
                        final dynamic final_money = amountmoney[index] -
                            total_price;
                        amountmoney.remove(amountmoney[index]);
                        amountmoney.insert(index, final_money);

                        print("[Process finished]");

                        break;
                      }
                      break;
                    case false:
                      {
                        throw ("The amount of money in your account is not enough for buying this product");
                      }
                  }
                }
                else if (newname != super.names[index] ||
                    newpassword != super.passwords[index]) {
                  do {
                    // To ask the name and password again
                    stdout.writeln("Enter your name :");
                    String nname = stdin.readLineSync();
                    stdout.writeln("Enter your password :");
                    dynamic npassword = stdin.readLineSync();

                    if (nname == super.names[index] &&
                        npassword == super.passwords[index]) {
                      switch (super.amountmoney[index] > total_price) {
                        case true:
                          {
                            final dynamic final_money = amountmoney[index] -
                                total_price;
                            amountmoney.remove(amountmoney[index]);
                            amountmoney.insert(index, final_money);

                            print("Process finished");
                            break;
                          }
                          break;
                        case false:
                          {
                            throw ("The amount of money that was in your account is not enough to pay this product");
                          }
                      }
                    }
                  } while (newname != super.names[index] ||
                      newpassword != super.passwords[index]);
                }
              }
            }
            else if (way_pay == "Credit card" || way_pay == "Debit card") {
              final dynamic basic_password = 101011010;

              final dynamic user_password = super.emails.length * 2 + basic_password;


              // To get the email and the password from the user
              stdout.writeln("Enter your email :");
              String email = stdin.readLineSync();
              stdout.writeln("Enter your password :");
              dynamic password = stdin.readLineSync();
              // To check the data that was input and add the password that was generated

              for (var j=0; j<super.emails.length; ++j) {
                if (email == super.emails[j] && password == super.passwords[j]) {
                  credit_password.insert(j, user_password);
                  break;
                }
                else if (email != super.emails[j] || password != super.passwords[j]) {
                  int time = 0;
                  while ((email != super.emails[j] || password != super.passwords[j]) && time != 5) {
                    // To ask the user again
                    stdout.writeln("Enter your email again :");
                    String newemail = stdin.readLineSync();
                    stdout.writeln("Enter your password again :");
                    dynamic newpassword = stdin.readLineSync();

                    if (newemail == super.emails[j] && newpassword == super.passwords[j]) {
                      break;
                    }

                    time += 1;
                  }
                }

              }
            }
            else if (way_pay == "Real money") {
              // First we have to ask the user for the price and add the tax price and the shipping price to the original price

              stdout.writeln("How much that the object that you want cost :");

              dynamic price = int.parse(stdin.readLineSync()).toDouble();


              dynamic tax_price = price * (7 / 100);
              dynamic shipping_price = price * (20 / 100);

              dynamic total_price = price + tax_price + shipping_price;

              stdout.writeln("The total price is $total_price");


              stdout.writeln("Enter the amount of money that you have to pay :");

              double amount_money = int.parse(stdin.readLineSync()).toDouble();

              bool condition = amount_money == total_price;

              switch (condition) {
                case true: {
                  print("Vat: $tax_price");
                  print("Shipping price: $shipping_price");
                  print("Total price: $total_price");


                }

                break;
                case false: {
                  if (amount_money < total_price)  {
                    stdout.writeln("You have to pay ${total_price - amount_money} more");

                    double more_money = int.parse(stdin.readLineSync()).toDouble();

                    dynamic total = more_money + amount_money;
                    if (total == total_price) {
                      break;
                    }

                  }
                  else if (amount_money > total_price) {
                    print("Here's your return ${amount_money - total_price}");
                  }

                }
              }

            }



          }

        }
      }



    }
    else if (service == "Login") {
      // To ask the user to enter the data that will be used in the login function
      stdout.writeln("Enter your name :");
      String name = stdin.readLineSync();
      stdout.writeln("Enter your password :");
      var password = stdin.readLineSync();
      
      login(name, password);
      
      

    }
    else if (service == "Sign up" || service == "Register") {
      // To ask the data from the user to sign up to the system
      stdout.writeln("Enter your name :");
      String name = stdin.readLineSync();
      stdout.writeln("Enter your password :");
      var password = stdin.readLineSync();
      
      sign_up(name, password);
      

    }

  }

}

// The main data for Ebay
class Data_ebay {
  // The money that will effect the price like tax_price and shipping price
  final dynamic tax_price = 7 / 100;
  final dynamic shipping_price = 20 / 100;
  dynamic tax_money = 0; // This amount of money is use to pay the tax in each country
  // The account data for Ebay

  List<String> names = [];
  List emails = [];
  List passwords = [];
  List credit_password = [];
  
  

}
class Ebay extends Data_ebay{
  String _country;

  Ebay(String country) {
    this._country = country;
  }
  
  void login(String email, var password, [String name]) {
    for (var ind=0; ind<super.names.length; ++ind) {
      if (name == super.names[ind] && password == super.passwords[ind]) {
        print("Login finished");
        break;

      }
      else if (name != super.names[ind] || password != super.passwords[ind]) {
        while (name != super.names[ind] || password != super.passwords[ind]) {
          // To ask the data from the user untill the data is in the database
          stdout.writeln("Enter your name :");
          String newname = stdin.readLineSync();
          stdout.writeln("Enter your password :");
          var newpassword = stdin.readLineSync();

          if (newname == super.names[ind] && newpassword == super.passwords[ind]) {
            break;
          }
        }
      }
    }
  }



}


// The main data class for lazada
class Data_lazada {}
class Lazada extends Data_lazada{}


// The main data class for Shopee
class Data_shopee {}
class Shopee extends Data_shopee{}

// Practise some syntax


// The function below is the function for testing all of the classes in this file

void test_amazon() {
  var a = Amazon("Thailand");
  a.communicate();

}

void test_ebay() {

}

void test_lazada() {

}

void test_shoppee() {

}

void test_credit() {
  var cd = Credit_card("Pudis", 12, "818469063", "Thailand");



}

void test_debit() {
  
}




void main() {
 test_credit();

}
