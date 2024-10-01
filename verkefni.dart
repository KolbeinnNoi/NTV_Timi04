import 'dart:io';
import 'dart:math';
// Try writing code using a while loop which coutns down to one, 
// and then prints "Happy New Year". Use a while loop
void main () {
  // whileLoop();
  // whileLoopAgain();
  // favoriteSodaFor();
  // favoriteSodaForin();
  // loopPizza();
  // forLoopNTV();
  // loopPizzaAgain();
  // loopPizzaAgain2();
  // loopPizzaAgain3();
  // bossChallenge1();
  // bossChallenge2();
  // bossChallenge3();
  bossChallenge4();
  
}

void whileLoop() {

  int number = 10;
  while(number >= 0) {
    print(number);
    number--;
  }
  print("Happy new year!");

}


// Another challenge!
// Write a program that prints to the user:
// "Tell me a statement to repeat back to you. Enter 'quit' to end the program"
// If the user types in anything except 'quit' -print out to the 
//screen what he entered and then repeat the process. If he types in 'quit' -the program ends.
void whileLoopAgain() {

String? input;
while ((input = stdin.readLineSync()) != "quit") {
  print("you typed in $input");
}
print("Loop exited, goodbye!");
}


void favoriteSodaFor () {
  
  List soda = ["pepsi", "sprite", "Fanta", "Coke"];
  for (String can in soda) {
    print("This is my favorite soda: " + soda[0]);
    break;
  }
}

void favoriteSodaForin () {
  List soda = ["Pepsi", "Sprite", "Fanta", "Coke"];

  for (int i = 0; i < 1 ; i++) {
    print("This is my favorite soda: ${soda[3]}");
  }
}


// 1. Write a loop that prompts the user to enter a series of pizza toppings until they enter a 
// "quit" value. As they enter each topping, print a message saying you'll add that topping for their pizza.
void loopPizza () {
  String? pizzaTopping;
  print("Which toppings would you like ?");
  while ((pizzaTopping = stdin.readLineSync()) != "quit") {
    print("We'll add $pizzaTopping to your pizza");
  }
  print("Your topping have been added");
}
// 2. Use a for loop to print out each letter in the word "NTV"
void forLoopNTV () {
  String? ntv = "NTV";
  for (int i = 0; i < ntv.length; i++) {
    print(ntv[i]);
  }
}
// 3. You are given a list of pizzas: ["Pepperoni", "Hawaiian", "Cheese", "Margherita"]
// (a) Use a for loop to print out each name of the pizza
    void loopPizzaAgain () {

      List pizzas = ["Pepperoni", "Hawaiian", "Cheese", "Margherita"];

      for(int i = 0; i < pizzas.length; i++) {
        print(pizzas[i]);

      }


    }
// (b) Modify your program to print a statement about each pizza e.g. "I love eating Hawaiian pizza"
     void loopPizzaAgain2 () {

      List pizzas = ["Pepperoni", "Hawaiian", "Cheese", "Margherita"];

      for(int i = 0; i < pizzas.length; i++) {
        print("I love eating ${pizzas[i]} pizza");

      }


    }
// (c) add a line at teh end of your program stating that "All pizza is great".

    void loopPizzaAgain3 () {

      List pizzas = ["Pepperoni", "Hawaiian", "Cheese", "Margherita"];

      for(int i = 0; i < pizzas.length; i++) {
        print("I love eating ${pizzas[i]} pizza");

      }

      print("All pizza is great.");


    }


    // Boss Challenge!
    //1.  Ask the user to enter a target value for their total daily calorie intake. For example
    // 2500 calories. Store this value in an appropriately named variable.

    void bossChallenge1 () {
      print("Enter your daily calorie intake limit!");
      String? maxCalInput = stdin.readLineSync();
      int? maxCalorieIntake = maxCalInput != null ? int.tryParse(maxCalInput) : null;
      

    }

    // 2. Create a variable to keep track of all the calories the user has already eaten.
    // This should start with the value 0.

     void bossChallenge2 () {
      print("Enter your daily calorie intake limit!");
      String? maxCalInput = stdin.readLineSync();
      int? maxCalorieIntake = maxCalInput != null ? int.tryParse(maxCalInput) : null;
      
      int? caloriesEaten;
 
    }

    // 3. Ask the user to enter the name of the snack they want to eat and then ask the
    // user for the calorie value for the snack they just entered. 

       void bossChallenge3 () {
      print("Enter your daily calorie intake limit!");
      String? maxCalInput = stdin.readLineSync();
      int? maxCalorieIntake = maxCalInput != null ? int.tryParse(maxCalInput) : null;
      
      int? caloriesEaten;

      print("Enter the name of the snack you want to eat!");
      String? nextSnackInput = stdin.readLineSync();
      int? nextSnack = nextSnackInput != null ? int.tryParse(nextSnackInput) : null;

      print("How many calories are in $nextSnack?");
      String? calValueNextSnackInput = stdin.readLineSync();
      int? calValueNextSnack = calValueNextSnackInput != null ? int.tryParse(calValueNextSnackInput) : null;

 
    }

    // 4. If the calorie value of the snack is such that eating it will leave the user under their
    // daily calorie target the program must tell them they are welcome to eat it and tell them how many
    //  calories they can still eat after this.
    // 5. If the calorie value of the snack is such taht eating it will exactly meet the daily calorie target
    // the program must tell them they are welcome to eat it and tell them that this should be their last 
    // snack for the day

        void bossChallenge4 () {
      print("Enter your daily calorie intake limit!");
      String? maxCalInput = stdin.readLineSync();
      int? maxCalorieIntake = maxCalInput != null ? int.tryParse(maxCalInput) : null;
      print("Your daily calorie limit is $maxCalorieIntake");
      
      
      int caloriesEaten = 0;
      
    

      while (true) {
      int? caloriesLeft = (maxCalorieIntake ?? 0) - (caloriesEaten ?? 0);

      // if(caloriesLeft <= 0) {
      //   print("You have reached your calorie limit for the day! your maximum for the day was $maxCalorieIntake and you have eaten $caloriesEaten");
      //   break;
      // }
      print("Enter the name of the snack you want to eat!");
      String? nextSnack = stdin.readLineSync();
      

      print("How many calories are in $nextSnack?");
      String? calValueNextSnackInput = stdin.readLineSync();
      int? calValueNextSnack = calValueNextSnackInput != null ? int.tryParse(calValueNextSnackInput) : null;

      if (calValueNextSnack == null || calValueNextSnack <=0) {
        print("Invalid calorie input, try again.");
        continue;
      } else {
        print("$nextSnack is $calValueNextSnack calories");
        caloriesEaten += calValueNextSnack;
      }

      // recalculate how many calories are left after eating this snack
      caloriesLeft = (maxCalorieIntake ?? 0) - caloriesEaten;
      print("You have eaten $caloriesEaten out of $maxCalorieIntake. You have $caloriesLeft calories left for they day.");
      
      if (maxCalorieIntake! > caloriesEaten) {
      print("Do you want to add another snack? (yes/no)");
      String? continueInput = stdin.readLineSync();
      // we put it to lowercase to make sure no matter how he types yes this works
      if(continueInput?.toLowerCase() != "yes") {
        break;
      } 
      } else {
        print("You have reached your calorie limit for the day! your maximum for the day was $maxCalorieIntake and you have eaten $caloriesEaten");
        break;
      }
      
      

      }
      }  
      // print("There are $calValueNextSnack calories in $nextSnack so you have $caloriesLeft calories left to eat for the day");
 
    
        
    