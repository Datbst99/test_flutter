import 'package:app_test_setup/views/layouts/appbar.dart';
import 'package:app_test_setup/views/layouts/sidebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBarLess(
          appBar: AppBar(),
          title: const Text('Trang chủ'),
        ),
        endDrawer: const AppSidebar());
  }
}
