import 'package:fiap_flutter_dbs/screens/home.dart';
import 'package:fiap_flutter_dbs/sqlite/list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomeWidget(),
          "/sqlite": (context) => ListSQLiteWidget()
        });
  }
}
