import 'package:flutter/Material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Center(
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
