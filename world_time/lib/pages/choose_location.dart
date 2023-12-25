import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<dynamic> locations = [];

  void getLocations() async {
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone'));
    setState(() {
      locations = jsonDecode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    getLocations();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (location, index) {
            return Card(
              child: ListTile(
                onTap: () {},
                title: Text(locations[index]),
              ),
            );
          }),
    );
  }
}
