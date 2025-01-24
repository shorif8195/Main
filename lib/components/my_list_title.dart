import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final IconData icon;
  const MyListTitle(
      {super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
        title: Text(text),
        onTap: onTap,
      ),
    );
  }
}
