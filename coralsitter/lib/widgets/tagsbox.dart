import 'package:flutter/material.dart';

import 'package:coralsitter/common.dart';

Widget tagsBox(double width, double minWidth, List<String> tags) {
  return SizedBox(
    width: width,
    height: 24,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: minWidth,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: tags.map((tag) => Container(
              height: 24,
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
              margin: const EdgeInsets.only(left: 5.0, right: 5.0),
              decoration: BoxDecoration(
                color: Color(CommonData.themeColor),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(tag, style: const TextStyle(fontSize: 12, color: Colors.white),),
            )).toList(),
          ),
        ),
      ],
    ),
  );
}