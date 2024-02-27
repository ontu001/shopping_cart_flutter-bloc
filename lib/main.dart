import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/home/ui/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple shopping cart app using bloc pattern',
      theme: ThemeData(
        primaryColor: Colors.teal,
         appBarTheme: AppBarTheme(
           backgroundColor: Colors.blue,
           centerTitle: true
         )
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }

}