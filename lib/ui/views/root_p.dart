import 'package:aethon_app_1/core/providers/auth_pr.dart';
import 'package:aethon_app_1/core/providers/config_pr.dart';
import 'package:aethon_app_1/locator.dart';
import 'package:aethon_app_1/ui/shared/dimensions_sh.dart';
import 'package:aethon_app_1/ui/shared/images_sh.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  authenticateUser(_, AuthModel authModel, ConfigModel configModel) async {
    // configModel.getApiConfig(domain: 'http://api.sales.aaibuzz.com');
    configModel.getApiConfig(domain: 'http://192.168.29.9:8080');
    await configModel.fetchLoginData();

    if (configModel.loginData.length == 0) {
      Future.delayed(
        Duration.zero,
        () => Navigator.pushReplacementNamed(context, '/login'),
      );
    } else {
      await authModel.login(loginData: configModel.loginData);
      if (configModel.isLoggedIn) {
        Future.delayed(
          Duration.zero,
          () => Navigator.pushReplacementNamed(context, '/home'),
        );
      } else {
        Future.delayed(
          Duration.zero,
          () => Navigator.pushReplacementNamed(context, '/login'),
        );
      }
    }
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      final _authModel = Provider.of<AuthModel>(context, listen: false);
      final _configModel = locator<ConfigModel>();
      authenticateUser(context, _authModel, _configModel);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Dimensions().getHeight(context),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.background),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/img/logo.jpeg',
                  height: 200,
                  width: 200,
                ),
                Text(
                  'Logging you in ...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                CircularProgressIndicator(),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: Text('Cancel'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
