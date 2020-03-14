import 'package:rxdart/rxdart.dart';
import 'package:xlo/models/ad.dart';

class HomeBloc {

  final BehaviorSubject<String> _searchController = BehaviorSubject<String>();
  final BehaviorSubject<List<Ad>> _adController = BehaviorSubject<List<Ad>>.seeded([]);

  Stream<String> get outSearch => _searchController.stream;
  Stream<List<Ad>> get outAd => _adController.stream;

  void addAd(Ad ad){
    _adController.add(_adController.value..add(ad));
  }

  void setSearch(String search){
    _searchController.add(search);
  }

  void dispose(){
    _searchController.close();
    _adController.close();
  }

}