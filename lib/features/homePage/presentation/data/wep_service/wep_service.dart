
import 'package:blind_color/core/const.dart';
import 'package:blind_color/features/homePage/presentation/data/model/color_palette.dart';
import 'package:dio/dio.dart';

class ColorWebServices {
  late Dio dio;

  WebServices() {
    BaseOptions option = BaseOptions(
      baseUrl: Apis.BaseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 30),
      receiveTimeout: Duration(seconds: 30),
    );
    dio = Dio(option);
    dio.options.followRedirects = true;
  }

  Future<List<ColorInfo>> getColorpalett() async {
    try {
      Response response = await dio.get(
        'categories/65ecba3bce8a5a3dbefa7f12/subcategories?page=*&limit=*',
      );
      print(response.data['results'] as List);
      final List decodedJson = response.data['results'] as List;
      final List<ColorInfo> colorModel = decodedJson
          .map<ColorInfo>((jsonCartModel) => ColorInfo.fromJson(jsonCartModel))
          .toList();
      return colorModel;
    } on DioError catch (e) {
      print(e.toString());
      print('DioException [bad response]: ${e.response}');
      print('Response Data: ${e.response?.data.toString()}');
      throw e;
    }
  }
}
