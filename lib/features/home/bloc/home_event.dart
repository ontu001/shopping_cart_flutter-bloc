part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeProductWishlistButtonCLickedEvent extends HomeEvent {
  final ProdutDataModel clickedProduct;

  HomeProductWishlistButtonCLickedEvent({required this.clickedProduct});
}

class HomeProductCartButtonCLickedEvent extends HomeEvent {
  final ProdutDataModel clickedProduct;

  HomeProductCartButtonCLickedEvent({required this.clickedProduct});
}

class HomeWishlistButtonNavigateClickedEvent extends HomeEvent {}

class HomeCartButtonNavigateClickedEvent extends HomeEvent {}
