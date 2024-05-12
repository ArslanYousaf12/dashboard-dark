import 'package:dashboard_ui_app/src/features/activity_details/data/health_details.dart';
import 'package:dashboard_ui_app/src/common_widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityDetailsWidget extends StatelessWidget {
  const ActivityDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetail = HealthDetails();
    return GridView.builder(
      itemCount: healthDetail.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              healthDetail.healthData[index].icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 4),
              child: Text(
                healthDetail.healthData[index].value,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              healthDetail.healthData[index].title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
