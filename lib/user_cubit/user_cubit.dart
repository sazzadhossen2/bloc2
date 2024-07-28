import 'package:bloc/bloc.dart';
import 'package:bloc2/user_cubit/user_cubit_state.dart';

import 'api_service.dart';
import 'model/user_cubit_model.dart';

class UserCubit extends Cubit<UserCubitState>{
  List<UserModel>userlist=[];
  ApiService apiService;
  UserCubit({required this.apiService}):super(UserCubitInit());

void getAllUserList()async{
  emit(UserCubitLoading());


}
}