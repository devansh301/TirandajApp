import 'dart:convert';

import 'package:http/http.dart' as http;

class MyCategory2{
  String baseUrl = "https://tirandaj.com/index.php/wp-json/wp/v2/posts?per_page=30&categories=2&status=publish";
  Future<List> getCategory2Post() async{
    try{
      var response = await http.get(Uri.parse(baseUrl));
      print(response);
      if(response.statusCode == 200){
        return jsonDecode(response.body);
      }
      else{
        return Future.error("Server Error");
      }
    } catch (SocketException) {
      return Future.error("Server Error");
    }
  }
}