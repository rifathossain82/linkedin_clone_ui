import 'package:linkden_clone_ui/src/util/exports.dart';

class kTitle extends StatelessWidget {
  kTitle({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: kBlack.withOpacity(0.9)
      ),
    );
  }
}
