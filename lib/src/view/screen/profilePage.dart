
import 'package:linkden_clone_ui/src/util/exports.dart';
import 'package:linkden_clone_ui/src/view/base/kTitle.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhite.withOpacity(0.85),
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
            ProfileSection(),
            SizedBox(height: Dimensions.paddingSizeSmall,),
            AnalyticSection(),
            SizedBox(height: Dimensions.paddingSizeSmall,),
            ResourceSection(),
            SizedBox(height: Dimensions.paddingSizeSmall,),
            AboutSection(),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: kWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
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
                    clipBehavior: Clip.none,
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
                        right: 4,
                        bottom: 15,
                        child: Container(
                          height: 33,
                          width: 33,
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
                kTitle(title: 'Rifat Hossain'),
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
                        height: size.height * 0.05,
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
                        height: size.height * 0.05,
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
                      height: size.height * 0.05,
                      width: size.height * 0.05,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: kGrey)
                      ),
                      child: Image.asset('assets/images/option.png', color: kGrey,),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: Dimensions.paddingSizeDefault,),
        ],
      ),
    );
  }
}

class AnalyticSection extends StatelessWidget {
  const AnalyticSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kTitle(title: 'Analytics',),
          Row(
            children: [
              Icon(Icons.visibility, color: kGrey,),
              SizedBox(width: Dimensions.paddingSizeExtraSmall,),
              Text('Private to you', style: TextStyle(color: kBlack.withOpacity(0.7)),),
            ],
          ),
          ContentRow(
              iconData: Icons.people,
              title: '66 profile views',
              titleStatus: Container(),
              subTitle: 'Discover who\'s viewed your profile.'
          ),
          Divider(height: 1,),
          ContentRow(
              iconData: Icons.stacked_bar_chart,
              title: '84 post impressions',
              titleStatus: Container(),
              subTitle: 'Check out who\'s engaging with your posts'
          ),
          Divider(height: 1,),
          ContentRow(
              iconData: Icons.search,
              title: '19 search appearances',
              titleStatus: Container(),
              subTitle: 'See how often you appear in search results.'
          ),
        ],
      ),
    );
  }
}

class ResourceSection extends StatelessWidget {
  const ResourceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kTitle(title: 'Resources',),
          Row(
            children: [
              Icon(Icons.visibility, color: kGrey,),
              SizedBox(width: Dimensions.paddingSizeExtraSmall,),
              Text('Private to you', style: TextStyle(color: kBlack.withOpacity(0.7)),),
            ],
          ),
          ContentRow(
              iconData: Icons.model_training_rounded,
              title: 'Creator mode',
              titleStatus: Container(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall, vertical: Dimensions.paddingSizeExtraSmall),
                decoration: BoxDecoration(
                  color: kGrey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(Dimensions.radiusSmall)
                ),
                child: Text('Off', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              subTitle: 'Get discovered, showcase content on your profile, and get access to creator tools'
          ),
          Divider(height: 1,),
          ContentRow(
              iconData: Icons.people,
              title: 'My network',
              titleStatus: Container(),
              subTitle: 'See and manage your connections and interests.'
          ),
          Divider(height: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Show all 5 resources',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: kGrey,
                ),
              ),
              SizedBox(width: Dimensions.paddingSizeExtraSmall,),
              Icon(Icons.arrow_forward_rounded, color: kGrey,)
            ],
          )
        ],
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              kTitle(title: 'About',),
              Icon(Icons.edit, size: 30, color: kGrey,)
            ],
          ),
          SizedBox(height: Dimensions.paddingSizeExtraLarge,),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppConstants.myDescription,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: kBlack),
                ),
                TextSpan(
                  text: 'see more',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: kGrey),
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}

class ContentRow extends StatelessWidget {
  ContentRow({Key? key,
  required this.iconData,
  required this.title,
  required this.titleStatus,
  required this.subTitle}) : super(key: key);

  IconData iconData;
  String title;
  Widget titleStatus;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.paddingSizeSmall),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(iconData, size: 30, color: kBlack.withOpacity(0.5),),
          SizedBox(width: Dimensions.paddingSizeSmall,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: Dimensions.paddingSizeExtraSmall,),
                    titleStatus,
                  ],
                ),
                SizedBox(height: Dimensions.paddingSizeExtraSmall,),
                Text(
                  subTitle,
                  style: TextStyle(fontSize: 14, color: kBlack, fontWeight: FontWeight.w400),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



