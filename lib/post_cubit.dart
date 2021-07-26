
import 'package:bloc_navigation/post_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data_service.dart';

class PostCubit extends Cubit<List<Post>>{
  final _dataService = DataService();
  PostCubit() : super([]);

  void getPosts () async => emit(await _dataService.getPosts());
  }
