import 'package:rxdart/rxdart.dart';

class LoginBloc {

  final BehaviorSubject<String> _emailController = BehaviorSubject<String>();
  final BehaviorSubject<String> _passwordController = BehaviorSubject<String>();

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  void dispose(){
    _emailController.close();
    _passwordController.close();
  }
}