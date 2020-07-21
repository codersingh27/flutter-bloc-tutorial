import 'package:equatable/equatable.dart';

class User extends Equatable{
  int id;
  String login;

  User(this.id, this.login);

  factory User.fromJson(Map<String, dynamic> map) => User(map["id"], map["login"]);

  @override
  List<Object> get props => [id];

}