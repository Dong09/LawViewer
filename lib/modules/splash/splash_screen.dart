import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.hourglass_bottom_rounded,
            color: Colors.blue[300],
            size: 38.0,
          ),
          const Text(
            "Loading...",
            style: TextStyle(fontSize: 30.0),
          )
        ],
      ),
    );
  }
}
