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
          elevation: 20,
          backgroundColor: Colors.pink.shade100,
          child: ListView(
            children: const [
              SizedBox(
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
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                title: Text('Course'),
                leading: Icon(Icons.book_outlined),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                title: Text('Invite'),
                leading: Icon(Icons.add_box_outlined),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                title: Text('Dashboard'),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                title: Text('Dashboard'),
              ),
              ListTile(
                textColor: Colors.white,
                iconColor: Colors.white,
                title: Text('Dashboard'),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        // ignore: sort_child_properties_last
        child: const Icon(Icons.add),
        backgroundColor: Colors.pink.shade100,
        onPressed: () {},
      ),
    );
  }
}
