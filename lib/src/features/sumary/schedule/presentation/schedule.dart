import 'package:dashboard_ui_app/src/common_widgets/custom_card.dart';
import 'package:dashboard_ui_app/src/features/sumary/schedule/data/schedule_task_data.dart';
import 'package:flutter/material.dart';

class Scheduled extends StatelessWidget {
  const Scheduled({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleTasksData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Schedule',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 12,
        ),
        for (var index = 0; index < data.scheduled.length; index++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: ScheduleTaskCard(data: data, index: index),
          ),
      ],
    );
  }
}

class ScheduleTaskCard extends StatelessWidget {
  const ScheduleTaskCard({
    super.key,
    required this.data,
    required this.index,
  });

  final ScheduleTasksData data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.scheduled[index].title,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    data.scheduled[index].date,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Icon(Icons.more),
            ],
          ),
        ],
      ),
    );
  }
}
