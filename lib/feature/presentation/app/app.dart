import 'package:blocone/core/config/string.dart';
import 'package:blocone/feature/presentation/bloc/home/home_bloc.dart';
import 'package:blocone/feature/presentation/pages/home.dart';
import 'package:blocone/feature/presentation/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: AppString.AppName,
      debugShowCheckedModeBanner: false,
      home: const Splash()
    );
  }
}
