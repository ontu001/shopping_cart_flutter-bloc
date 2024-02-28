import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CartState();
  }

}

class _CartState extends State<Cart>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
    );
  }

}