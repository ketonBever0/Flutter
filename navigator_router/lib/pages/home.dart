import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Feed"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.pushNamed(context, "/feed");
                }, child: Text("Navigator")),
                // ElevatedButton(onPressed: () {
                //   Router.of(context)
                // }, child: Text("Router"))
              ],
            ),
          ],
        )
      ),
    );
  }
}
