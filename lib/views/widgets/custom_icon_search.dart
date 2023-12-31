import 'package:flutter/Material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          onPressed:onPressed,
          icon: Icon(
            icon,
            size: 30,
          ),
        ),
      ),
    );
  }
}
