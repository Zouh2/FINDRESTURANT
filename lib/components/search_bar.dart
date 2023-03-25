import 'package:findresteau/utilis/style.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  final bool isFilterVisible;
  final Function() onToggleFilter;

  const SearchSection(
      {super.key, required this.isFilterVisible, required this.onToggleFilter});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: accent,
            style: p1,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, size: 22, color: text),
              hintText: 'Search Restaurant',
              hintStyle: p1,
              fillColor: Colors.grey[100],
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: small),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(width: small),
        Container(
          decoration: BoxDecoration(
            color: accent,
            borderRadius: BorderRadius.circular(12),
          ),
          height: 50,
          width: 50,
          // child: Icon(Icons.swap_horiz, color: white),
          child: IconButton(
            icon: isFilterVisible
                ? Icon(Icons.arrow_upward, color: white)
                : Icon(
                    Icons.swap_horiz,
                    color: white,
                  ),
            onPressed: () {
              onToggleFilter();
            },
          ),
        ),
      ],
    );
  }
}
