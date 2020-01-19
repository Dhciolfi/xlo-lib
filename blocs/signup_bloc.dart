import 'package:rxdart/rxdart.dart';

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



  void dispose(){
    _stateController.close();
  }

}