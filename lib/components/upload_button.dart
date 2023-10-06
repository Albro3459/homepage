import 'package:flutter/material.dart';
import '../globals.dart' as globals;

class UploadButton extends StatelessWidget {
  final Function()? onTap;

  const UploadButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (context, constraints) {
          // double? buttonWidth = constraints.maxWidth < 700 ? null : 650;
          double? buttonWidth =
              globals.AppDesign.getButtonWidth(constraints.maxWidth);

          return Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 50),
            width: buttonWidth,
            decoration: globals.AppDesign.uploadButtonBoxDecoration,
            child: Center(
              child: globals.AppDesign.uploadButtonText,
            ),
          );
        },
      ),
    );
  }
}
