import 'package:pageviwe/utils/image.dart';
import 'package:pageviwe/utils/string.dart';

//PageViwing Class
class Pageviweing{
  String image;
  String text;

  //PageViweing Canstractor
  Pageviweing({required this.image,required this.text});
}


//listpage Canstractor
List<Pageviweing> listpage = [
  Pageviweing(image: BackGroundImage.backimage1, text: BackText.textonly),
  Pageviweing(image: BackGroundImage.backimage2, text: BackText.textonly),
  Pageviweing(image: BackGroundImage.backimage3, text: BackText.textonly),
  Pageviweing(image: BackGroundImage.backimage4, text: BackText.textonly),
  Pageviweing(image: BackGroundImage.backimage5, text: BackText.textonly),
  Pageviweing(image: BackGroundImage.backimage6, text: BackText.textonly),
];