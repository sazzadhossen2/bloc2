import 'package:bloc2/bloc2/post_event.dart';
import 'package:bloc2/bloc2/post_states.dart';
import 'package:bloc2/bloc2/repository/post_repository.dart';
import 'package:bloc2/bloc2/utils/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBloc extends Bloc<PostEvent, PostStates> {
  final PostRepository postRepository=PostRepository();

  PostBloc() : super(PostStates()) {
    on<PostFetch>(_fetchPostApi);
  }

  void _fetchPostApi(PostFetch event, Emitter<PostStates> emit)async {
   await postRepository.fatchPost().then((value) {
      emit(state.copyWith(
        postStatus: PostStatus.success,
        message: "Success",
        postList: value,
      ));
    }).catchError((error, stackTrace) {
      emit(state.copyWith(
        postStatus: PostStatus.failed,
        message: error.toString(),
      ));
    });
  }
}
