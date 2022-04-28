import '../common/data_api.dart';

class User{
  int userid;
  String eosid;
  String phone;
  int status;
  String ownerKey;
  String activeKey;
  String token;
  dynamic data;
}
class AccountService {
  DataApi _api;
  User _user;

  get user => _user;

  AccountService(DataApi api){
    _api = api;

  }

  
}