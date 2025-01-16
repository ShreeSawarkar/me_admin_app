import 'package:me_admin_app/model/category.dart';

import '../../utility/api_response.dart';
import '../../model/poster.dart';
import '../../services/http_services.dart';
import '../../utility/snack_bar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:get/get.dart';

class DataProvider extends ChangeNotifier {
  HttpService service = HttpService();

  List<Category> _allCategories = [];
  List<Category> _filteredCategories = [];
  List<Category> get categories => _filteredCategories;

  List<Poster> _allPosters = [];
  List<Poster> _filteredPosters = [];
  List<Poster> get posters => _filteredPosters;


  DataProvider() {
    getAllCategory();
    getAllPosters();
    print(_allPosters.length);
  }


  // Get All City
  Future<List<Category>> getAllCategory({bool showSnack = false}) async {
    try {
      Response response = await service.getItems(endpointUrl: 'category');
      if (response.isOk) {
        ApiResponse<List<Category>> apiResponse = ApiResponse<List<Category>>.fromJson(
          response.body,
              (json) => (json as List).map((item) => Category.fromJson(item)).toList(),
        );
        _allCategories = apiResponse.data ?? [];
        _filteredCategories =
            List.from(_allCategories); //Initialize filtered list with all data
        notifyListeners();
        if (showSnack) {
          SnackBarHelper.showSuccessSnackBar(
              apiResponse.message + _filteredCategories.length.toString());
        }
      }
    } catch (e) {
      if (showSnack) SnackBarHelper.showErrorSnackBar(e.toString());
      rethrow;
    }
    return _filteredCategories;
  }
  void filterCity(String keyword) {
    if (keyword.isEmpty) {
      _filteredCategories = List.from(_allCategories);
    } else {
      final lowerKeyword = keyword.toLowerCase();
      _filteredCategories = _allCategories.where((category) {
        return (category.categoryName ?? '').toLowerCase().contains(lowerKeyword);
      }).toList();
    }
    notifyListeners();
  }


  // Get All Posters
  Future<List<Poster>> getAllPosters({bool showSnack = false}) async {
    try {
      Response response = await service.getItems(endpointUrl: 'posters');
      if (response.isOk) {
        ApiResponse<List<Poster>> apiResponse =
        ApiResponse<List<Poster>>.fromJson(
          response.body,
              (json) =>
              (json as List).map((item) => Poster.fromJson(item)).toList(),
        );
        _allPosters = apiResponse.data ?? [];
        _filteredPosters =
            List.from(_allPosters); //Initialize filtered list with all data
        notifyListeners();
        if (showSnack) {
          SnackBarHelper.showSuccessSnackBar(
              apiResponse.message + _filteredPosters.length.toString());
        }
      }
    } catch (e) {
      if (showSnack) SnackBarHelper.showErrorSnackBar(e.toString());
      rethrow;
    }
    return _filteredPosters;
  }

  void filterPosters(String keyword) {
    if (keyword.isEmpty) {
      _filteredPosters = List.from(_allPosters);
    } else {
      final lowerKeyword = keyword.toLowerCase();
      _filteredPosters = _allPosters.where((poster) {
        return (poster.posterName ?? '').toLowerCase().contains(lowerKeyword);
      }).toList();
    }
    notifyListeners();
  }


}
