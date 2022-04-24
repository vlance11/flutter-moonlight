import 'package:flutter/material.dart';
import 'package:moonlight/views/example/load_local_image.dart';

import '../constants/app.dart';
import '../constants/routes.dart';
import '../utils/tools.dart';
import 'drawer-tile.dart';

class MoonLightDrawer extends StatelessWidget {
  final String currentPage;
  const MoonLightDrawer(this.currentPage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            //color: WhiteColor,
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
          ),
          accountEmail: Text("raviyatechnical@gmail.com"),
          accountName: Text("Bhargav Raviya"),
          currentAccountPicture: Image.network(
            "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
            fit: BoxFit.cover,
          ),
        ),
      ),

      DrawerTile(
        title: "Home",
        icon: Icons.home,
        onTap: () {
          Navigator.of(context).pushNamed(rootRoute);
        },
      ),
      DrawerTile(
        title: "Grid View",
        icon: Icons.home,
        onTap: () {
          Navigator.of(context).popAndPushNamed(GridViewRoute);
        },
      ),
      DrawerTile(
        title: "Load Local Image",
        icon: Icons.home,
        onTap: () {
          Navigator.of(context).popAndPushNamed(LoadLocalImageRoute);
        },
      ),
      DrawerTile(
        title: "Load Local JSON",
        icon: Icons.home,
        onTap: () {
          Navigator.of(context).popAndPushNamed(LoadLocalJSONRoute);
        },
      ),
      DrawerTile(
        title: "Load More Using API",
        icon: Icons.home,
        onTap: () {
          Navigator.of(context).popAndPushNamed(LoadMoreUsingAPIRoute);
        },
      ),
      DrawerTile(
        title: "Buttons Example",
        icon: Icons.home,
        onTap: () {
          Navigator.of(context).popAndPushNamed(ButtonsExampleRoute);
        },
      ),
      DrawerTile(
        title: "Input Fields Example",
        icon: Icons.home,
        onTap: () {
          Navigator.of(context).popAndPushNamed(InputFieldsExampleRoute);
        },
      ),

      // DrawerTile(
      //   title: "Logout",
      //   icon: Icons.logout,
      //   onTap: () {
      //     Navigator.of(context).pushNamed(Routes.initRoute);
      //   },
      // ),
      Divider(),
      // Center(
      //     child: Text(
      //   "Application",
      //   style: TextStyle(fontWeight: FontWeight.bold),
      // )),
      DrawerTile(
        title: "Privacy Policy",
        icon: Icons.gavel,
        onTap: () => launchURL(appPrivacyPolicyURL),
      ),
      DrawerTile(
        title: "Terms & Conditions",
        icon: Icons.description,
        onTap: () => launchURL(appTermsConditionsURL),
      ),

      DrawerTile(
        title: "Share the App",
        icon: Icons.share,
        onTap: () {
          CustomShare('check out my website https://example.com');
        },
      ),
      DrawerTile(title: "Rate This App", icon: Icons.star, onTap: () {}),
      // DrawerTile(
      //   title: "Settings",
      //   icon: Icons.settings,
      //   onTap: () {
      //     Navigator.of(context).pushNamed(Routes.settingsRoute);
      //   },
      // ),
    ])));
  }
}
