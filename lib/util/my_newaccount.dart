import 'package:flutter/material.dart';

class MyNewaccount extends StatelessWidget {
  final IconData icon;
  final String accountText;
  final double swidth;
  final double sheight;

  const MyNewaccount(
      {super.key, required this.icon, required this.accountText, required this.swidth, required this.sheight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sheight,
      width: swidth,
      decoration: BoxDecoration(
        // color: Colors.black,
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon, 
              color:const Color.fromARGB(255, 5, 95, 141)
              // color: Colors.white,
            ),
            const SizedBox(width: 15), // Adjust width for spacing
            Text(
              accountText,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
