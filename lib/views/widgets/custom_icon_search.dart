import 'package:flutter/Material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 30,
        ),
      ),
    );
  }
}
