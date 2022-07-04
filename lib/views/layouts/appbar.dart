import 'package:flutter/material.dart';

class BaseAppBarLess extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final AppBar appBar;
  final Color? backGroundColor;
  final List<Widget>? widgets;
  static const defaultColor = Color.fromRGBO(248, 187, 208, 1);

  const BaseAppBarLess(
      {Key? key,
      required this.title,
      required this.appBar,
      this.widgets,
      this.backGroundColor})
      : super(key: key);

  @override
  Size get preferredSize => appBar.preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backGroundColor ?? defaultColor,
      actions: widgets,
    );
  }
}

class BaseAppBarFull extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? widgets;

  const BaseAppBarFull({Key? key, required this.title, this.widgets})
      : super(key: key);

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;

  @override
  State<BaseAppBarFull> createState() => _BaseAppBarFullState();
}

class _BaseAppBarFullState extends State<BaseAppBarFull> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      actions: widget.widgets,
    );
  }
}
