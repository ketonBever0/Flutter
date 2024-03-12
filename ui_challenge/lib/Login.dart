import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlutterLogo(
                  size: 120,
                ),
                TextField(decoration: InputDecoration(label: Text("Email"))),
                TextField(decoration: InputDecoration(label: Text("Password")), obscureText: true,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("Login")),
                    Text("Or"),
                    TextButton(onPressed: () {}, child: Text("Create account"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
