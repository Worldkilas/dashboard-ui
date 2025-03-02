import 'package:dashboard_ui/const/constant.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: cardBackgroundColor,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                )),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            hintText: 'Search',
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 21,
            )),
      ),
    );
  }
}
