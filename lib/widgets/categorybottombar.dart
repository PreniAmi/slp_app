import 'package:flutter/material.dart';
import 'package:slp2021/helpers/appcolors.dart';
import 'package:slp2021/helpers/utils.dart';
import 'package:slp2021/pages/categorylistpage.dart';
import 'package:slp2021/widgets/searchbar.dart';

class CategoryBottomBar extends StatelessWidget {
  const CategoryBottomBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.MAIN_COLOR,
            boxShadow: [
              BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset.zero
              )
            ]
        ),
        height: 50,
        padding: const EdgeInsets.only(bottom: 20, top: 5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: AppColors.APP_NAME),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => CategoryListPage()));
                },),
              IconButton(
                icon: const Icon(Icons.search, color: AppColors.APP_NAME),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const SearchBar()));
                },),
              IconButton(
                icon: const Icon(Icons.messenger, color: AppColors.APP_NAME),
                onPressed: () {},),
              IconButton(
                icon: const Icon(
                    Icons.account_circle, color: AppColors.APP_NAME),
                onPressed: () {},)
            ]
        )
    );
  }
}
