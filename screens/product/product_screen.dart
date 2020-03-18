import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:xlo/models/ad.dart';
import 'package:xlo/screens/product/widgets/main_panel.dart';

class ProductScreen extends StatelessWidget {

  ProductScreen(this.ad);

  final Ad ad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anúncio'),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 280,
            child: Carousel(
              images: ad.images.map((f){
                return FileImage(f);
              }).toList(),
              dotSize: 4,
              dotSpacing: 15,
              dotBgColor: Colors.transparent,
              dotColor: Colors.pink,
              autoplay: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MainPanel(ad),
                /*Divider(),
                DescriptionPanel(ad),
                Divider(),
                LocationPanel(ad),
                Divider(),
                UserPanel(ad),*/
              ],
            ),
          )
        ],
      ),
    );
  }
}
