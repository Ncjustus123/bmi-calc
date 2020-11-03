import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;


  CalculatorBrain({this.height, this.weight});
  String calculateBMI(){
    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult (){
    if (_bmi >= 25){
      return 'overweight';
    }else if (_bmi > 18.5){
      return 'normal';
    }else{
      return 'underweight';
    }
  }
  String getInterpretation (){
    if (_bmi >= 25){
      return 'you have a higher weight than normal exercise ';
    }else if (_bmi > 18.5){
      return 'you have  a normal weight';
    }else{
      return 'you have lower than normal weight ';
    }
  }

}