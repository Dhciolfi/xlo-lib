import 'package:flutter/material.dart';
import 'package:xlo/models/filter.dart';

class OrderByField extends StatelessWidget {

  OrderByField({this.onSaved, this.initialValue});

  final FormFieldSetter<OrderBy> onSaved;
  final OrderBy initialValue;

  @override
  Widget build(BuildContext context) {
    return FormField<OrderBy>(
      initialValue: initialValue,
      onSaved: onSaved,
      builder: (state){
        return Row(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                state.didChange(OrderBy.DATE);
              },
              child: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: state.value == OrderBy.DATE ?
                    Colors.transparent : Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  color: state.value == OrderBy.DATE ? Colors.blue : Colors.transparent
                ),
                alignment: Alignment.center,
                child: Text(
                  'Data',
                  style: TextStyle(
                    color: state.value == OrderBy.DATE ? Colors.white : Colors.black
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10,),
            GestureDetector(
              onTap: (){
                state.didChange(OrderBy.PRICE);
              },
              child: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: state.value == OrderBy.PRICE ?
                    Colors.transparent : Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    color: state.value == OrderBy.PRICE ? Colors.blue : Colors.transparent
                ),
                alignment: Alignment.center,
                child: Text(
                  'Preço',
                  style: TextStyle(
                      color: state.value == OrderBy.PRICE ? Colors.white : Colors.black
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
