import 'package:flutter/material.dart';
import 'package:untitled3/globalVarible.dart';
class ButtonWidget extends StatelessWidget {
  final String name;
  final double  paddingMs;
  final Color? colorData;
  final VoidCallback onTap;
  const ButtonWidget({super.key, required this.name,required this.paddingMs, this.colorData, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(paddingMs),
      child: InkWell(
        onTap:onTap,
        child: Container(
            decoration: BoxDecoration(
                color: GlobalVal.buttonName==name?Colors.yellow: Colors.grey,
                borderRadius: BorderRadius.circular(10)
            ),
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name,style: const TextStyle(fontSize: 10)),
            )),
      ),
    );
  }
}
