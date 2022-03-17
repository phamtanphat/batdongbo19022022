import 'dart:async';

void main(List<String> arguments) {

  // Future
  // Cach 1

  // Future<int> data1 = Future.delayed(Duration(seconds: 1) , () {
  //   throw Exception("Loi");
  // });
  //
  // data1.then((value){
  //   print(value);
  // }).catchError((error){
  //   print(error.toString());
  // });

  //Cach 2
  handle().then((value){
    print(value);
  });
}

Future<int> handle(){
  var completer = Completer<int>();
  Future.delayed(Duration(seconds: 1),(){
    return 5;
  }).then((value){
    Future.delayed(Duration(seconds: 2), (){
      return value + 2;
    }).then((value2){
      completer.complete(value2);
    });
  });
  return completer.future;
}


