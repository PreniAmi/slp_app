import 'package:flutter/cupertino.dart';
import 'package:slp2021/helpers/utils.dart';
import 'package:flutter/material.dart';
import 'package:slp2021/models/category.dart';
import 'package:slp2021/models/subcategory.dart';
import 'package:slp2021/widgets/categorybottombar.dart';
import 'package:slp2021/widgets/mainappbar.dart';

class SelectedCategoryPage extends StatefulWidget {
  Category? selectedCategory;
  SelectedCategoryPage({Key? key, this.selectedCategory}) : super(key: key);

  @override
  State<SelectedCategoryPage> createState() => _SelectedCategoryPageState();
}

class _SelectedCategoryPageState extends State<SelectedCategoryPage> {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = Utils.getMockedCategories();
    return Scaffold(
        appBar: MainAppBar(),
        body: Stack(
          children:  [
        Column(
          children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child:Text(
                  widget.selectedCategory!.name!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black, fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: true,
                ) )


          ]),
        const SizedBox(height: 30),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
                widget.selectedCategory!.subCategories!.length, (index) {
              return GestureDetector(
                onTap: () {
                  //naviagte to details page
                },
                child: Column(
                  children: [
                ClipOval(
                  child: Image.asset(
                      'assets/imgs/' +
                          widget.selectedCategory!
                              .subCategories![index]
                              .imgName! +
                          '.jpg',
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100),
                ),
                const SizedBox(height: 10),
                Padding(padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(widget.selectedCategory!.subCategories![index].name!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.selectedCategory!.color,
                    )))

                  ],
                ),
              );
            }),
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
