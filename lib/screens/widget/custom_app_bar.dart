import 'package:flutter/cupertino.dart';
import 'package:note_app/screens/widget/search_custom.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onPressed}) : super(key: key);
   final String title;
   final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomSearch(icon: icon,onPressed: onPressed,),
      ],
    );
  }
}