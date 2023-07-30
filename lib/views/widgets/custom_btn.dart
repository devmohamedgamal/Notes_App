import 'package:flutter/Material.dart';
import 'package:note_app/contants.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 27,
                  width: 27,
                  child: const CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
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
