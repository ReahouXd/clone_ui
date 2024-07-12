import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  // final IconData icon;
  final String buttonText;
  // final String color;

  const MyButton(
      {super.key, 
      required this.iconImagePath, 
      required this.buttonText
      // required this.color,
      }
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          // padding: const EdgeInsets.all(20),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                // color: Colors.black.withOpacity(0.4),
                blurRadius: 2,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Center(
            // child: Image.asset("lib/icons/send_money.png"),
            child: Image.asset(iconImagePath)
            // child: Icon(icon),
          ),
        ),
        // text
        const SizedBox(
          height: 5,
        ),
        Text(
          buttonText,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
