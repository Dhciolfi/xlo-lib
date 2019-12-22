import 'package:rxdart/rxdart.dart';

class HomeBloc {

  final BehaviorSubject<String> _searchController = BehaviorSubject<String>();

  Stream<String> get outSearch => _searchController.stream;

  void setSearch(String search){
    _searchController.add(search);
  }

  void dispose(){
    _searchController.close();
  }

}