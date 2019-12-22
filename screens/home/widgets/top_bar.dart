import 'package:flutter/material.dart';
import 'package:xlo/screens/filter/filter_screen.dart';

import 'bar_button.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 20.0,
            offset: Offset(
              0, 2
            ),
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          BarButton(
            label: 'Categorias',
            boxDecoration: BoxDecoration(
              color: Colors.white,
            ),
            onPressed: (){

            },
          ),
          BarButton(
            label: 'Filtros',
            boxDecoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                left: BorderSide(color: Colors.grey[400])
              ),
            ),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FilterScreen()
                )
              );
            },
          )
        ],
      ),
    );
  }
}
