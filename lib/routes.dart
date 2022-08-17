import 'package:flutter/material.dart';
import 'package:nomady_auth/app/presentation/login_page/login_page.dart';
import 'package:nomady_auth/app/presentation/register_page/register_page.dart';
import 'package:nomady_landing/app/presentation/landing_homepage/landing_home_page.dart';
import 'package:nomady_landing/app/presentation/landing_mobile/landing_mobile_page.dart';
import 'package:nomady_landing/app/presentation/landing_web/landing_webpage.dart';
import 'package:nomady_pet_amigo/app/presentation/toogle_page/toogle_page.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/landing':
        return MaterialPageRoute(
          builder: (context) => const LandingHomePage(),
        );
      case '/landingweb':
        return MaterialPageRoute(
          builder: (context) => const LandingWebPage(),
        );
      case '/landingmobile':
        return MaterialPageRoute(
          builder: (context) => const LandingMobilePage(),
        );
      case '/auth':
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case '/register':
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      case '/petamigo':
        return MaterialPageRoute(
          builder: (context) => const TooglePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const LandingHomePage(),
        );
    }
  }
}
