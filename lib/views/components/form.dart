import 'package:app_test_setup/store/app_color.dart';
import 'package:app_test_setup/views/layouts/appbar.dart';
import 'package:app_test_setup/views/layouts/sidebar.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBarLess(
        appBar: AppBar(),
        title: const Text('Flutter Form'),
      ),
      endDrawer: const AppSidebar(),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: const Text(
                    'Thay đổi thông tin',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Tên đăng nhập', icon: Icon(Icons.person)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng điền tên đăng nhập';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Số điện thoại', icon: Icon(Icons.phone)),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: ElevatedButton(
                      child: const Text('Submit'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a Snackbar.
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Data is in processing.')));
                        }
                      },
                    ))
              ],
            ),
          )),
    );
  }
}
