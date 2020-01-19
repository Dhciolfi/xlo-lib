import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget _buildBar(int n, String pass){
      final int level = _calcScore(pass);
      return Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: n <= level ? _getColor(level) : Colors.transparent,
            border: n > level ? Border.all(color: Colors.grey) : null
          ),
        ),
      );
    }

    return FormField<String>(
      initialValue: '',
      builder: (state){
        return Column(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              obscureText: true,
              onChanged: state.didChange,
            ),
            Container(
              margin: const EdgeInsets.only(top: 6),
              height: 8,
              child: Row(
                children: <Widget>[
                  _buildBar(0, state.value),
                  _buildBar(1, state.value),
                  _buildBar(2, state.value),
                  _buildBar(3, state.value),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  int _calcScore(String text){
    int score = 0;
    if(text.length > 8)
      score += 1;
    if(text.contains(RegExp(r'[0-9]')))
      score += 1;
    if(text.contains(RegExp(r'[A-Z]')))
      score += 1;
    return score;
  }

  Color _getColor(int level) {
    switch (level) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.orange;
      case 2:
        return Colors.greenAccent;
      case 3:
        return Colors.green;
      default:
        return Colors.red;
    }
  }


}
