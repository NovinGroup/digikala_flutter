import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionBox extends StatelessWidget {
  const SuggestionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("data"),
          Text("data"),
          SizedBox(height: 12,),
          Container(
            color: Colors.green,
            height: MediaQuery.of(context).size.width - (28 * 2),
            child: Stack(
              children: [

              ],
            ),
          ),
        ],
      ),
    );
  }
}
