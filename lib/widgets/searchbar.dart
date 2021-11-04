import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:slp2021/helpers/appcolors.dart';
import 'package:slp2021/pages/detailedscreen.dart';
import 'package:slp2021/services/datacontroller.dart';

import 'categorybottombar.dart';
import 'mainappbar.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key:key);
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<SearchBar> {
  final TextEditingController searchController = TextEditingController();
  late QuerySnapshot snapshotData;
  bool isExcecuted = false;
  @override
  Widget build(BuildContext context) {
    Widget searchedData() {
      return ListView.builder(
        itemCount: snapshotData.docs.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.to(DetailedScreen(),
                  transition: Transition.downToUp,
                  arguments: snapshotData.docs[index]);
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage(snapshotData.docs[index].get('image')),
              ),
              title: Text(
                snapshotData.docs[index].get('name'),
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.clear),
          backgroundColor: AppColors.APP_NAME,
          onPressed: () {
            setState(() {
              isExcecuted = false;
            });
          }),
      backgroundColor: AppColors.APP_BACKGROUND,

      appBar: AppBar(
        actions: [
          GetBuilder<DataController>(
            init: DataController(),
            builder: (val) {
              return IconButton(
                  icon: const Icon(Icons.search, color: AppColors.APP_NAME,),
                  onPressed: () {
                    val.queryData(searchController.text).then((value) {
                      snapshotData = value;
                      setState(() {
                        isExcecuted = true;
                      });
                    });
                  });
            },
          )
        ],
        title: TextField(
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
              hintText: 'Search For Books',
              hintStyle: TextStyle(color: Colors.white)),
          controller: searchController,
        ),
        backgroundColor: AppColors.MAIN_COLOR,
      ),
      body: isExcecuted
          ? searchedData()
          : const Center(
            child: Text('Search any courses',
                style: TextStyle(color: Colors.black, fontSize: 30.0)),
          ),
      bottomNavigationBar: const CategoryBottomBar(),
    );
  }
}


