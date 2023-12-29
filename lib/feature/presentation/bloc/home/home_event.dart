import 'package:blocone/feature/data/model/post_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';



@immutable
abstract class HomeEvent extends Equatable{

}

class HomePostLoadEvent extends HomeEvent{
  late final List<Post> post;
  @override
  // TODO: implement props
  List<Post> get props => post;

}