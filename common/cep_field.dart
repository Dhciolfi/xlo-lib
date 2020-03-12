import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xlo/models/address.dart';

class CepField extends StatefulWidget {

  CepField({this.decoration, this.onSaved});

  final InputDecoration decoration;
  final FormFieldSetter<Address> onSaved;

  @override
  _CepFieldState createState() => _CepFieldState();
}

class _CepFieldState extends State<CepField> {

  InputDecoration get decoration => widget.decoration;
  FormFieldSetter<Address> get onSaved => widget.onSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: decoration,
          inputFormatters: [
            WhitelistingTextInputFormatter.digitsOnly,
            CepInputFormatter(),
          ],
          onSaved: (c){
            onSaved(Address());
          },
        )
      ],
    );
  }
}
