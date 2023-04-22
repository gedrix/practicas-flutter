
import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import '../../infrastructure/models/yes_no_models.dart';

class GetYesNoAnswer{

  final _dio = Dio();

  Future<Message> getAnswer()async{
    
    final response = await _dio.get('https://yesno.wtf/api');
    
    final yesNoModels = YesNoModels.fromJsonMap(response.data); 
    return yesNoModels.ToMessageEntity();
  }

}