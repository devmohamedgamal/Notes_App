import 'package:flutter/Material.dart';

class CustomBtn extends StatelessWidget {
    const CustomBtn({super.key});
  
    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: (){},
        child: Container(
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
              color: const Color(0xFF54EBD7), borderRadius: BorderRadius.circular(8)),
          child: const Center(
            child: Text(
              'Add',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
        ),
      );
    }
  }
  