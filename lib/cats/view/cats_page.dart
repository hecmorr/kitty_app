import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitty/cats/bloc/cats_bloc.dart';
import '../../widgets/background_painter.dart';
import '../../widgets/button_meow.dart';
import '../../widgets/loader.dart';

class CatsPage extends StatelessWidget {
  const CatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CatsBloc(),
      child: const CatsView(),
    );
  }
}

class CatsView extends StatelessWidget {
  const CatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    GlobalKey key = GlobalKey();

    return Scaffold(
      body: CustomPaint(
        painter: BackgroundPainter(),
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Center(
              child: Text(
                'Kitty Azumo',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            BlocBuilder<CatsBloc, CatsState>(
              builder: (context, state) {
                if (state is CatsLoadFailure) {
                  return const Text('Error ocurred while fetching the gif');
                } else if (state is CatsLoadSuccess) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      child: SizedBox(
                        height: _screenSize.height * 0.55,
                        width: _screenSize.width * 0.8,
                        child: Image.network(
                          state.url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }
                return LoaderDisplay(screenSize: _screenSize);
              },
            ),
            const Align(child: ButtonMeow()),
          ],
        ),
      ),
    );
  }
}
