import 'package:dartz/dartz.dart';

import '../../data/datasource/remote/remote_datasource.dart';
import '../../data/model/post_model.dart';

class DataUseCase{
  static Future<Either<String, List<Post>>> call(){
    return RemoteDataSource().getPost();
  }
}