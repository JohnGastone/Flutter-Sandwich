import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/fryer2.png'),
          fit:  BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black54,
              BlendMode.darken),
        ),


      ),

    );
  }
}