import 'package:blind_color/features/splash/presentation/view/screens/onboarding%20view.dart';
import 'package:flutter/material.dart';
import '../../../features/category/presentation/view/screens/my clothes.dart';
import '../../../features/homePage/presentation/view/screens/chooseOutfit.dart';
import '../../../features/homePage/presentation/view/screens/homePage.dart';
import '../../../features/auth/presentation/view/screens/login.dart';
import '../../../features/homePage/presentation/view/screens/matchOutfit.dart';
import '../../../features/homePage/presentation/view/screens/recognizeColor.dart';
import '../../../features/auth/presentation/view/screens/register.dart';
import '../../../features/auth/presentation/view/screens/resetPassword.dart';
import '../../../features/homePage/presentation/view/screens/scanOutfit.dart';
import '../../../features/profile/presentation/view/screens/editProfile.dart';
import '../../../features/profile/presentation/view/screens/privacy.dart';
import '../../../features/profile/presentation/view/screens/profile.dart';
import '../../../features/profile/presentation/view/screens/setting.dart';
import '../../../features/splash/presentation/view/screens/splash.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/OnBoarding";
  static const String loginRoute = "/Login";
  static const String registerRoute = "/Register";
  static const String resetPasswordRoute = "/ResetPassword";
  static const String homePageRoute = "/HomePage";
  static const String myClothesRoute = "/MyClothes";
  static const String profileRoute = "/Profile";
  static const String chooseOutfitRoute = "/ChooseOutfit";
  static const String privacyRoute = "/Privacy";
  static const String settingRoute = "/Setting";
  static const String editProfileRoute = "/EditProfile";
  static const String recognizeColorRoute = "/RecognizeColor";
  static const String matchOutfitRoute = "/MatchOutfit";
  static const String scanOutfitRoute = "/ScanOutfit";
}

class RouteGenerator {
  static Route<dynamic> getRute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.resetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ResetPasswordView());
      case Routes.homePageRoute:
        return MaterialPageRoute(builder: (_) => const HomePageView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.myClothesRoute:
        return MaterialPageRoute(builder: (_) => const MyClothesView());
      case Routes.profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.privacyRoute:
        return MaterialPageRoute(builder: (_) => const PrivacyView());
      case Routes.settingRoute:
        return MaterialPageRoute(builder: (_) => const SettingView());
      case Routes.chooseOutfitRoute:
        return MaterialPageRoute(builder: (_) => const ChooseOutfitView());
      case Routes.editProfileRoute:
        return MaterialPageRoute(builder: (_) => const EditProfileView());
      case Routes.recognizeColorRoute:
        return MaterialPageRoute(builder: (_) => const RecognizeColorView());
      case Routes.matchOutfitRoute:
        return MaterialPageRoute(builder: (_) => const MatchOutfitView());
      case Routes.scanOutfitRoute:
        return MaterialPageRoute(builder: (_) => const ScanOutfitView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No Rout Found"),
              ),
              body: const Text("No Rout Found"),
            ));
  }
}
