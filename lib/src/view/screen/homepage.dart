
import 'package:linkden_clone_ui/src/util/exports.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/myImage.JPG'),
            ),
          ),
        ),
        title: kSearchBar(),
        backgroundColor: kWhite,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.chat, color: kGrey,),
            onPressed: (){

            },
          )
        ],
      ),
    );
  }
}
