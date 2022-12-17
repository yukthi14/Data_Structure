import 'dart:async';

import 'package:data_structure/main.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(title: 'Data Structure',),
          ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration:  BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/image/boy.png'),
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
            borderRadius: BorderRadius.circular(60),
            border: Border.all(
              width: 3,
              color: Colors.black87,
            ),
          ),
        ),
      ),

    );
  }
}

