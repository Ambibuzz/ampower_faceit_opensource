import 'package:attendancemanagement/base_viewmodel.dart';
import 'package:attendancemanagement/screens/task_list/api_requests/web_requests.dart';

class TaskProgressViewModel extends BaseViewModel {
  var taskProgressData = [];

  getTaskProgressSummary(referenceName) async{
    taskProgressData = await WebRequests().getTaskProgress(referenceName) ?? [];
    notifyListeners();
  }
}