

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/presentation/app/app.dart';
import 'feature/presentation/bloc/home/home_bloc.dart';


void main() {
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => HomeBloc(),
        ),
      ],
      child: const MyApp()));
}

