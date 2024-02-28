import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/grocery_data.dart';
import '../models/home_product_data_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeProductWishlistButtonCLickedEvent>(
        homeProductWishlistButtonCLickedEvent);
    on<HomeProductCartButtonCLickedEvent>(homeProductCartButtonCLickedEvent);
    on<HomeWishlistButtonNavigateClickedEvent>(
        homeWishlistButtonNavigateClickedEvent);
    on<HomeCartButtonNavigateClickedEvent>(homeCartButtonNavigateClickedEvent);
  }
  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeLoadingSuccessState(Gorcerydata.groceryProducts
        .map((e) => ProdutDataModel(
            id: e['id'],
            name: e['name'],
            description: e['description'],
            imageUrl: e['imageUrl'],
            price: e['price']))
        .toList()));
  }

  FutureOr<void> homeProductWishlistButtonCLickedEvent(
      HomeProductWishlistButtonCLickedEvent event, Emitter<HomeState> emit) {
    print('Wishlist button clicked');
  }

  FutureOr<void> homeProductCartButtonCLickedEvent(
      HomeProductCartButtonCLickedEvent event, Emitter<HomeState> emit) {
    print('Cart button clicked');
  }

  FutureOr<void> homeWishlistButtonNavigateClickedEvent(
      HomeWishlistButtonNavigateClickedEvent event, Emitter<HomeState> emit) {
    print('Wishlist button Navigate');
    emit(HomeNavigateToWhislistPageActinonState());
  }

  FutureOr<void> homeCartButtonNavigateClickedEvent(
      HomeCartButtonNavigateClickedEvent event, Emitter<HomeState> emit) {
    print('Cart button Navigate');
    emit(HomeNavigateToCartPageActinonState());
  }
}
