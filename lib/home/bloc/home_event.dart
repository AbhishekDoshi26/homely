part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeGetSavedHomesEvent extends HomeEvent {}

class HomeSaveHouseEvent extends HomeEvent {
  final String houseId;
  final bool isSaved;
  final HouseModel? selectedHouse;

  HomeSaveHouseEvent({
    required this.houseId,
    required this.isSaved,
    this.selectedHouse,
  });

  @override
  List<Object?> get props => [
        houseId,
        isSaved,
        selectedHouse,
      ];
}

class HomeTagClickedEvent extends HomeEvent {
  final HouseTag status;

  HomeTagClickedEvent({required this.status});

  @override
  List<Object?> get props => [status];
}

class HomeViewHomeRequestedEvent extends HomeEvent {
  final HouseModel houseModel;

  HomeViewHomeRequestedEvent({required this.houseModel});

  @override
  List<Object?> get props => [houseModel];
}
