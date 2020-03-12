import 'package:dio/dio.dart';

getAddressFromAPI(String postalCode) async {

  final String endpoint =
      'http://viacep.com.br/'
      'ws/${postalCode.replaceAll('.', '').replaceAll('-', '')}/json/';

  try {
    final Response response = await Dio().get<Map>(endpoint);

    if(response.data.containsKey('erro') && response.data['erro']){

    }

    print(response.data);
  } on DioError catch (e){
    print(e.message);
  }
}