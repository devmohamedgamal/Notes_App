import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/Custom_Text_Field.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fechAllNote();
                Navigator.pop(context);
              },
              text: 'Edit Note',
              icon: Icons.done,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              editText: widget.note.title,
              onChanged: (value) {
                title = value;
              },
              text: widget.note.title,
              vertical: 20,
              horizontal: 10,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              editText: widget.note.content,
              onChanged: (value) {
                content = value;
              },
              text: widget.note.content,
              vertical: 80,
              horizontal: 10,
            ),
          ],
        ),
      ),
    );
  }
}
