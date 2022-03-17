import 'dart:async';
import 'dart:convert';
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


  var url = Uri.parse('http://api.openweathermap.org/data/2.5/weather?appid=86183a23377ed034aef7aad102f43d64&units=metric&q=Hanoi');
  http.get(url)
  .then((response) => jsonDecode(response.body))
  .then((value) => print(value['name']))
  .catchError((error) => print(error));



}

