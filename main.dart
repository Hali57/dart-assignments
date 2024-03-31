import "dart:io";
//1).Create a function that takes two numbers as input and returns their sum
void sum(){
  stdout.write("Input the first numer: ");
  String? input1 = stdin.readLineSync();
  //parse the input 
  int? num1 = int.parse(input1!);

  stdout.write("Input the second number: ");
  String? input2 = stdin.readLineSync();

// parse the second input
  int? num2 = int.parse(input2!);

  print("The sum of $num1 and $num2 is: ${num1 + num2}");
}
//2) Create a program that uses a loop to print numbers 1-10
void outputNums(){
  for(int i=1; i<11; i++){
    print(i);
  }
}
//3) Create a function that uses a switch statement to check for different strings
void mentalHealth(){
  //the program will ask for how the user is feeling today and then output a response based on the input
  stdout.write("How are you feeling today? Good, anxious, Sad, Numb: ");
  String? input= stdin.readLineSync();
  String feeling = input!.toLowerCase();

  // check for error
   if (!["numb", "good", "sad", "anxious"].contains(feeling)) {
    
    print("Please try and use the following words to express your emotions: Good, Anxious, Sad, Numb \n");
    mentalHealth();
  }
  switch (feeling){
    case "sad":
      print("Sorry to hear that. Things might seem dull and the feeling might be overwhelming right now but hold on and you'll be alright.Please consider talking to a professional for further assistance \n");
      break;
    
    case "good":
      print("Awesome! Spread the cheer!! \n");
      break;

    case "numb":
      print("I am sorry to hear that.Try practicing gratitude everyday, reach out to a therapist and slowly you'll find yourself again.\n ");
      break;
 
    case "anxious":
      print("The feeling can be overwhelming but take a breath and fous on the present.Remember to be where your feet are not where your thoughts take you. Talk to a professional for better help. \n");
      break;
  }
}
//4) Create a while loop that prints 20-10
void logNums(){
  int i = 20;

  while(i>9){
    
    print(i);
    i--;
  
  }
}
//5) Check if the num is even or odd and use a try - catch block
void evenOdd(){
  
try{
  stdout.write("Input a number: ");
  String? input = stdin.readLineSync();
  //parse the input 
  int? num = int.parse(input!);

  if (num<1){
    print("Please input a number greater than 0");
    evenOdd();
  
  }
  else if(num%2==0){
    print("$num is an even number");
  }else{
     print("$num is an odd number");
  }
}catch(error){
  print("Please input a number");
  evenOdd();
}
}

//6) Create a program that take in a list of numbers and outputs the largest number
void largestNumInList(List list){
  int largest = 0;

  for(int num in list){
    if(num > largest){
      largest = num;
    }
  }
  print("The largest number in the list is:  $largest");
}
void main(){
 sum();
 outputNums();
 mentalHealth();
 logNums();
 evenOdd();
 largestNumInList([20, 200, 19, 40, 100]);
}