import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nyu_advanced_project_1/pages/food/recommeneded_food_detail.dart';
import 'package:nyu_advanced_project_1/utils/dimensions.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Container(
                child: Container(
                  margin: EdgeInsets.only(top:Dimensions.height45, bottom:Dimensions.height15),
                  padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BigText(text: "United States", color: AppColors.mainColor),
                          Row(
                            children:[
                              SmallText(text: "New York", color:Colors.black54,),
                              Icon(Icons.arrow_drop_down_rounded)
                            ],
                          )
                        ],
                      ),
                      Center(
                        child: Container(
                          width: Dimensions.height45,
                          height: Dimensions.height45,
                          child: Icon(Icons.search, color:Colors.white, size:Dimensions.iconSize24),
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(Dimensions.radius15),
                            color:AppColors.mainColor,
                          ),
                        ),
                      )
                    ],
                  )
                )
            ),
            Expanded(child: SingleChildScrollView(
              child: RecommenededFoodDetail(),//Please test InprocessPages here
            )),
          ],
        )
    );
  }
}
