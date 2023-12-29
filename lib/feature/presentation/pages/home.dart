import 'package:blocone/feature/presentation/bloc/home/home_event.dart';
import 'package:blocone/feature/presentation/bloc/home/home_stat.dart';
import 'package:blocone/feature/presentation/widgets/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home/home_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeBloc homeBloc;


  @override
  void initState() {
    super.initState();
    homeBloc = BlocProvider.of(context);
    homeBloc.add(HomePostLoadEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeBloc,HomeState>(
        builder: (BuildContext context,HomeState state) {
          if(state is HomeErrorState){
            return Center(
              child: Text(state.error),
            );
          }
          if(state is HomeLoadedState) {
            return HomeBodyWidget(post: state.post);
          }
          return HomeLoadingWidget();
        }
      ),
    );
  }
}
