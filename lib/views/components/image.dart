import 'package:app_test_setup/views/layouts/appbar.dart';
import 'package:app_test_setup/views/layouts/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBarLess(
          appBar: AppBar(),
          title: const Text('Flutter Image'),
        ),
        endDrawer: const AppSidebar(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/img_1.jpg',
                  width: 500,
                  height: 200,
                ),
              ),
              Container(
                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/img_3.jpg',
                    image:
                        'https://i.pinimg.com/originals/0b/69/07/0b69070a61bcf212fbbb4edd2db9bfdc.jpg'),
              )
            ],
          ),
        ));
  }
}
