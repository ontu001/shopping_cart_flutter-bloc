part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {}

class HomeErrorState extends HomeState {}

class HomeNavigateToWhislistPageActinonState extends HomeActionState {}

class HomeNavigateToCartPageActinonState extends HomeActionState {}
