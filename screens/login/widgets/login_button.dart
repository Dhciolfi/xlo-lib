import 'package:flutter/material.dart';
import 'package:xlo/blocs/login/button_state.dart';
import 'package:xlo/blocs/login/login_bloc.dart';

class LoginButton extends StatelessWidget {

  LoginButton(this.loginBloc);

  final LoginBloc loginBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      height: 50,
      child: StreamBuilder<ButtonState>(
        stream: loginBloc.outLoginButton,
        initialData: ButtonState(enabled: false, loading: false),
        builder: (context, snapshot){
          return RaisedButton(
            color: Colors.pink,
            disabledColor: Colors.pink.withAlpha(150),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            ),
            onPressed: snapshot.data.enabled ? () async {
              final bool success = await loginBloc.loginWithEmail();
              if(success)
                Navigator.of(context).pop();
            } : null,
            child: snapshot.data.loading ?
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              )
                :
              Text(
                'Entrar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
          );
        },
      ),
    );
  }
}
