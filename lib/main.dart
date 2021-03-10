import 'package:aethon_app_1/core/providers/auth_pr.dart';
import 'package:aethon_app_1/core/providers/config_pr.dart';
import 'package:aethon_app_1/locator.dart';
import 'package:aethon_app_1/ui/routing/router.dart';
import 'package:aethon_app_1/ui/shared/fonts_sh.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ConfigModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: generateRoute,
        theme: ThemeData(
          // primarySwatch: Colors.purple,
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                    fontFamily: Fonts.primaryFont,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          ),
          textTheme: ThemeData.light().textTheme.copyWith(
                headline5: TextStyle(
                  fontFamily: Fonts.primaryFont,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                headline6: TextStyle(
                  fontFamily: Fonts.primaryFont,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                subtitle1: TextStyle(
                  fontFamily: Fonts.primaryFont,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                subtitle2: TextStyle(
                  fontFamily: Fonts.primaryFont,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                bodyText1: TextStyle(
                  fontFamily: Fonts.primaryFont,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                bodyText2: TextStyle(
                  fontFamily: Fonts.primaryFont,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                button: TextStyle(
                  fontFamily: Fonts.primaryFont,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
    );
  }
}
