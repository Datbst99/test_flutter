import 'package:app_test_setup/views/layouts/appbar.dart';
import 'package:app_test_setup/views/layouts/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBarLess(
        appBar: AppBar(),
        title: const Text('Flutter Card'),
      ),
      endDrawer: AppSidebar(),
      body: Center(
        child: Card(
          shape: StadiumBorder(),
          elevation: 5,
          shadowColor: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Test sử dụng card trong flutter'),
          ),
        ),
      ),
    );
  }
}
