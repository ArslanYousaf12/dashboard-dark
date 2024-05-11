import 'package:dashboard_ui_app/src/features/activity_details/prsentation/activity_detailed_card.dart';
import 'package:dashboard_ui_app/src/features/dashboard/presentation/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 18,
        ),
        Header(),
        SizedBox(
          height: 18,
        ),
        Expanded(child: ActivityDetailsWidget())
      ],
    );
  }
}
