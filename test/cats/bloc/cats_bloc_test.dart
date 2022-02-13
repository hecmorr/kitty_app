// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';

import 'package:kitty/cats/bloc/cats_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('CatsBloc', () {
    blocTest<CatsBloc, CatsState>(
        'emits CatsLoadSuccess when CatGifRegreshes is added',
        build: () => CatsBloc(),
        act: (bloc) => bloc.add(CatGifRefreshed()),
        wait: Duration(seconds: 1),
        expect: () => [
              CatsLoadInProgress(),
              CatsLoadSuccess('https://cataas.com/cat/gif')
            ]);
  });
}
