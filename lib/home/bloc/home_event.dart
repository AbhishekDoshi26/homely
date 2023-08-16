part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeTagClickedEvent extends HomeEvent {
  final HouseTag status;

  HomeTagClickedEvent({
    required this.status,
  });

  @override
  List<Object?> get props => [status];
}
