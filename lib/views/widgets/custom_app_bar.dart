import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return (Row(
      children: [
        Text(title, style: TextStyle(fontSize: 24)),
        Spacer(),
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: Colors.white),
        ),
      ],
    ));
  }
}
