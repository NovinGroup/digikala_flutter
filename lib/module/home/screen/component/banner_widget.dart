import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: Container(
        height: 120,
        color: Colors.black54,
      ),
    );
  }
}
