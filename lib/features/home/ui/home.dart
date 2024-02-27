import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_crat_flutter_bloc/features/home/bloc/home_bloc.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      // listenWhen: (previous, current) {},
      // buildWhen: (previous, current) {},
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Bloc Grocery App"),
            actions: [
              IconButton(onPressed: (){
                homeBloc.add(HomeWishlistButtonNavigateClickedEvent());
              }, icon: Icon(Icons.favorite),),
              IconButton(onPressed: (){
                homeBloc.add(HomeCartButtonNavigateClickedEvent());
              }, icon: Icon(Icons.shopping_bag),),
            ],
          ),
        );
      },
    );
  }
}
