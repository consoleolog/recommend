import 'package:dio/dio.dart';
import 'dart:convert';
var dio = Dio();


postData()async{
  Response response;
  try{
    response = await dio.post("",
        data: {'id':12,'name':'dio'});
    if (response.statusCode==200){
      return response;
    }
  } catch(error){
    print(error);
  }

}
