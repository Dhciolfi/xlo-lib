import 'package:flutter/material.dart';

import 'icon_tile.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconTile(
          label: 'Anúncios',
          iconData: Icons.list,
          onTap: () {

          },
          highlighted: true,
        ),
        IconTile(
          label: 'Inserir Anúncio',
          iconData: Icons.edit,
          onTap: () {

          },
          highlighted: false,
        ),
        IconTile(
          label: 'Chat',
          iconData: Icons.chat,
          onTap: () {

          },
          highlighted: false,
        ),
        IconTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          onTap: () {

          },
          highlighted: false,
        ),
        IconTile(
          label: 'Minha conta',
          iconData: Icons.person,
          onTap: () {

          },
          highlighted: false,
        ),
      ],
    );
  }
}
