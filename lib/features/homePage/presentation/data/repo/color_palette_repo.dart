import 'package:blind_color/features/homePage/presentation/data/model/color_palette.dart';
import 'package:blind_color/features/homePage/presentation/data/wep_service/wep_service.dart';

class ColorPaletteRepo {
  final ColorWebServices colorWebServices;

  ColorPaletteRepo(this.colorWebServices);

  Future<List<ColorInfo>> getAllCaracters() async {
    final List<ColorInfo> colorpalett = await colorWebServices.getColorpalett();

    return colorpalett;
  }
}
