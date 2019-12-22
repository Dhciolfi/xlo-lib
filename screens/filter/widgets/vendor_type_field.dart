import 'package:flutter/material.dart';
import 'package:xlo/models/filter.dart';

class VendorTypeField extends StatelessWidget {

  VendorTypeField({this.onSaved, this.initialValue});

  final FormFieldSetter<int> onSaved;
  final int initialValue;

  @override
  Widget build(BuildContext context) {
    return FormField<int>(
      initialValue: initialValue,
      onSaved: onSaved,
      builder: (state){
        return Row(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                if(state.value & VENDOR_TYPE_PARTICULAR != 0){
                  if(state.value & VENDOR_TYPE_PROFESSIONAL != 0)
                    state.didChange(state.value & ~VENDOR_TYPE_PARTICULAR);
                  else
                    state.didChange(VENDOR_TYPE_PROFESSIONAL);
                } else {
                  state.didChange(state.value | VENDOR_TYPE_PARTICULAR);
                }
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: state.value & VENDOR_TYPE_PARTICULAR != 0 ?
                      Colors.transparent : Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    color: state.value & VENDOR_TYPE_PARTICULAR != 0 ? Colors.blue : Colors.transparent
                ),
                alignment: Alignment.center,
                child: Text(
                  'Particular',
                  style: TextStyle(
                      color: state.value & VENDOR_TYPE_PARTICULAR != 0 ? Colors.white : Colors.black
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10,),
            GestureDetector(
              onTap: (){
                if(state.value & VENDOR_TYPE_PROFESSIONAL != 0){
                  if(state.value & VENDOR_TYPE_PARTICULAR != 0)
                    state.didChange(state.value & ~VENDOR_TYPE_PROFESSIONAL);
                  else
                    state.didChange(VENDOR_TYPE_PARTICULAR);
                } else {
                  state.didChange(state.value | VENDOR_TYPE_PROFESSIONAL);
                }
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: state.value & VENDOR_TYPE_PROFESSIONAL != 0 ?
                      Colors.transparent : Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    color: state.value & VENDOR_TYPE_PROFESSIONAL != 0 ? Colors.blue : Colors.transparent
                ),
                alignment: Alignment.center,
                child: Text(
                  'Profissional',
                  style: TextStyle(
                      color: state.value & VENDOR_TYPE_PROFESSIONAL != 0 ? Colors.white : Colors.black
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
