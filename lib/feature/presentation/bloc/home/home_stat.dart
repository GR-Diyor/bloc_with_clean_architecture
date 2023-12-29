import 'package:blocone/feature/data/model/post_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeState extends Equatable{
  late List<Post> post;
  @override
  // TODO: implement props
  List<Post> get props => [];

}
@immutable
class HomeInitState extends HomeState{
  late List<Post> post;
  @override
  // TODO: implement props
  List<Post> get props => [];
}
@immutable
class HomeLoadingState extends HomeState{
  late List<Post> post;
  @override
  // TODO: implement props
  List<Post> get props => [];
}
@immutable
class HomeLoadedState extends HomeState{
  HomeLoadedState(this.post);
  final List<Post> post;
  @override
  // TODO: implement props
  List<Post> get props => [];
}
@immutable
class HomeErrorState extends HomeState{
  HomeErrorState(this.error);
  final String error;
}