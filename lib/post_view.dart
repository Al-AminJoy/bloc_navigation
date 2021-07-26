import 'package:bloc_navigation/nav_cubit.dart';
import 'package:bloc_navigation/post_cubit.dart';
import 'package:bloc_navigation/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class PostView extends StatefulWidget {
  const PostView({Key key}) : super(key: key);

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post'),),
      body: BlocBuilder<PostCubit,List<Post>>(
        builder: (context, posts) {
          if(posts?.isEmpty??true){
            return Center(child: CircularProgressIndicator(),);
          }
          else {
            return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(posts[index].title),
                      onTap: ()=>
                          BlocProvider
                              .of<NavCubit>(context)
                              .showPostDetails(posts[index]),),
                  );
                });
          }
        },
      ),
    );
  }
}
