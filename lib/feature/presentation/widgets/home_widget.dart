import 'package:flutter/material.dart';

import '../../data/model/post_model.dart';

class HomeBodyWidget extends StatelessWidget {
  final List<Post> post;
  const HomeBodyWidget({super.key,required this.post});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: post.length,
      itemBuilder:(BuildContext context,int index) {
        return ListTile(
            title: Text(post[index].title,style: TextStyle(fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,color: Colors.black,fontWeight: FontWeight.bold),),
            subtitle: Text(post[index].title,style: TextStyle(fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,color: Colors.grey,),),
          trailing: Text(post[index].id.toString()),
        );
      },
    );
  }
}

Widget HomeLoadingWidget(){
  return const Center(
    child: CircularProgressIndicator(),
  );
}