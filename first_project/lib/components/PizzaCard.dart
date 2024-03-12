import 'package:flutter/material.dart';

class PizzaCard extends StatefulWidget {
  const PizzaCard({super.key});

  @override
  State<PizzaCard> createState() => _PizzaCardState();
}

class _PizzaCardState extends State<PizzaCard> {
  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Column(
        children: [
          FlutterLogo(),

          Text("Pizza 1"),
          Text("2500 Ft"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.star), Icon(Icons.star), Icon(Icons.star)],
          ),
          ElevatedButton(onPressed: () {}, child: Text("Add")),
        ],
      ),
    ));
  }
}
