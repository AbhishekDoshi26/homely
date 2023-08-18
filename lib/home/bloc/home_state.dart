part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.tag,
    this.selectedHouse,
  });

  final HouseTag tag;
  final HouseModel? selectedHouse;

  static HomeState initial() {
    return const HomeState(
      tag: HouseTag.popular,
    );
  }

  HomeState copyWith({
    HouseTag? tag,
    HouseModel? selectedHouse,
  }) {
    return HomeState(
      tag: tag ?? this.tag,
      selectedHouse: selectedHouse ?? this.selectedHouse,
    );
  }

  @override
  List<Object?> get props => [
        tag,
        selectedHouse,
      ];
}
