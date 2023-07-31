import 'package:flutter/Material.dart';

import 'custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.text , required this.icon, this.onPressed});
  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        const Spacer(),
         CustomIconSearch(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
