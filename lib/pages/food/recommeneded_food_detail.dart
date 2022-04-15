import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nyu_advanced_project_1/utils/colors.dart';
import 'package:nyu_advanced_project_1/utils/dimensions.dart';
import 'package:nyu_advanced_project_1/widgets/app_icon.dart';
import 'package:nyu_advanced_project_1/widgets/expandable_text_widget.dart';

import '../../widgets/big_text.dart';

class RecommenededFoodDetail extends StatefulWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommenededFoodDetail> createState() => _RecommenededFoodDetailState();
}

class _RecommenededFoodDetailState extends State<RecommenededFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(size:Dimensions.font26, text:"Chinese Side")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top:5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/image/food0.png",
                  width:double.maxFinite,
                  fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text:"Kung Pao chicken (Chinese: 宫保鸡丁; pinyin: Gōngbǎo jīdīng; Wade–Giles: Kung¹-pao³ Chi¹-ting¹), also transcribed Gong Bao or Kung Po, is a spicy, stir-fried Chinese dish made with cubes of chicken, peanuts, vegetables (traditionally Welsh onion only), and chili peppers. The classic dish in Sichuan cuisine originated in the Sichuan Province of south-western China and includes Sichuan peppercorns. Although the dish is found throughout China, there are regional variations that are typically less spicy than the Sichuan serving. Kung Pao chicken is also a staple of Westernized Chinese cuisine.Kung Pao chicken (Chinese: 宫保鸡丁; pinyin: Gōngbǎo jīdīng; Wade–Giles: Kung¹-pao³ Chi¹-ting¹), also transcribed Gong Bao or Kung Po, is a spicy, stir-fried Chinese dish made with cubes of chicken, peanuts, vegetables (traditionally Welsh onion only), and chili peppers. The classic dish in Sichuan cuisine originated in the Sichuan Province of south-western China and includes Sichuan peppercorns. Although the dish is found throughout China, there are regional variations that are typically less spicy than the Sichuan serving. Kung Pao chicken is also a staple of Westernized Chinese cuisine.Kung Pao chicken (Chinese: 宫保鸡丁; pinyin: Gōngbǎo jīdīng; Wade–Giles: Kung¹-pao³ Chi¹-ting¹), also transcribed Gong Bao or Kung Po, is a spicy, stir-fried Chinese dish made with cubes of chicken, peanuts, vegetables (traditionally Welsh onion only), and chili peppers. The classic dish in Sichuan cuisine originated in the Sichuan Province of south-western China and includes Sichuan peppercorns. Although the dish is found throughout China, there are regional variations that are typically less spicy than the Sichuan serving. Kung Pao chicken is also a staple of Westernized Chinese cuisine.Kung Pao chicken (Chinese: 宫保鸡丁; pinyin: Gōngbǎo jīdīng; Wade–Giles: Kung¹-pao³ Chi¹-ting¹), also transcribed Gong Bao or Kung Po, is a spicy, stir-fried Chinese dish made with cubes of chicken, peanuts, vegetables (traditionally Welsh onion only), and chili peppers. The classic dish in Sichuan cuisine originated in the Sichuan Province of south-western China and includes Sichuan peppercorns. Although the dish is found throughout China, there are regional variations that are typically less spicy than the Sichuan serving. Kung Pao chicken is also a staple of Westernized Chinese cuisine.Kung Pao chicken (Chinese: 宫保鸡丁; pinyin: Gōngbǎo jīdīng; Wade–Giles: Kung¹-pao³ Chi¹-ting¹), also transcribed Gong Bao or Kung Po, is a spicy, stir-fried Chinese dish made with cubes of chicken, peanuts, vegetables (traditionally Welsh onion only), and chili peppers. The classic dish in Sichuan cuisine originated in the Sichuan Province of south-western China and includes Sichuan peppercorns. Although the dish is found throughout China, there are regional variations that are typically less spicy than the Sichuan serving. Kung Pao chicken is also a staple of Westernized Chinese cuisine.Kung Pao chicken (Chinese: 宫保鸡丁; pinyin: Gōngbǎo jīdīng; Wade–Giles: Kung¹-pao³ Chi¹-ting¹), also transcribed Gong Bao or Kung Po, is a spicy, stir-fried Chinese dish made with cubes of chicken, peanuts, vegetables (traditionally Welsh onion only), and chili peppers. The classic dish in Sichuan cuisine originated in the Sichuan Province of south-western China and includes Sichuan peppercorns. Although the dish is found throughout China, there are regional variations that are typically less spicy than the Sichuan serving. Kung Pao chicken is also a staple of Westernized Chinese cuisine."),
                  margin: EdgeInsets.only(left:Dimensions.width20, right:Dimensions.width20),
                )
              ],
            )
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor:Colors.white,
                    backgroundColor:AppColors.mainColor,
                    icon: Icons.remove),
                BigText(text: "\12.88 "+" X "+" 0 ", color:AppColors.mainBlackColor,size:Dimensions.font26),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor:Colors.white,
                    backgroundColor:AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  )
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
        ],
      ),
    );
  }
}
