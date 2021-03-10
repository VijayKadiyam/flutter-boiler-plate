import 'package:aethon_app_1/ui/shared/dimensions_sh.dart';
import 'package:aethon_app_1/ui/shared/images_sh.dart';
import 'package:aethon_app_1/ui/widgets/drawer_w.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('I-ADMIN'),
      ),
      body: SafeArea(
        child: Container(
          height: Dimensions().getHeight(context),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.background),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Row(
              children: [
                Text('Hi'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
