import 'package:bloc_navigation/nav_cubit.dart';
import 'package:bloc_navigation/poat_details_view.dart';
import 'package:bloc_navigation/post_model.dart';
import 'package:bloc_navigation/post_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AppNavigator extends StatelessWidget {
  const AppNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit,Post>(
        builder: (context, post) {
          return Navigator(
            pages: [
              MaterialPage(child: PostView()),
              if(post!=null) MaterialPage(child: PostDetailsView(post: post))
            ],
            onPopPage: (route,result){
              BlocProvider.of<NavCubit>(context).popToPost();
              return route.didPop(result);
            },
          );
        },);
  }
}
