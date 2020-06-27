import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  //adding the above static const property to avoid using the names everywhere
    // final String categoryId;
    // final String categoryTitle;

    // CategoryMealsScreen(this.categoryId,this.categoryTitle);


  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    return Scaffold(
        appBar: AppBar(
          title: Text('The Category $title'),
        ),
        body: Center(child: Text('The recepies for the $title')));
  }
}
