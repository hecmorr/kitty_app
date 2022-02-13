// ignore_for_file: prefer_const_constructors

import 'package:kitty/cats/bloc/cats_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('CatsState', () {
    group('CatsInitial', () {
      test('support value comparisson', () {
        expect(CatsInitial(), CatsInitial());
      });
    });

    group('CatsLoadInProgress', () {
      test('support value comparison', () {
        expect(CatsLoadInProgress(), CatsLoadInProgress());
      });
    });
    group('CatsLoadFailure', () {
      test('support value comparison', () {
        expect(CatsLoadFailure(), CatsLoadFailure());
      });
    });
    group('CatsLoadSuccess', () {
      test('support value comparison', () {
        expect(
          CatsLoadSuccess('https://cataas.com/cat/gif'),
          CatsLoadSuccess('https://cataas.com/cat/gif'),
        );
      });
    });
  });
}
