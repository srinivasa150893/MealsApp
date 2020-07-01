import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;
  FavouritesScreen(this.favouriteMeals);
  @override
  Widget build(BuildContext context) {
    if(favouriteMeals.isEmpty){
       return Center(
      child: Text('You have no Favourites yet! - Start adding some!'),
    );
    }else{
         return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            title: favouriteMeals[index].title,
            affordability: favouriteMeals[index].affordability,
            imageURL: favouriteMeals[index].imageUrl,
            duration:favouriteMeals[index].duration,
            complexity: favouriteMeals[index].complexity,
            
          );
        },
        itemCount: favouriteMeals.length,
      );
    
    }
   
  }
}
