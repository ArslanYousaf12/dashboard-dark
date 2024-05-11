import 'package:dashboard_ui_app/src/features/dashboard/presentation/dashboard_widget.dart';
import 'package:dashboard_ui_app/src/features/side_menu_item/presentation/side_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          const Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              )),
          Expanded(
            flex: 7,
            child: const Dashboard(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      )),
    );
  }
}
