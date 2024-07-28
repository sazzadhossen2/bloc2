import 'package:equatable/equatable.dart';

import 'model/user_cubit_model.dart';

abstract class UserCubitState extends Equatable{
  UserCubitState();
}
class UserCubitInit extends UserCubitState{
  @override
  List<Object?> get props => [];

}

class UserCubitLoading extends UserCubitState{
  @override
  List<Object?> get props => [];

}

class UserCubitDataLoaded extends UserCubitState{
  List<UserModel>usermodel;
  UserCubitDataLoaded({required this.usermodel});
  @override
  List<Object?> get props => [usermodel];

}

class UserCubitError extends UserCubitState{
  String userError;
  UserCubitError({required this.userError});
  @override
  List<Object?> get props => [userError];

}
