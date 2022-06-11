class DartFinal{
  final finalVar = 1;

  void run(){
    // Так делать не получится
    // finalVar = 1;
    print("DartFinal: we can use only for read - $finalVar");
  }
}