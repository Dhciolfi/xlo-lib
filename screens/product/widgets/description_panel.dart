import 'package:flutter/material.dart';
import 'package:xlo/models/ad.dart';

class DescriptionPanel extends StatefulWidget {
  const DescriptionPanel(this.ad);

  final Ad ad;

  @override
  _DescriptionPanelState createState() => _DescriptionPanelState();
}

class _DescriptionPanelState extends State<DescriptionPanel> {

  Ad get ad => widget.ad;

  bool open = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Text(
            'Descrição',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Text(
            ad.description,
            maxLines: open ? 10 : 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        if (open || ad.description.length < 100) const SizedBox(
          height: 18,
        ) else Align(
          alignment: Alignment.centerLeft,
          child: FlatButton(
            padding: EdgeInsets.zero,
            child: Text(
              'Ver descrição completa',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.pink,
              ),
            ),
            onPressed: () {
              setState(() {
                open = true;
              });
            },
          ),
        )
      ],
    );
  }
}