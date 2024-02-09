import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Map? data = {};
  Object? params;



  void setupWorldTime() async {
    WorldTime timezone = WorldTime(
      url: data?['url'] != null ?
          "https://worldtimeapi.org/api/timezone/${data?['url']}"
          :
          "http://worldtimeapi.org/api/ip"
    );
    await timezone.getTime(timezone.url);
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': timezone.location,
      // 'flag': instance.flag,
      'date': timezone.date,
      'time': timezone.time,
      'isDaytime': timezone.isDaytime
    });
  }

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    params = ModalRoute.of(context)!.settings.arguments;
    data = jsonDecode(jsonEncode(params));

    setupWorldTime();

    return Scaffold(
      body: Center(
        child:
        SpinKitPouringHourGlassRefined(
          color: Colors.deepOrange,
          size: 50.0,
          duration: Durations.extralong4,
        ),
      ),
    );
  }
}
