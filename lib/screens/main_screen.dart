import 'package:dashboard_ui/components/dashboard.dart';
import 'package:dashboard_ui/components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            //Side Menu
            const Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              ),
            ),
            //Dashboard
            const Expanded(flex: 7, child: Dashboard()),

            Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
