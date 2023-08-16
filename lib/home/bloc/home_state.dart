part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.tag,
  });

  final HouseTag tag;

  static HomeState initial() {
    return const HomeState(
      tag: HouseTag.popular,
    );
  }

  HomeState copyWith({
    HouseTag? tag,
  }) {
    return HomeState(
      tag: tag ?? this.tag,
    );
  }

  @override
  List<Object?> get props => [
        tag,
      ];
}
