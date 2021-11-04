import 'package:slp2021/models/category.dart';
import 'package:slp2021/models/subcategory.dart';
import 'appcolors.dart';
import 'package:flutter/material.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          color: AppColors.MAIN_COLOR,
          name: "Don B. Huntley College of Agriculture",
          imgName: "HUNTLEY",
          subCategories: [
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Agribusiness & Food Industry Management',
                imgName: 'HUNTLEY_AFIM'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Agricultural Science',
                imgName: 'HUNTLEY_AS'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Animal Sciences',
                imgName: 'HUNTLEY_ANS'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Animal Health Sciences',
                imgName: 'HUNTLEY_AHS'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Apparel Merchandising & Management',
                imgName: 'HUNTLEY_AMM'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Food Science & Technology',
                imgName: 'HUNTLEY_FST'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Nutrition',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Plant Science',
                imgName: 'HUNTLEY_PS')
          ]),
      Category(
          color: AppColors.MAIN_COLOR,
          name: "College of Business Administration",
          imgName: "CBA",
          subCategories: [
            SubCategory(
                color: AppColors.MAIN_COLOR, name: 'Accounting', imgName: 'CBA_A'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Computer Information Systems',
                imgName: 'CBA_CIS'),
            SubCategory(
                color: AppColors.MAIN_COLOR, name: 'E-Business', imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Finance, Real Estate & Law',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'International Business & Marketing',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Management & Human Resources',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Technology & Operations Management',
                imgName: 'CPP')
          ]),
      Category(
          color: AppColors.MAIN_COLOR,
          name: "College of Education and Integrative Studies",
          imgName: "CEIS",
          subCategories: [
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Ethnic and Women\'s Studies',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Early Childhood Studies',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR, name: 'Education', imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Interdisciplinary General Education',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Liberal Studies',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Educational Leadership',
                imgName: 'CPP')
          ]),
      Category(
          color: AppColors.MAIN_COLOR,
          name: "College of Engineering",
          imgName: "ENG",
          subCategories: [
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Aerospace Engineering',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Chemical Engineering',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Civil Engineering',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Computer Engineering',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Construction Engineering & Management',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Electrical Engineering',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Electromechanical Systems Engineering Technology',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Electronic Systems Engineering Technology',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Industrial Engineering',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Manufacturing Engineering',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Mechanical Engineering',
                imgName: 'CPP')
          ]),
      Category(
          color: AppColors.MAIN_COLOR,
          name: "College of Environmental Design",
          imgName: "ENV",
          subCategories: [
            SubCategory(
                color: AppColors.MAIN_COLOR, name: 'Architecture', imgName: 'CPP'),
            SubCategory(color: AppColors.MAIN_COLOR, name: 'Art', imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Landscape Architecture',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'John T. Lyle Center for Regenerative Studies',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Urban and Regional Planning',
                imgName: 'CPP')
          ]),
      Category(
          color: AppColors.MAIN_COLOR,
          name: "The Collins College of Hospitality Management",
          imgName: "COLLINS",
          subCategories: [
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Hospitality Management',
                imgName: 'CPP')
          ]),
      Category(
          color: AppColors.MAIN_COLOR,
          name: "College of Letters, Arts, and Social Sciences",
          imgName: "CLASS",
          subCategories: [
            SubCategory(
                color: AppColors.MAIN_COLOR, name: 'Communication', imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR, name: 'Economics', imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'English & Modern Languages',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Geography & Anthropology',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR, name: 'History', imgName: 'CPP'),
            SubCategory(color: AppColors.MAIN_COLOR, name: 'Music', imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR, name: 'Philosophy', imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Political Science',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR, name: 'Psychology', imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR, name: 'Sociology', imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Theatre & New Dance',
                imgName: 'CPP')
          ]),
      Category(
          color: AppColors.MAIN_COLOR,
          name: "College of Science",
          imgName: "SCIENCE",
          subCategories: [
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Biological Sciences',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Chemistry & Biochemistry',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Computer Science',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Geological Science',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Kinesiology & Health Promotion',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Mathematics & Statistics',
                imgName: 'CPP'),
            SubCategory(
                color: AppColors.MAIN_COLOR,
                name: 'Physics & Astronomy',
                imgName: 'CPP')
          ])
    ];
  }
}
