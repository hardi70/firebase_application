import 'package:flutter/material.dart';

class ListviewContainer extends StatelessWidget {
  final String? image;
  const ListviewContainer({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image!),
      ],
    );
  }
}
