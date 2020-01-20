import 'package:rxdart/rxdart.dart';
import 'package:xlo/models/user.dart';

enum SignUpState { IDLE, LOADING, ERROR }

class SignUpBlocState {

  SignUpBlocState(this.state, {this.errorMessage});

  SignUpState state;
  String errorMessage;
}

class SignUpBloc {

  final BehaviorSubject<SignUpBlocState> _stateController =
    BehaviorSubject<SignUpBlocState>.seeded(SignUpBlocState(SignUpState.IDLE));

  Stream<SignUpBlocState> get outState => _stateController.stream;

  User user = User();

  void signUp() async {
    _stateController.add(SignUpBlocState(SignUpState.LOADING));

    await Future.delayed(Duration(seconds: 3));

    _stateController.add(SignUpBlocState(SignUpState.IDLE));
  }

  void setName(String name){
    user.name = name;
  }

  void setEmail(String email) {
    user.email = email.toLowerCase();
  }

  void setPassword(String password) {
    user.password = password;
  }

  void dispose(){
    _stateController.close();
  }

}