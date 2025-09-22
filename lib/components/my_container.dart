import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String label;
  final IconData? iconData;

  const MyContainer({super.key, required this.label, this.iconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconData != null) ///check kore dekhbo jodi null na hoy tahole kaj korbe na
            Row(
              children: [
                Icon(iconData, size: 12, color: Colors.black54),
                const SizedBox(width: 4),
              ],
            ),
          Text(label, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
