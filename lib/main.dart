import 'package:flutter/material.dart';
import 'package:notes_app/component/view/home_view.dart';

void main() {
  Widget myApp = MaterialApp(
    initialRoute: "/",
    routes: {
      "/" : (context) => const HomeView()
    },
  );
  runApp(myApp);
}