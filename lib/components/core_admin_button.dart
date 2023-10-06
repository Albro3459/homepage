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
          return globals.AppDesign()
              .createCoreAdminButton(width: constraints.maxWidth);
        },
      ),
    );
  }
}
