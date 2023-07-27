import 'package:flutter/Material.dart';

import 'Custom_Text_Field.dart';
import 'custom_btn.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(text: 'Title', horizontal: 10, vertical: 20),
            SizedBox(
              height: 16,
            ),
            CustomTextField(text: 'Content', horizontal: 10, vertical: 100),
            SizedBox(
              height: 40,
            ),
            CustomBtn(),
          ],
        ),
      ),
    );
  }
}
