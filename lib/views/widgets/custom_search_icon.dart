import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/constants.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: kcolor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: const Icon(FontAwesomeIcons.magnifyingGlass, size: 28),
      ),
    );
  }
}
