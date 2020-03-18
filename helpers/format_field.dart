import 'package:intl/intl.dart';

String getSanitizedText(String text){
  return text.replaceAll(RegExp(r'[^\d]'), '');
}

String numToString(num number) {
  return NumberFormat('###,##0.00', 'pt-br').
    format(double.parse(number.toStringAsFixed(2)));
}

String dateToString(DateTime datetime) {
  return DateFormat('dd/MM HH:mm', 'pt-br').format(datetime);
}