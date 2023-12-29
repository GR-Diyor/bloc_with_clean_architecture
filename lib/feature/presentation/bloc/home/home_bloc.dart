
import 'package:blocone/feature/presentation/bloc/home/home_event.dart';
import 'package:blocone/feature/presentation/bloc/home/home_stat.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../business_logic/usecase/data_usecase.dart';
import '../../../data/model/post_model.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc():super(HomeInitState()){
    on<HomePostLoadEvent>(getPost);
  }

  Future<void> getPost(HomePostLoadEvent homePostLoadEvent,Emitter<HomeState> emit)async {
       emit(HomeLoadingState());
      Either<String,List<Post>>
      data = await DataUseCase.call();
        data.fold(
          //if left
            (l)=>emit(HomeErrorState(l)),
                //if right
                (r)=> emit(HomeLoadedState(r))
        );
    }

  
}