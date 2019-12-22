import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xlo/helpers/format_field.dart';

class PriceRangeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Min'
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: false),
            inputFormatters: [
              WhitelistingTextInputFormatter.digitsOnly,
              RealInputFormatter(centavos: false),
            ],
            initialValue: null,
            onSaved: (s){

            },
            validator: (s){
              if(s.isNotEmpty && int.tryParse(getSanitizedText(s)) == null)
                return 'Utilize valores válidos';
              return null;
            },
          ),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Max'
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: false),
            inputFormatters: [
              WhitelistingTextInputFormatter.digitsOnly,
              RealInputFormatter(centavos: false),
            ],
            initialValue: null,
            onSaved: (s){

            },
            validator: (s){
              if(s.isNotEmpty && int.tryParse(getSanitizedText(s)) == null)
                return 'Utilize valores válidos';
              return null;
            },
          ),
        ),
      ],
    );
  }
}
