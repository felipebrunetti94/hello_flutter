import 'package:flutter/material.dart';
import 'package:hello_flutter/view/login_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
