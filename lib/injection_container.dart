import 'package:blind_color/features/auth/data/repo/user_repo.dart';
import 'package:blind_color/features/auth/data/wep_services/wep_service.dart';
import 'package:blind_color/features/auth/presentation/view/bloc/bloc/auth_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory<AuthCubit>(() => AuthCubit(userRepo: sl()));

  sl.registerLazySingleton<WebServices>(() => WebServices());
  sl.registerLazySingleton<UserRepo>(() => UserRepo(sl()));
  sl.registerLazySingleton<Dio>(() => Dio());
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio
    ..options.connectTimeout = Duration(seconds: 30)
    ..options.receiveTimeout = Duration(seconds: 30);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));

  return dio;
}
