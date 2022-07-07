import 'package:app_test_setup/store/app_color.dart';
import 'package:app_test_setup/views/components/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String nameDefault = "admin";
  String passDefault = "123";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text('Gitiho',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.pink,
                      fontWeight: FontWeight.w500)),
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
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(90)),
                      ))),
                  child: const Text('Đăng nhập'),
                  onPressed: () {
                    if (nameController.text == nameDefault &&
                        passController.text == passDefault) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomePage())),
                          (route) => false);
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Thông báo'),
                              content: const Text(
                                  'Tên tài khoản hoặc mật khẩu không chính xác'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Oki'))
                              ],
                            );
                          });
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }
}
