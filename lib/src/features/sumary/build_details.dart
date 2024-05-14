import 'package:flutter/material.dart';

class BuildDetails extends StatelessWidget {
  const BuildDetails({super.key, required this.keys, required this.value});
  final String keys;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          keys,
          style: const TextStyle(
            fontSize: 11.0,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
