import 'package:flutter/material.dart';
import '../globals.dart' as globals;

class CoreAdminButton extends StatelessWidget {
  final Function()? onTap;

  const CoreAdminButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (constraint, constraints) {
          // double? buttonWidth = constraints.maxWidth < 700 ? null : 650;
          double? buttonWidth =
              globals.AppDesign.getButtonWidth(constraints.maxWidth);

          return Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 50),
            width: buttonWidth,
            decoration: globals.AppDesign.coreAdminButtonBoxDecoration,
            child: Center(
              child: globals.AppDesign.coreAdminButtonText,
            ),
          );
        },
      ),
    );
  }
}
