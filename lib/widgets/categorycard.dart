import 'package:flutter/material.dart';
import 'package:slp2021/helpers/appcolors.dart';
import 'package:slp2021/models/category.dart';

class CategoryCard extends StatelessWidget {
  Category? category;
  Function? onCardClick;
  CategoryCard({this.category, this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onCardClick!();
      },
      child: Container(
        margin: EdgeInsets.all(20),
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.DARK_GREEN, width: 3),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Stack(children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                  'assets/imgs/' + category!.imgName! + '.jpg',
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  height: 120,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
    )
    )),
          Expanded(child:
          Positioned(
              bottom: 0,
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(

                    children: [
                      Text(
                        category!.name!,
                        style: const TextStyle(color: AppColors.MAIN_COLOR, fontSize: 20),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: true,
                      )
                    ],
                  ))))

        ])),
    );
  }
}
