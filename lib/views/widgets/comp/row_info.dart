import 'package:flutter/material.dart';

Row rowInfo({required String residence, required String value}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        residence,
        style: TextStyle(color: Colors.grey.shade200),
      ),
      Text(
        value,
        style: const TextStyle(color: Colors.grey),
      ),
    ],
  );
}
