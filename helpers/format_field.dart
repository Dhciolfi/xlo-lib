String getSanitizedText(String text){
  return text.replaceAll(RegExp(r'[^\d]'), '');
}