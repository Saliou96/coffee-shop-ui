import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 14),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                hintText: 'Search coffee',
                hintStyle: TextStyle(color: Colors.white54),
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 12),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Color.fromRGBO(198,124,78, 1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(Icons.tune, color: Colors.white),
        ),
      ],
    );
  }
}
