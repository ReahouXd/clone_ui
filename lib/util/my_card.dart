// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final String cardNumber;
  final int exiryMonth;
  final int expiryYear;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  const MyCard({super.key,
    required this.balance,
    required this.cardNumber,
    required this.exiryMonth,
    required this.expiryYear,
    required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Container(
        width: 360,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            // color: Colors.deepPurple[300],
            color: color,
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // const SizedBox(height: 10),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Balance",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),   
                Image.asset(
                  "lib/icons/visa.png",
                  height: 61,
                ),
              ],
            ),
            Text(
              "\$" + balance.toString(),
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  exiryMonth.toString()+"/"+expiryYear.toString(),
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                )
                // card expiry
              ],
            )
          ],
        ),
      ),
    );
  }
}
