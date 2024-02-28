import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _WishList();
  }

}


class _WishList extends State<WishList>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
    );
  }

}