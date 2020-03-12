import 'package:xlo/models/address.dart';

class Ad {

  List<dynamic> images;
  String title;
  String description;
  Address address;
  num price;
  bool hidePhone;

  @override
  String toString() {
    return '$images, $title, $description, $address, $price, $hidePhone';
  }

}