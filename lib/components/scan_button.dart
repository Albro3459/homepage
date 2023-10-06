import 'package:flutter/material.dart';
import '../globals.dart' as globals;

class ScanButton extends StatelessWidget {
  final Function()? onTap;

  const ScanButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (constraint, constraints) {
          return globals.AppDesign()
              .createScanButton(width: constraints.maxWidth);
        },
      ),
    );
  }
}
