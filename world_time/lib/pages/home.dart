import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  Object? params;

  @override
  Widget build(BuildContext context) {
    params = ModalRoute.of(context)!.settings.arguments;
    data = jsonDecode(jsonEncode(params));
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: <Widget>[
              TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Change location')),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(fontSize: 28, letterSpacing: 2),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                data['date'],
                style: TextStyle(fontSize: 22),
              ),
              // SizedBox(height: 0,),
              Text(
                data['time'],
                style: TextStyle(fontSize: 66),
              ),
              FaIcon(
                data['isDaytime'] ? Icons.sunny : FontAwesomeIcons.moon,
                size: 60,
                color: data['isDaytime'] ? Colors.amber : Colors.indigo,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.blue),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(20))),
                  child: Text('Get My Location!',
                      style: TextStyle(fontSize: 20, color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}
