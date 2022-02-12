part of 'cats_bloc.dart';

abstract class CatsEvent extends Equatable {
  const CatsEvent();

  @override
  List<Object> get props => [];
}

class CatGifRefreshed extends CatsEvent {}
