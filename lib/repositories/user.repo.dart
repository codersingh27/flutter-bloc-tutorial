
import 'package:bloc_tutorial/models/user.model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class UserRepo {

  Future<User> getUser() async{
    try{
      var res = await http.get("https://api.github.com/users");
      if(res.statusCode == 200){
        var body = convert.jsonDecode(res.body) as List<dynamic>;
        var gotUser = body[0];
        User user = User.fromJson(gotUser);
        return user;
      }
    }catch(e){
      print("Error $e");
      return null;
    }
    return null;
  }

}