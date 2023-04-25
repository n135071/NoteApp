import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key, required this.icon, this.onPressed}) : super(key: key);
final IconData icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child:  Center(
        child:IconButton(onPressed: onPressed, icon: Icon(icon)),
      ),
    );
  }
}