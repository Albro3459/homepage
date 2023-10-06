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
          return globals.AppDesign()
              .createUploadButton(width: constraints.maxWidth);
        },
      ),
    );
  }
}
