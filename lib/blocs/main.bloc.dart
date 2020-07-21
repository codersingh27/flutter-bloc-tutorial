import 'package:bloc_tutorial/blocs/user.bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc{
  static List<BlocProvider> allBlocs(){
    return [
      BlocProvider<UserBloc>(
       create: (BuildContext context) => UserBloc(),
      )
    ];
  }
}