import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_router/pages/feed.dart';
import 'package:navigator_router/pages/home.dart';
import 'package:navigator_router/pages/images.dart';
import 'package:navigator_router/pages/signin.dart';
import 'package:navigator_router/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/feed": (context) => Feed(),
      },
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme
//             .of(context)
//             .colorScheme
//             .inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: SafeArea(
//         child: MaterialApp(
//           initialRoute: "/",
//           routes: {
//             "/": (context) => Home(),
//             "/feed": (context) => Feed()
//           },
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }