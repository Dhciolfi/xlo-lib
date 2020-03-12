import 'api_error.dart';

class ApiResponse {

  ApiResponse.success({this.result}){
    success = true;
  }

  ApiResponse.error({this.error}){
    success = false;
  }

  bool success;
  dynamic result;
  ApiError error;

}