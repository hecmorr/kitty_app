import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cats_event.dart';
part 'cats_state.dart';

class CatsBloc extends Bloc<CatsEvent, CatsState> {
  CatsBloc() : super(const CatsLoadSuccess('https://cataas.com/cat/gif')) {
    on<CatGifRefreshed>(_onJokeFetched);
  }

  Future<void> _onJokeFetched(
    CatGifRefreshed event,
    Emitter<CatsState> emit,
  ) async {
    emit(CatsLoadInProgress());

    await Future<void>.delayed(const Duration(seconds: 1));

    emit(const CatsLoadSuccess('https://cataas.com/cat/gif'));
  }
}
