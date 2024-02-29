import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_crat_flutter_bloc/features/cart/ui/cart.dart';
import 'package:shopping_crat_flutter_bloc/features/home/bloc/home_bloc.dart';
import 'package:shopping_crat_flutter_bloc/features/home/ui/products_tile.dart';
import 'package:shopping_crat_flutter_bloc/features/wishlist/ui/wishlist.dart';
import 'package:shopping_crat_flutter_bloc/utilities/constant.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActinonState) {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Cart()));
        } else if (state is HomeNavigateToWhislistPageActinonState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => WishList()));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: kCommonColor,
                ),
              ),
            );

          case HomeLoadingSuccessState:
            final successState = state as HomeLoadingSuccessState;
            return Scaffold(
              appBar: AppBar(
                title: Text("Bloc Grocery App"),
                actions: [
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomeWishlistButtonNavigateClickedEvent());
                    },
                    icon: Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomeCartButtonNavigateClickedEvent());
                    },
                    icon: Icon(Icons.shopping_bag),
                  ),
                ],
              ),
              body: ListView.builder(
                itemCount: successState.products.length,
                itemBuilder: (context, index) {
                  return ProductTile(
                      produtDataModel: successState.products[index]);
                },
              ),
            );
          case HomeErrorState:
            return Scaffold(
              body: Center(
                child: Text(
                  "Error",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            );
          default:
            return SizedBox();
        }
      },
    );
  }
}
