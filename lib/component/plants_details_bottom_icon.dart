import 'package:flutter/material.dart';

class PlantsDetailsBottomIcon extends StatelessWidget {
  const PlantsDetailsBottomIcon({
    super.key,
    required this.icon,
    required this.titleIcon,
    required this.subtitleIcon,
  });

  final IconData icon;
  final String titleIcon;
  final String subtitleIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 45,
          color: Colors.white,
        ),
        Text(
          titleIcon,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        Text(
          subtitleIcon,
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade200),
        ),
      ],
    );
  }
}
