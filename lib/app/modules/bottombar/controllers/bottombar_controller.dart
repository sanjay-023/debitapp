import 'package:debitapp/app/data/model/service/api_service.dart';
import 'package:debitapp/app/modules/add/views/add_view.dart';
import 'package:debitapp/app/modules/articles/views/articles_view.dart';
import 'package:debitapp/app/modules/history/views/history_view.dart';
import 'package:debitapp/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

class BottombarController extends GetxController {
  ApiService apiService = ApiService();
  @override
  void onInit() {
    apiService.getData();
    super.onInit();
  }

  final pages = [HomeView(), HistoryView(), ArticlesView(), AddView()];
  int currentSelectedIntex = 0;

  chnageIndex(newIndex) {
    currentSelectedIntex = newIndex;
    update();
  }
}
