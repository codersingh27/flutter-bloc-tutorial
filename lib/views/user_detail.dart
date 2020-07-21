import 'package:bloc_tutorial/blocs/user.bloc.dart';
import 'package:bloc_tutorial/states/user.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
    listener: (BuildContext context, UserState state) {},
    builder: (BuildContext context, state) {
      if(state is UserNotSearched){
        return Text("User not searched yet");
      }
        if(state is LoadingUserState){
          return CircularProgressIndicator();
        }
        if(state is UserLoadedState){
          return Text("User Id: ${state.user.id}, UserName: ${state.user.login}");
        }
        if(state is UserLoadErrorState){
          return Text(state.message, style: TextStyle(color: Colors.red),);
        }
        return Container();
    }
    );
  }
}
