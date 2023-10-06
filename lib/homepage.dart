import 'package:flutter/material.dart';
import 'globals.dart' as globals;
import 'components/upload_button.dart';
import 'components/scan_button.dart';
import 'components/core_admin_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void uploadInfo() {}

  void scanStudentID() {}

  void coreAdminRedirect() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globals.AppDesign.myBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            globals.AppDesign.myHeader,
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 150),
                      UploadButton(onTap: uploadInfo),
                      const SizedBox(height: 90),
                      ScanButton(onTap: scanStudentID),
                      const SizedBox(height: 90),
                      CoreAdminButton(onTap: coreAdminRedirect),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
