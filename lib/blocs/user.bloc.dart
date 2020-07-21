
import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/events/user.event.dart';
import 'package:bloc_tutorial/models/user.model.dart';
import 'package:bloc_tutorial/repositories/user.repo.dart';
import 'package:bloc_tutorial/states/user.state.dart';

class UserBloc extends Bloc<UserEvents, UserState>{

  UserRepo userRepo = UserRepo();

  @override
  UserState get initialState => UserNotSearched();

  @override
  Stream<UserState> mapEventToState(UserEvents event) async*{
    if(event is LoadUserEvent){
      yield LoadingUserState();
      User user = await userRepo.getUser();
      if(user == null){
        yield UserLoadErrorState("User not found");
      }else{
        yield UserLoadedState(user);
      }
    }
  }
}