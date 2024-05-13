import 'package:dashboard_ui_app/src/features/activity_details/prsentation/activity_detailed_card.dart';
import 'package:dashboard_ui_app/src/features/bar_graph_chart/presentation/bar_graph_screen.dart';
import 'package:dashboard_ui_app/src/features/dashboard/presentation/header.dart';
import 'package:dashboard_ui_app/src/features/line_chart/presentation/line_chart_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 18,
            ),
            Header(),
            SizedBox(
              height: 18,
            ),
            ActivityDetailsWidget(),
            SizedBox(
              height: 18,
            ),
            LineChartCard(),
            SizedBox(
              height: 18,
            ),
            BarGraphChart(),
          ],
        ),
      ),
    );
  }
}
