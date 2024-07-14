import 'package:dashboard_ui/components/activity_details_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //search bar
        Padding(
          padding: EdgeInsets.symmetric(vertical: 18.0),
          child: SearchBar(),
        ),
        ActivityDetailsCard()
      ],
    );
  }
}
