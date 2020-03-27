import 'package:flutter/material.dart';
import 'package:xlo/models/user.dart';

class UserTypeWidget extends StatelessWidget {
  const UserTypeWidget({this.initialValue, this.onSaved});

  final UserType initialValue;
  final FormFieldSetter<UserType> onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: FormField(
        initialValue: initialValue,
        onSaved: onSaved,
        builder: (state){
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text(
                    'Particular',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Radio<UserType>(
                    value: UserType.PARTICULAR,
                    groupValue: state.value,
                    onChanged: state.didChange,
                  ),
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                children: <Widget>[
                  const Text(
                    'Profissional',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Radio<UserType>(
                    value: UserType.PROFESSIONAL,
                    groupValue: state.value,
                    onChanged: state.didChange,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}