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
    on<HomeSaveHouseEvent>(_onHomeSaveHouseEvent);
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
        } else {
          return house.copyWith(isSaved: false);
        }
      }).toList();
    } else {
      updatedHouseModel =
          updatedHouseModel.map((e) => e.copyWith(isSaved: false)).toList();
    }
    emit(state.copyWith(houseModel: updatedHouseModel));
  }

  void _onHomeSaveHouseEvent(
    HomeSaveHouseEvent event,
    Emitter<HomeState> emit,
  ) {
    if (event.isSaved) {
      sharedPreferenceService.removeHome(houseId: event.houseId);
    } else {
      sharedPreferenceService.saveHome(houseId: event.houseId);
    }
    if (event.selectedHouse != null) {
      emit(
        state.copyWith(
          selectedHouse: event.selectedHouse!.copyWith(
            isSaved: !event.selectedHouse!.isSaved,
          ),
        ),
      );
    }
    add(HomeGetSavedHomesEvent());
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
