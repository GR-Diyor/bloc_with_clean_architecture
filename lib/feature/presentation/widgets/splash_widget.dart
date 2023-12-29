import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return  Center(child: Text("Clean Architecture",style: TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color,
    fontWeight: FontWeight.w700,fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize
    ),));
  }
}
