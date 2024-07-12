import 'package:flutter/material.dart';

class MyListTittle extends StatelessWidget {
  final String iconImagePath;
  final String titleTitle;
  final String titleSubtitle;

  const MyListTittle({super.key, required this.iconImagePath, required this.titleSubtitle, required this.titleTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // icons
        children: [
          Container(
            height: 90,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  // spreadRadius: 5,
                  blurRadius: 5,
                )
              ]
            ),
            child: Image.asset(iconImagePath),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleTitle,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                titleSubtitle,
                style: TextStyle(fontSize: 16, color: Colors.grey[300]),
              ),
            ],
          ),
          const SizedBox(width: 20,),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
