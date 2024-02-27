import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductWishlistButtonCLickedEvent>(homeProductWishlistButtonCLickedEvent);
    on<HomeProductCartButtonCLickedEvent>(homeProductCartButtonCLickedEvent);
    on<HomeWishlistButtonNavigateClickedEvent>(homeWishlistButtonNavigateClickedEvent);
    on<HomeCartButtonNavigateClickedEvent>(homeCartButtonNavigateClickedEvent);
  }

  FutureOr<void> homeProductWishlistButtonCLickedEvent(HomeProductWishlistButtonCLickedEvent event, Emitter<HomeState> emit) {
    print('Wishlist button clicked');
  }

  FutureOr<void> homeProductCartButtonCLickedEvent(HomeProductCartButtonCLickedEvent event, Emitter<HomeState> emit) {
    print('Cart button clicked');
  }

  FutureOr<void> homeWishlistButtonNavigateClickedEvent(HomeWishlistButtonNavigateClickedEvent event, Emitter<HomeState> emit) {
    print('Wishlist button Navigate');
  }

  FutureOr<void> homeCartButtonNavigateClickedEvent(HomeCartButtonNavigateClickedEvent event, Emitter<HomeState> emit) {
    print('Cart button Navigate');
  }
}
