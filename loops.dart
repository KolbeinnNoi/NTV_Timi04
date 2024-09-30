import 'dart:io';
import 'dart:math';
void main () {
  // yes();
  // loops1();
  // loops2();
  // loops3();
  loops4();
}

// telur upp úr 1 í 100
void yes() {
  int yes = 1;
  while (yes <= 100) {
    print(" nono $yes");
    yes++;
  }
}

// telur upp í 100 úr einum
void loops1 () {


  for (int i = 1; i <= 100; i++) {
    print(i);
  }
}

// telur niður í 0 úr 100
void loops2 () {
  
  for (int i = 100; i >=0; i--) {
    print(i);
  }

}

void loops3 () {
  List friends = ["rachel", "ross", "chandler", "Monica", "Phebo", "Joey"];
  for(String friend in friends) {
    print(" Þetta er besti vinur þinn: ${friends[1]}");
    break;
  }
}

// gefur ther random tolur thangad til ad 3 kemur upp. tharft ad vera med dart:math
void loops4 () {
  Random r = new Random();
  int randomNumber = 0;
  while(randomNumber != 3) {
    randomNumber = r.nextInt(10);
    print(randomNumber);
  }
}