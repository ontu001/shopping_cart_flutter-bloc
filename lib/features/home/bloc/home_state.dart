part of 'home_bloc.dart';

@immutable
abstract class HomeState {}
class HomeInitialEvent extends HomeEvent{}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadingSuccessState extends HomeState {
  final List<ProdutDataModel> products;

  HomeLoadingSuccessState(this.products);
}

class HomeErrorState extends HomeState {}

class HomeNavigateToWhislistPageActinonState extends HomeActionState {}

class HomeNavigateToCartPageActinonState extends HomeActionState {}
