import 'package:flutter/material.dart';
import 'package:slp2021/helpers/appcolors.dart';
import 'package:slp2021/helpers/utils.dart';
import 'package:slp2021/models/category.dart';
import 'package:slp2021/pages/selectedcategorypage.dart';
import 'package:slp2021/widgets/categorybottombar.dart';
import 'package:slp2021/widgets/categorycard.dart';
import 'package:slp2021/widgets/mainappbar.dart';

class CategoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = Utils.getMockedCategories();

    return Scaffold(
        drawer: Drawer(),
        backgroundColor: AppColors.APP_BACKGROUND,
        appBar: MainAppBar(),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text('Choose the  College:',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 25,)),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 75),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return CategoryCard(
                          category: categories[index],
                          onCardClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectedCategoryPage(
                                      selectedCategory: categories[index],
                                    )));
                          });
                    },
                  ),
                )
              ],
            ),

          ],
        ),
      bottomNavigationBar: const CategoryBottomBar(),
    );
  }
}
