import 'package:kitty/cats/bloc/cats_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('CatsEvent', () {
    group('CatGifRefreshed', () {
      test('supports value comparisson', () {
        expect(CatGifRefreshed(), CatGifRefreshed());
      });
    });
  });
}
