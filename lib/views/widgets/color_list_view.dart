import 'package:flutter/Material.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: isActive
          ? CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 28,
              backgroundColor: color,
            ),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xFF242038),
    Color(0xFF725AC1),
    Color(0xFF8D86C9),
    Color(0xFFCAC4CE),
    Color(0xFFF7ECE1),
    Color(0xFF000000),
    Color(0xFF1098F7),
    Color(0xFF5E548E),
    Color(0xFFDDFCAD),
    Color(0xFFC8E087),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: SizedBox(
        height: 28 * 2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorsItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              );
            }),
      ),
    );
  }
}
