import 'package:blind_color/features/auth/data/model/log_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../data/model/register_model.dart';
import '../../../../data/repo/user_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  UserRepo userRepo;

  AuthCubit({required this.userRepo}) : super(AuthInitial());

  Future<void> userLogin(LogModel userEntity) async {
    emit(AuthLoading());
    try {
      var respon = await userRepo.userLogin(userEntity);
      emit(AuthSuccess(respon));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> userRegister(RegisterModel userEntity) async {
    emit(AuthLoading());
    try {
      var respon = await userRepo.userRegister(userEntity);
      emit(AuthSuccess(respon));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }
}
