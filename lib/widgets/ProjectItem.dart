import 'package:flutter/material.dart';

class ProjectItem extends StatelessWidget {
  ProjectItem({
    required this.image,
    required this.title,
    Key? key,
  }) : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              color: Colors.black,
            ),
            width: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFFEDE9F2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
