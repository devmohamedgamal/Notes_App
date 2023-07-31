import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import '../edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  // @override
  // void initState() {
  //   BlocProvider.of<NotesCubit>(context).fechAllNote();
  //   super.initState();
  // }

  final NoteModel note;

  const CustomNoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        padding:
            const EdgeInsets.only(top: 28, bottom: 28, left: 16, right: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFFFCD7B),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.content,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                  )),
            ),
            Text(
              note.date,
              style: TextStyle(color: Colors.black.withOpacity(0.4)),
            ),
          ],
        ),
      ),
    );
  }
}
