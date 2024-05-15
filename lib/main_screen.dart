import 'package:dashboard_ui_app/src/features/dashboard/presentation/dashboard_widget.dart';
import 'package:dashboard_ui_app/src/features/side_menu_item/presentation/side_menu_widget.dart';
import 'package:dashboard_ui_app/src/features/sumary/summary.dart';
import 'package:dashboard_ui_app/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      appBar: AppBar(),
      drawer: !isDesktop
          ? Container(
              color: kDefaultIconDarkColor,
              child: SizedBox(
                width: 250,
                child: SideMenu(),
              ),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: SummaryScreen(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop)
            const Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenu(),
                )),
          Expanded(
            flex: 7,
            child: const Dashboard(),
          ),
          if (isDesktop)
            Expanded(
              flex: 3,
              child: SummaryScreen(),
            ),
        ],
      )),
    );
  }
}
