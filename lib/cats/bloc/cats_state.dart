part of 'cats_bloc.dart';

abstract class CatsState extends Equatable {
  const CatsState();

  @override
  List<Object> get props => [];
}

class CatsInitial extends CatsState {}

class CatsLoadInProgress extends CatsState {}

class CatsLoadFailure extends CatsState {}

class CatsLoadSuccess extends CatsState {
  const CatsLoadSuccess(this.url);

  final String url;

  @override
  List<Object> get props => [url];
}
