import 'package:aethon_app_1/ui/routing/routes.dart';
import 'package:aethon_app_1/ui/views/auth/login_p.dart';
import 'package:aethon_app_1/ui/views/home_p.dart';
import 'package:aethon_app_1/ui/views/root_p.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case root:
      return MaterialPageRoute(builder: (BuildContext context) {
        return RootPage();
      });
    case login:
      return MaterialPageRoute(builder: (BuildContext context) {
        return LoginPage();
      });
    case home:
      return MaterialPageRoute(builder: (BuildContext context) {
        return HomePage();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return HomePage();
      });
  }
}
