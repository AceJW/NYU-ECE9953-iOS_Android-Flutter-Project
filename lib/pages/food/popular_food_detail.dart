import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nyu_advanced_project_1/utils/dimensions.dart';
import 'package:nyu_advanced_project_1/widgets/app_column.dart';
import 'package:nyu_advanced_project_1/widgets/app_icon.dart';
import 'package:nyu_advanced_project_1/widgets/expandable_text_widget.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left:0,
              right:0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit:BoxFit.cover,
                    image: AssetImage(
                      "assets/image/food0.png"
                    )
                  )
                )
          )),
          //icon widgets
          Positioned(
            top:Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon:Icons.arrow_back_ios),
                AppIcon(icon:Icons.shopping_cart_outlined),
              ],
          )),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top:Dimensions.popularFoodImgSize-20,
            child: Container(

              padding: EdgeInsets.only(left:Dimensions.width20, right: Dimensions.width20,top:Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color:Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text:"Chinese side"),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height:Dimensions.height20,),
                    //Expanded(child:SingleChildScrollView(child: ExpandableTextWidget(text: ""))),
                    Expanded(child:SingleChildScrollView(child: ExpandableTextWidget(text: "Kung Pao chicken (Chinese: 宫保鸡丁; pinyin: Gōngbǎo jīdīng; Wade–Giles: Kung¹-pao³ Chi¹-ting¹), also transcribed Gong Bao or Kung Po, is a spicy, stir-fried Chinese dish made with cubes of chicken, peanuts, vegetables (traditionally Welsh onion only), and chili peppers. The classic dish in Sichuan cuisine originated in the Sichuan Province of south-western China and includes Sichuan peppercorns. Although the dish is found throughout China, there are regional variations that are typically less spicy than the Sichuan serving. Kung Pao chicken is also a staple of Westernized Chinese cuisine."))),
                    //"Kung Pao chicken (Chinese: 宫保鸡丁; pinyin: Gōngbǎo jīdīng; Wade–Giles: Kung¹-pao³ Chi¹-ting¹), also transcribed Gong Bao or Kung Po, is a spicy, stir-fried Chinese dish made with cubes of chicken, peanuts, vegetables (traditionally Welsh onion only), and chili peppers. The classic dish in Sichuan cuisine originated in the Sichuan Province of south-western China and includes Sichuan peppercorns. Although the dish is found throughout China, there are regional variations that are typically less spicy than the Sichuan serving. Kung Pao chicken is also a staple of Westernized Chinese cuisine."
                    //cited from: https://en.wikipedia.org/wiki/Kung_Pao_chicken
                  ],
                ),
          ))
          
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top:Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
          ),
        ),
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.width20,left: Dimensions.width20,right: Dimensions.width20,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
                child: Row(
                  children: [
                    Icon(Icons.remove, color: AppColors.signColor,),
                    SizedBox(width: Dimensions.width10/2,),
                    BigText(text: "0"),
                    SizedBox(width: Dimensions.width10/2,),
                    Icon(Icons.add,color: AppColors.signColor),
                  ],
                ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.width20,left: Dimensions.width20,right: Dimensions.width20,),
              child: BigText(text:"\$10 | Add to cart", color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
    ),
    );
  }
}
