import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class notesItem extends StatelessWidget {
  const notesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Flutter is a framework for building mobile applications.',
                style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),
              ),
            ),

            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, top: 16),
            child: Text(
              'May,21 ,2022',
              style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
