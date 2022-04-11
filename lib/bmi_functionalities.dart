  import 'dart:math';
  class CalculatorBrain{
    CalculatorBrain(this.height, this.weight);

    final int height; 
    final int weight;


    double _bmi = 0;

    String calculateBMI(){
       _bmi = weight/pow(height/100, 2);
      return _bmi.toStringAsFixed(1);
    }

    String getResult(){
      if(_bmi >= 25){
        return 'OverWeight';
      }else if(_bmi > 18.5){
        return 'Normal';
      }else {
        return'UnderWeight';
      }
    }

    String getInterpretation(){
      if(_bmi >= 25){
        return 'You have an high body weight.\n\nIn Pidgin.... \n\ndey try exercise biko!';
      }else if(_bmi > 18.5){
        return 'Your body codition is in good condition.\n\nIn Pidgin.... \n\nu are doing well! ';
      }else {
        return'You have a low body weight.\n\nIn Pidgin.... \n\ntry dey chop biko!';
      }
    }
  }