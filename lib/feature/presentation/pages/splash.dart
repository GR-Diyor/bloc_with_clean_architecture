import 'package:blocone/feature/presentation/pages/home.dart';
import 'package:blocone/feature/presentation/widgets/splash_widget.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    next();
    super.initState();
  }
  ///this code not used bloc of state management.
  ///Future will be...
  void next(){
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.greenAccent,

        body: SplashWidget());
  }
}
