import 'package:flutter/material.dart';

wish(time) {
  switch (time) {
    case > 4 && <= 12:
      return const Text(
        "Good morning 🌞",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      );
    case > 12 && <= 15:
      return const Text("Good Afternoon ☀️");
    case > 15 && <= 19:
      return const Text("Good Evening ⛅");
    case > 18 && < 4:
      return const Text("Good Night 🌙");

    default:
  }
}
