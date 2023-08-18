import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homely/home/home.dart';
import 'package:homely/services/shared_preferences_service.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.sharedPreferenceService})
      : super(HomeState.initial()) {
    on<HomeTagClickedEvent>(_onHomeTagClickedEvent);
    on<HomeViewHomeRequestedEvent>(_onHomeViewHomeRequestedEvent);
    on<HomeGetSavedHomesEvent>(_onHomeGetSavedHomesEvent);
  }

  final SharedPreferenceService sharedPreferenceService;

  void _onHomeGetSavedHomesEvent(
    HomeGetSavedHomesEvent event,
    Emitter<HomeState> emit,
  ) async {
    final savedHomeIds = await sharedPreferenceService.getSavedHouses();
    var updatedHouseModel = state.houseModel;
    if (savedHomeIds.isNotEmpty) {
      updatedHouseModel = state.houseModel.map((house) {
        if (savedHomeIds.contains(house.id)) {
          return house.copyWith(isSaved: true);
        }
        return house;
      }).toList();
    }
    emit(state.copyWith(houseModel: updatedHouseModel));
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
