import "package:flutter/material.dart";

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chương trình đầu tiên'),
        backgroundColor: Colors.pink.shade100,
      ),
      body: const Center(
          child: Text(
        'Giới thiệu chương trình đầu tiên của tôi 2',
      )),
      drawer: Drawer(
          backgroundColor: Colors.pink.shade100,
          child: ListView(
            children: [
              DrawerHeader(
                  child: RichText(
                text: const TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: 'Welcom to MyApp 2 \n',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                          text: 'App dành được tạo ra từ người mới bắt đầu',
                          style: TextStyle())
                    ]),
              )),
            ],
          )),
    );
  }
}
