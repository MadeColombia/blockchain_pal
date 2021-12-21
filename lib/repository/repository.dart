//import 'package:dio/dio.dart';

class Repository {
  static String mainUrl = 'pro-api.coinmarketcap.com/v1/';
  final String apikey = '07976d07-2b62-438a-a6bd-9c011968d7b1';
  var currencyListingAPI = '${mainUrl}cryptocurrency/listings/latest';
  //Dio _dio = Dio();
  Future getCoins() async {
    try {} catch (error, stackTrace) {
      print("exception $error , dd $stackTrace");
      return;
    }
  }
}
