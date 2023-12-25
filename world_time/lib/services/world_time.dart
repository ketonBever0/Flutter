import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location;
  late String date;
  late String time;
  late String flag;
  late String url;
  late bool isDaytime;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(dateTime);

      now = now.add(Duration(hours: int.parse(offset)));

      date = DateFormat.yMMMEd().format(now);
      time = DateFormat.Hm().format(now);
      isDaytime = now.hour > 6 && now.hour < 19;

    } catch (e) {
      // print("caught error: $e");
      time = "could not get the data";
    }
  }
}
