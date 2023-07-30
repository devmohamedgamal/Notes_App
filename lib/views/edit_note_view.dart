import 'package:flutter/Material.dart';
import 'package:note_app/views/widgets/Custom_Text_Field.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              text: 'Edit Note',
              icon: Icons.done,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              text: 'Title',
              vertical: 20,
              horizontal: 10,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              text: 'Content',
              vertical: 80,
              horizontal: 10,
            ),
          ],
        ),
      ),
    );
  }
}
