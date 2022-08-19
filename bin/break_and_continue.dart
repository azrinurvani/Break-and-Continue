import 'dart:io';

import 'package:break_and_continue/break_and_continue.dart' as break_and_continue;

void main(List<String> arguments) {
  //20 bilangan prima
  var primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71];
  stdout.write('Masukkan bilangan prima : ');
  var searchNumber = int.parse(stdin.readLineSync()!);

  for (int i=0;i<primeNumbers.length;i++){
    if(searchNumber == primeNumbers[i]){
      print('$searchNumber adalah bilangan prima ke-${i+1}');
      break;
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }

  breakContinue();
}

void breakContinue(){
  for(int i=1;i<=10;i++){
    if(i%3==0){ //setiap bilangan yang habis dibagi 3 akan di skip
      continue;
    }
    print(i);
  }
}