

import 'package:blocone/core/helper/network_info.dart';
import 'package:blocone/feature/presentation/bloc/home/home_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => NetworkInfo(sl()));

  sl.registerFactory(() => HomeBloc());
}
