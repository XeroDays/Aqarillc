import 'package:agarillc/core/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Task5Viewmodel extends ChangeNotifier {
  bool isLoading = false;

//this is the function that calls the api from the API Service class
// That method returns a response object that contains the response data
// if the response is null then the api call failed method
  void callApi(context) async {
    APIService apiService = APIService();
    isLoading = true;
    notifyListeners();
    Response? respos = await apiService.postRequest((statusCode) {
      onFailes(context, statusCode);
    });
    isLoading = false;
    notifyListeners();

    print(respos == null ? "" : respos.data);
  }

//this is triggered when the api is failed or the data is not returned
// this will open up snackbar with a retry button
// which is recusive and will call the api again
  onFailes(context, int statusCode) {
    final snackBar = SnackBar(
        content: Text('Response from Server Status Code : $statusCode'),
        action: SnackBarAction(
          label: 'Retry',
          onPressed: () {
            callApi(context);
          },
        ));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
