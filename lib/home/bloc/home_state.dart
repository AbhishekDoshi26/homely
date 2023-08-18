part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.tag,
    required this.houseModel,
    this.selectedHouse,
  });

  final HouseTag tag;
  final HouseModel? selectedHouse;
  final List<HouseModel> houseModel;

  static HomeState initial() {
    return HomeState(
      tag: HouseTag.popular,
      houseModel: HouseModel.fakeHouseData,
    );
  }

  HomeState copyWith({
    HouseTag? tag,
    HouseModel? selectedHouse,
    List<HouseModel>? houseModel,
  }) {
    return HomeState(
      tag: tag ?? this.tag,
      selectedHouse: selectedHouse ?? this.selectedHouse,
      houseModel: houseModel ?? this.houseModel,
    );
  }

  @override
  List<Object?> get props => [
        tag,
        selectedHouse,
        houseModel,
      ];
}
