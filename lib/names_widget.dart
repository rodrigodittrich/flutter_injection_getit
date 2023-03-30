import 'package:flutter/material.dart';

class NamesWidget extends StatelessWidget {
  final List<String> names;

  const NamesWidget({
    Key? key,
    required this.names,
  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: names.length,
        itemBuilder: (cxt, item) {
          return Center(child: Text(names[item]));
        }
      ),
    );
  }
}