class DartBase{
  void run(){
    print('DartBase: hello world!');

    _stepConf();
    _stepDataType();
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
}