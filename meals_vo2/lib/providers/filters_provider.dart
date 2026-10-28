import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:meals_vo2/providers/meals_provider.dart';
enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
FiltersNotifier() : super({
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
 Filter.vegan: false,
}
);

 void setFilter(Filter filter, bool IsActive){
  state = {...state, filter : IsActive};
 }
}

final filtersProvider = StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>((ref){
  return FiltersNotifier();
});

final filteredMealsProvider = Provider((ref){
  final meals = ref.watch(mealsProvider);
  final activefilters = ref.watch(filtersProvider);
 return meals.where((meal){
   if (activefilters[Filter.glutenFree]! && !meal.isGlutenFree) {
        return false;
      }
      if (activefilters[Filter.lactoseFree]! && !meal.isLactoseFree) {
        return false;
      }
      if (activefilters[Filter.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      if (activefilters[Filter.vegan]! && !meal.isVegan) {
        return false;
      }
      return true;
    }).toList();
});