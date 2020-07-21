
import 'package:bloc_tutorial/models/user.model.dart';
import 'package:equatable/equatable.dart';

class UserState extends Equatable{
  @override
  List<Object> get props => [];
}

class UserNotSearched extends UserState {}

class LoadingUserState extends UserState{}

class UserLoadedState extends UserState{

  final User user;
  UserLoadedState(this.user);
}

class UserLoadErrorState extends UserState{
  final String message;
  UserLoadErrorState(this.message);
}