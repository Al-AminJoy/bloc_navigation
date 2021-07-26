import 'package:bloc_navigation/app_navigator.dart';
import 'package:bloc_navigation/nav_cubit.dart';
import 'package:bloc_navigation/post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<NavCubit>(
              create: (context) => NavCubit(),
          ),
          BlocProvider<PostCubit>(
            create: (context)=>PostCubit()..getPosts(),
          ),
        ],
        child: AppNavigator(),
      ),);
  }
}
