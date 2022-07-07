import 'package:app_test_setup/views/components/card.dart';
import 'package:app_test_setup/views/components/form.dart';
import 'package:app_test_setup/views/components/home.dart';
import 'package:app_test_setup/views/components/image.dart';
import 'package:app_test_setup/views/components/login.dart';
import 'package:flutter/material.dart';

import '../../store/app_color.dart';

class AppSidebar extends StatefulWidget {
  const AppSidebar({Key? key}) : super(key: key);

  @override
  State<AppSidebar> createState() => _AppSidebarState();
}

class _AppSidebarState extends State<AppSidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppColor.mainColor,
        child: ListView(
          children: [
            const SizedBox(
              height: 64,
              child: DrawerHeader(
                  child: Text(
                'Welcome to MyApp',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )),
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              title: Text('Dashboard'),
              leading: Icon(Icons.dashboard),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: ((context) => const HomePage())),
                    (route) => false);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              title: Text('Form Flutter'),
              leading: Icon(Icons.table_bar),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: ((context) => const FormPage())),
                    (route) => false);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              title: Text('Image'),
              leading: Icon(Icons.image),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ImagePage())),
                    (route) => false);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              title: Text('Card'),
              leading: Icon(Icons.card_travel),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: ((context) => const CardPage())),
                    (route) => false);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              title: Text('Dashboard'),
              onTap: () {},
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              title: Text('Đăng Xuất'),
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: ((context) => LoginPage())),
                    (route) => false);
              },
            ),
          ],
        ));
  }
}
