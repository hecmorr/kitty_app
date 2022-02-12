import 'package:flutter/material.dart';
import 'package:kitty/cats/bloc/cats_bloc.dart';
import 'package:kitty/widgets/glass_morphine.dart';

import 'package:provider/provider.dart';

class ButtonMeow extends StatelessWidget {
  const ButtonMeow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //The # so the call to the API could be refreshed
        PaintingBinding.instance?.imageCache?.clear();
        context.read<CatsBloc>().add(CatGifRefreshed());
      },
      child: const GlassMorphism(
        blur: 20,
        opacity: 0.3,
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Meeooww',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
