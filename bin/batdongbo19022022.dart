import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;


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
  // handle().then((value){
  //   print(value);
  // });

  // getTempCity(cityName: 'Hanoi')
  //     .then((temp) => print(temp))
  //     .catchError((error) => print(error));

  // =======================================

  // Stream

  // Future
  // var future = Future.delayed(Duration(seconds: 1),() => 1);
  //
  // var stream = Stream.fromFuture(future);
  //
  // stream.listen((data) {
  //   print(data);
  // });

  // Iterable

  // var iterable = Iterable.generate(20 ,(index) => index);
  //
  // var stream = Stream.fromIterable(iterable);
  //
  // stream.listen((data) {
  //   print(data);
  // });

  // periodic

  // var stream = Stream.periodic(Duration(seconds: 1),(count) => count);
  //
  // stream.take(10).listen((data) {
  //   print(data);
  // });

  StreamController<int> intController = StreamController();

  // sink them du lieu vao cho streamcontroller
  intController.sink.add(1);
  // stream lang nghe du lieu
  intController.stream.listen((data) {
    print(data);
  });

  Future.delayed(Duration(seconds: 3),(){
    intController.sink.add(5);
  });

}

// Future<int> getTempCity({required String cityName}) async{
//   var completer = Completer<int>();
//   var url = Uri.parse('http://api.openweathermap.org/data/2.5/weather?appid=86183a23377ed034aef7aad102f43d64&units=metric&q=$cityName');
//
//   try{
//     var response = await http.get(url);
//     var json = jsonDecode(response.body);
//     if(json['cod'] == '404'){
//       completer.completeError(json['message']);
//     }else{
//       completer.complete(json['main']['temp']);
//     }
//   }catch(e){
//     completer.completeError(e);
//   }
//   return completer.future;
// }

