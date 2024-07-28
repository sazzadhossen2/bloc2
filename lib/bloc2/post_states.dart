import 'package:bloc2/bloc2/utils/enums.dart';
import 'package:equatable/equatable.dart';

import 'model/post_models.dart';

class PostStates extends Equatable {
  final PostStatus postStatus;
  final List<PostModel> postList;
  final String message; // Corrected the typo from 'massage' to 'message'

  PostStates({
    this.postStatus = PostStatus.loading,
    this.postList = const [], // Use const for default values where possible
    this.message = '',
  });

  PostStates copyWith({
    PostStatus? postStatus, // Fixed parameter name
    List<PostModel>? postList, // Fixed parameter name
    String? message, // Corrected the typo from 'massage' to 'message'
  }) {
    return PostStates(
      postStatus: postStatus ?? this.postStatus,
      postList: postList ?? this.postList,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props =>
      [postStatus, postList, message]; // Include properties in props
}
