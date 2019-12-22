import 'package:flutter/material.dart';

class BarButton extends StatelessWidget {
  const BarButton({this.label, this.boxDecoration, this.onPressed});

  final BoxDecoration boxDecoration;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 50,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: boxDecoration,
          child: Text(
            label,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w400
            ),
          ),
        ),
      ),
    );
  }
}