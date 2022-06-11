import 'dart:math';

import 'package:ft_md_101_dart/ClassInstance.dart';
import 'package:ft_md_101_dart/steps/utils/DartChild.dart';
import 'package:ft_md_101_dart/steps/utils/DartMethod.dart';
import 'package:ft_md_101_dart/steps/utils/DartPackage.dart';
import 'package:ft_md_101_dart/steps/utils/DartSignature.dart';

class DartBase{
  void run(){
    print('DartBase: hello world!');

    _stepConf();
    _stepDataType();
    _stepClassInstance();
    _stepPackage();
    _stepMethod();
    _stepSignature();
    _stepInheritance();
    _stepConditionalOperator();
    _stepArray();
  }

  void _stepConf(){
    print('_stepConf: This is step 1');
  }

  void _stepDataType(){
    String str = 'st';
    int intVar = 1;
    double doubleVar = 1.1;

    print('_stepDataType: $str');
    print('_stepDataType: $intVar');
    print('_stepDataType: $doubleVar');

    var sum = intVar + doubleVar;
    print('_stepDataType: $sum');

    DartBase db = DartBase();
    db._stepConf();
  }

  void _stepClassInstance(){
    ClassInstance ci = ClassInstance();
    ci.run();
  }

  void _stepPackage(){
    DartPackage dp = DartPackage();
    dp.run();
  }

  void _stepMethod(){
    var dm = DartMethod();
    dm.run();
  }

  void _stepSignature(){
    var ds = DartSignature("first var", "second var");
    ds.run();
    ds.setAndRun("first after set", 'second after set');

    ds.first = 'first after set';
    ds.second = 'second after set';
    ds.run();
  }

  void _stepInheritance(){
    var dc = DartChild();
    dc.run();
  }

  void _stepConditionalOperator(){
    var random = Random();
    var intVar = random.nextInt(10);
    var maxVar = 5;

    print('_stepConditionalOperator: intVar is $intVar');

    if( intVar > maxVar){
      print('_stepConditionalOperator: $intVar > $maxVar');
    }

    if( intVar < maxVar){
      print('_stepConditionalOperator: $intVar < $maxVar');
    }

    if( intVar != maxVar){
      print('_stepConditionalOperator: $intVar != $maxVar');
    }

    if( intVar == maxVar){
      print('_stepConditionalOperator: $intVar == $maxVar');
    }

    if(intVar % 2 == 0){
      print('_stepConditionalOperator: $intVar is event');
    }else{
      print('_stepConditionalOperator: $intVar is odd');
    }
  }

  void _stepArray(){
    var array = [];
    array.add(1);
    array.add('String value');
    print('_stepArray: $array');

    List<String> stringArray = [];
    stringArray = List.filled(0, 'fill');
    stringArray = List<String>.empty();
    stringArray = <String>[];

    stringArray.add("value");
    print('_stepArray: $stringArray');

    stringArray.removeAt(0);
    print('_stepArray: $stringArray');

    stringArray.add("value");
    print('_stepArray: $stringArray');
    stringArray.remove("value");
    print('_stepArray: $stringArray');

    stringArray.add("value");
    stringArray.add("value");
    stringArray.add("value");
    stringArray.add("value");
    stringArray.add("value");

    stringArray.forEach((e) => {
      print('_stepArray: $e')
    });
  }
}