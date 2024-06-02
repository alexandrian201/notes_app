import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      color: Colors.white.withOpacity(.2),
            ),
    child: const Icon(Icons.search_rounded,size: 30,));
  }
}