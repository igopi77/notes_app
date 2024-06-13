import 'package:flutter/material.dart';
import 'package:notes_app/component/utils/color.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colorss.backgroundColor,
      child: ListView(
        children: const [
          ListTile(
            leading: Icon(
              Icons.lightbulb,
              color: Colors.white,
            ),
            title: Text(
              "Notes",
              style: TextStyle(
                fontFamily: "semiBold",
                color: Colors.white,
                fontSize: 16
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.label_important_outline,
              color: Colors.white,
            ),
            title: Text(
              "Catagories",
              style: TextStyle(
                  fontFamily: "semiBold",
                  color: Colors.white,
                  fontSize: 16
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.recycling,
              color: Colors.white,
            ),
            title: Text(
              "Bin",
              style: TextStyle(
                  fontFamily: "semiBold",
                  color: Colors.white,
                  fontSize: 16
              ),
            ),
          ),
        ],
      ),
    );
  }
}
