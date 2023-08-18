import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homely/home/home.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeTagClickedEvent>(_onHomeTagClickedEvent);
    on<HomeViewHomeRequestedEvent>(_onHomeViewHomeRequestedEvent);
  }

  void _onHomeTagClickedEvent(
    HomeTagClickedEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(tag: event.status));
  }

  void _onHomeViewHomeRequestedEvent(
    HomeViewHomeRequestedEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(selectedHouse: event.houseModel));
  }
}
