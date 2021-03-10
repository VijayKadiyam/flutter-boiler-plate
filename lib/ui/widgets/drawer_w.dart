import 'package:aethon_app_1/core/providers/config_pr.dart';
import 'package:aethon_app_1/locator.dart';
import 'package:aethon_app_1/ui/shared/images_sh.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final ConfigModel _configModel = locator<ConfigModel>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: DrawerHeader(
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Hero(
                        tag: '123',
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: _configModel.user.attachment != null
                              ? NetworkImage(
                                  _configModel.apiConfig['mediaURL'] +
                                      _configModel.user.attachment,
                                )
                              : AssetImage(Images.avatar),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _configModel.user.firstName,
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Inspector',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text('Are you sure you want to logout?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('NO'),
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                          await _configModel.removeLoginData();
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        child: Text('YES'),
                      ),
                    ],
                  ),
                );
              },
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
