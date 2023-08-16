import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homely/home/model/home_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeTagClickedEvent>(_onHomeTagClickedEvent);
  }

  void _onHomeTagClickedEvent(
    HomeTagClickedEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(tag: event.status));
  }
}
