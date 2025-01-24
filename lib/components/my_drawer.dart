import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:main/components/my_list_title.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          DrawerHeader(
              child: Center(
            child: Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          )),
          const SizedBox(
            height: 25,
          ),
          MyListTitle(
            text: 'Shop',
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyListTitle(
            text: 'Cart',
            icon: Icons.shopping_cart,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/cart_page');
            },
          ),
          MyListTitle(
            text: 'Exit',
            icon: Icons.logout,
            onTap: () {
              onPressed:
              FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
    );
  }
}
