import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitty/cats/bloc/cats_bloc.dart';
import 'package:kitty/cats/view/cats_page.dart';

class CatsApp extends StatelessWidget {
  const CatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CatsBloc>(
            create: (context) => CatsBloc(),
          )
        ],
        child: const CatsPage(),
      ),
    );
  }
}
