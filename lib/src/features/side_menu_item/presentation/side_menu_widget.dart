import 'package:dashboard_ui_app/src/constants/constants.dart';
import 'package:dashboard_ui_app/src/features/side_menu_item/data/menu_data.dart';
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
    final data = MenuData();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => buildMenuEntry(data, index),
      ),
    );
  }

  Widget buildMenuEntry(MenuData data, int index) {
    final isSelectedIndex = selectedIndex == index;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
        color: isSelectedIndex ? kselectionColor : Colors.transparent,
      ),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menu[index].icon,
                color: isSelectedIndex ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                color: isSelectedIndex ? Colors.black : Colors.grey,
                fontWeight:
                    isSelectedIndex ? FontWeight.w600 : FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
