import 'package:app_test_setup/views/components/login.dart';
import 'package:app_test_setup/views/layouts/appbar.dart';
import "package:flutter/material.dart";

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Chương trình đầu tiên'),
//         backgroundColor: Colors.pink.shade100,
//       ),
//       body: const Center(
//           child: Text(
//         'Giới thiệu chương trình đầu tiên của tôi 2',
//       )),
//       endDrawer: Drawer(
//           elevation: 20,
//           backgroundColor: Colors.pink.shade100,
//           child: ListView(
//             children: const [
//               SizedBox(
//                 height: 64,
//                 child: DrawerHeader(
//                     child: Text(
//                   'Welcome to MyApp',
//                   style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white),
//                 )),
//               ),
//               ListTile(
//                 textColor: Colors.white,
//                 iconColor: Colors.white,
//                 title: Text('Dashboard'),
//                 leading: Icon(Icons.dashboard),
//               ),
//               ListTile(
//                 textColor: Colors.white,
//                 iconColor: Colors.white,
//                 title: Text('Course'),
//                 leading: Icon(Icons.book_outlined),
//               ),
//               ListTile(
//                 textColor: Colors.white,
//                 iconColor: Colors.white,
//                 title: Text('Invite'),
//                 leading: Icon(Icons.add_box_outlined),
//               ),
//               ListTile(
//                 textColor: Colors.white,
//                 iconColor: Colors.white,
//                 title: Text('Dashboard'),
//               ),
//               ListTile(
//                 textColor: Colors.white,
//                 iconColor: Colors.white,
//                 title: Text('Dashboard'),
//               ),
//               ListTile(
//                 textColor: Colors.white,
//                 iconColor: Colors.white,
//                 title: Text('Dashboard'),
//               ),
//             ],
//           )),
//       floatingActionButton: FloatingActionButton(
//         // ignore: sort_child_properties_last
//         child: const Icon(Icons.add),
//         backgroundColor: Colors.pink.shade100,
//         onPressed: () {},
//       ),
//       persistentFooterButtons: [
//         ElevatedButton(
//             onPressed: () {},
//             child: const Icon(
//               Icons.add,
//               color: Colors.white,
//             )),
//         ElevatedButton(
//           onPressed: () {},
//           child: const Icon(
//             Icons.clear,
//             color: Colors.white,
//           ),
//         )
//       ],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (int index) {},
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Search',
//               activeIcon: Icon(Icons.home)),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle), label: 'Profile')
//         ],
//       ),
//     );
//   }
// }

class ActiveNavigationBar extends StatefulWidget {
  const ActiveNavigationBar({Key? key}) : super(key: key);

  @override
  State<ActiveNavigationBar> createState() => _ActiveNavigationBarState();
}

class _ActiveNavigationBarState extends State<ActiveNavigationBar> {
  var index = 1;
  int _volume = 0;
  String dropValue = 'javasript';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBarLess(
        appBar: AppBar(),
        title: const Text('Home Page'),
      ),
      endDrawer: Drawer(
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                child: TextButton(
                  onPressed: () {
                    print('Click text btn');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red.shade300)),
                  child: Text('Nút Text Button bg'),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    print('Click text btn');
                  },
                  child: Text('Nút Text Button ol'),
                ),
              ),
              Container(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.navigation),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.navigation),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: DropdownButton<String>(
                  value: dropValue,
                  onChanged: (String? newVal) {
                    setState(() {
                      dropValue = newVal!;
                    });
                  },
                  items: <String>['javasript', 'php', 'C#', 'java,']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      InkWell(
                        child: Icon(Icons.ring_volume),
                        onTap: () {
                          setState(() {
                            _volume += 2;
                          });
                        },
                      ),
                      Text(_volume.toString())
                    ],
                  ))
            ],
          )
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   // ignore: sort_child_properties_last
      //   child: const Icon(Icons.add),
      //   backgroundColor: Colors.pink.shade100,
      //   onPressed: () {},
      // ),

      /*
      | Ít khi sử dụng
      |
      */
      // persistentFooterButtons: [
      //   ElevatedButton(
      //       onPressed: () {},
      //       child: const Icon(
      //         Icons.add,
      //         color: Colors.white,
      //       )),
      //   ElevatedButton(
      //     onPressed: () {},
      //     child: const Icon(
      //       Icons.clear,
      //       color: Colors.white,
      //     ),
      //   )
      // ],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        fixedColor: Colors.pink.shade100,
        backgroundColor: Colors.white70,
        unselectedItemColor: Colors.grey.shade500,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profile')
        ],
        onTap: (int itemIndex) {
          setState(() {
            index = itemIndex;
          });
        },
      ),
    );
  }
}

Container contentContainer() {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.green),
          child: const Text(
            "React.js",
            style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.green),
          child: const Text(
            "Flutter",
            style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.green),
          child: const Text(
            "MySQL",
            style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
          ),
        )
      ],
    ),
  );
}

// Sử dụng TextField
// input trong Fullter

Column loginForm() {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Padding(
        padding: EdgeInsets.all(10),
        child: Text('Gitiho',
            style: TextStyle(
                fontSize: 25, color: Colors.pink, fontWeight: FontWeight.w500)),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: nameController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(90)),
              ),
              labelText: 'Tên đăng nhập',
              hintText: 'Nhập tên đăng nhập'),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: passController,
          obscureText: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(90)),
            ),
            labelText: 'Mật khẩu',
            hintText: 'Nhập mật khẩu',
          ),
        ),
      ),
      Container(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.pink.shade100),
                minimumSize:
                    MaterialStateProperty.all(const Size.fromHeight(50)),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90)),
                ))),
            child: const Text('Đăng nhập'),
            onPressed: () {
              // Giá trị được sử dụng làm gì
              print(nameController.text + "--" + passController.text);
            },
          )),
    ],
  );
}

Row listBtn() {
  String dropValue = 'javasript';
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          Container(
            child: TextButton(
              onPressed: () {
                print('Click text btn');
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.red.shade300)),
              child: Text('Nút Text Button bg'),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {
                print('Click text btn');
              },
              child: Text('Nút Text Button ol'),
            ),
          ),
          Container(
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.navigation),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.navigation),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: DropdownButton<String>(
              value: dropValue,
              onChanged: (String? newVal) {
                print(newVal);
              },
              items: <String>['javasript', 'php', 'C#', 'java,']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          )
        ],
      )
    ],
  );
}
