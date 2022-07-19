import 'package:linkden_clone_ui/src/util/dimension.dart';
import 'package:linkden_clone_ui/src/util/exports.dart';

class kSearchBar extends StatelessWidget {
  const kSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.048,
      width: size.width*0.8,
      decoration: BoxDecoration(
        color: kSearchBarBgColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(Dimensions.radiusSmall)
      ),
      child: Row(
        children: [
          SizedBox(width: Dimensions.paddingSizeDefault,),
          Icon(
            Icons.search,
            color: kBlack.withOpacity(0.7),
            size: 22,
          ),
          SizedBox(width: Dimensions.paddingSizeExtraSmall,),
          Expanded(
            child: Text(
              'Search',
              style: TextStyle(
                  color: kBlack.withOpacity(0.7),
                fontSize: 15
              ),
            )
          )
        ],
      ),
    );
  }
}
