import 'package:blind_color/features/auth/data/model/log_model.dart';
import 'package:blind_color/features/auth/data/model/register_model.dart';
import 'package:blind_color/features/auth/data/wep_services/wep_service.dart';
import 'package:flutter/cupertino.dart';

class UserRepo {
  final WebServices webServices;

  UserRepo(this.webServices);

  Future<UserModel> userLogin(LogModel userEntity) async {
    final response = await webServices.userLogin(userEntity);
    debugPrint(response.toString());
    return UserModel.fromJson(response);
  }

  Future<UserModel> userRegister(RegisterModel userEntity) async {
    final response = await webServices.userRegister(userEntity);
    debugPrint(response.toString());
    return UserModel.fromJson(response);
  }
}
