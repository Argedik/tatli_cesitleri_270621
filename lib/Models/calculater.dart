import 'package:intl/intl.dart';

class Calculater {
  static String dateTimeToString(DateTime dateTime) {
    String formattedDate = DateFormat('dd.MM.yyyy').format(dateTime);
    return formattedDate;
  }
}
