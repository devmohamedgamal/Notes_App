import 'package:flutter/Material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

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
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Build Your Career With Mohamed Gamal',
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
              'May 21, 2023',
              style: TextStyle(color: Colors.black.withOpacity(0.4)),
            ),
          ],
        ),
      ),
    );
  }
}
