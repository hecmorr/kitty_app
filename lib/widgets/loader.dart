import 'package:flutter/material.dart';

class LoaderDisplay extends StatelessWidget {
  const LoaderDisplay({
    Key? key,
    required Size screenSize,
  })  : _screenSize = screenSize,
        super(key: key);

  final Size _screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        child: SizedBox(
          height: _screenSize.height * 0.55,
          width: _screenSize.width * 0.6,
          child: Image.asset(
            'assets/loader.gif',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
