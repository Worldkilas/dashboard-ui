import 'package:dashboard_ui/const/constant.dart';
import 'package:dashboard_ui/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    //instantiated side menu data class
    final data = SideMenuData();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => buildMenuEntry(data, index),
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    final bool isSelected = selectedIndex == index;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: isSelected ? selectionColor : Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: ListTile(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        title: Text(
          data.menu[index].title,
          style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.normal),
        ),
        leading: Icon(
          data.menu[index].icon,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
