
import 'package:linkden_clone_ui/src/util/exports.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: kSearchBar(),
        backgroundColor: kWhite,
        foregroundColor: kGrey,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: kBlack.withOpacity(0.7),),
            onPressed: (){

            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Image.asset('assets/images/coverImage.jpg'),
                Positioned(
                  right: 20,
                  top: 20,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(Icons.edit, color: kMainColor, size: Dimensions.radiusExtraLarge,),
                  ),
                ),
                Positioned(
                  left: 15,
                  bottom: -60,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: kWhite, width: Dimensions.paddingSizeExtraSmall)
                        ),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(AppConstants.myImage),
                        ),
                      ),
                      Positioned(
                        right: -5,
                        bottom: 10,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: kWhite, width: Dimensions.paddingSizeExtraSmall)
                          ),
                          child: Icon(Icons.add, color: kWhite, size: Dimensions.radiusExtraLarge,),
                        ),
                      ),
                    ],
                  )
                ),
                Positioned(
                  right: 20,
                  bottom: -35,
                  child: Icon(Icons.edit, size: 25, color: kBlack.withOpacity(0.7),),
                ),
              ],
            ),
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rifat Hossain',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: kBlack.withOpacity(0.9)),
                  ),
                  SizedBox(height: 3,),
                  Text(
                    'Flutter App Developer at Web Point Ltd.',
                    style: TextStyle(fontSize: 16, color: kBlack.withOpacity(0.9)),
                  ),

                  SizedBox(height: Dimensions.paddingSizeSmall,),
                  Text(
                    'Web Point Ltd. Feni Polytechnic Institute',
                    style: TextStyle(fontSize: 14, color: kBlack.withOpacity(0.9)),
                  ),
                  Text(
                    'Chattogram, Bangladesh',
                    style: TextStyle(fontSize: 14, color: kBlack.withOpacity(0.7)),
                  ),

                  SizedBox(height: Dimensions.paddingSizeDefault,),
                  Text(
                    '259 connections',
                    style: TextStyle(fontSize: 14, color: kMainColor, fontWeight: FontWeight.bold),
                  ),


                  SizedBox(height: Dimensions.paddingSizeDefault,),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: size.height * 0.04,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Text('Open to', style: TextStyle(color: kWhite, fontWeight: FontWeight.bold,),),
                        ),
                      ),
                      SizedBox(width: Dimensions.paddingSizeExtraSmall,),
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: size.height * 0.04,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: kGrey)
                          ),
                          child: Text('Add section', style: TextStyle(color: kGrey, fontWeight: FontWeight.bold,),),
                        ),
                      ),
                      SizedBox(width: Dimensions.paddingSizeSmall,),
                      Container(
                        height: size.height * 0.04,
                        width: size.height * 0.04,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: kGrey)
                        ),
                        child: Text('...', style: TextStyle(color: kGrey, fontWeight: FontWeight.bold,),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
