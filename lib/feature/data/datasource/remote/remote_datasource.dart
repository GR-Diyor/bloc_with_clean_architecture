import 'package:blocone/core/config/string.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import '../../../../core/failure/remote_failure.dart';
import '../../model/post_model.dart';

class RemoteDataSource{

  RemoteDataSource(){
    dio = Dio();
    dio
      ..options.baseUrl = AppString.Base
      ..options.connectTimeout = const Duration(seconds: 30000)
      ..options.receiveTimeout = const Duration(seconds: 30000)
      ..httpClientAdapter
      ..options.headers = AppString.Header;
      }


   late final Dio dio;



  Future<Either<String,List<Post>>>getPost()async{
    try {
      ///if you can to use service of http
      //Uri uri = Uri.parse(AppString.Base + AppString.Api_PostList);
      //var response = await http.get(uri, headers: AppString.Header);
      ///dio
      Response<String> response = await dio.get(AppString.Base + AppString.Api_PostList);
      if (response.statusCode == 200) {
        ///http
        //print(response.body);
       // return Right(postFromJson(response.data));
        ///dio
        print(response.data);
        return Right(postFromJson(response.data!));
      }
      if(response is DioException){
        return Left(RemoteFailureHandler.getMessage(response));
      }
      return Left("Server exception:${response.statusCode}");
    }catch(e){
      return Left(e.toString());
    }

  }
}