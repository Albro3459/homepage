library globals;

import 'package:flutter/material.dart';

class AppDesign {
  static Color myBackgroundColor = Colors.white;
  static Container myHeader = Container(
    padding: const EdgeInsets.all(35.0),
    color: Colors.grey[350],
  );

  // Button Responsiveness
  static double? getButtonWidth(maxWidth) {
    return maxWidth < 700 ? null : 650;
  }

  // Upload Button
  Container createUploadButton({double? width}) {
    return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 50),
        width: getButtonWidth(width),
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            "Upload Student Information",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.grey.shade500, // Use a Color here
            ),
          ),
        ));
  }

  // Scan Button
  Container createScanButton({double? width}) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 50),
      width: getButtonWidth(width),
      decoration: BoxDecoration(
        color: Colors.grey[350],
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          "Scan Student ID",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.grey[350], // Use a Color here
          ),
        ),
      ),
    );
  }

  // Core Admin Button
  Container createCoreAdminButton({double? width}) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 50),
      width: getButtonWidth(width),
      decoration: BoxDecoration(
        color: Colors.grey[350],
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          "Core Administration",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.grey[350], // Use a Color here
          ),
        ),
      ),
    );
  }
}
