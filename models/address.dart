class Address {

  Address({this.place,
    this.district,
    this.city,
    this.postalCode,
    this.federativeUnit,});

  String place;
  String district;
  String city;
  String postalCode;
  String federativeUnit;

  @override
  String toString() {
    return '$place, $district, $city, $postalCode, $federativeUnit';
  }

}