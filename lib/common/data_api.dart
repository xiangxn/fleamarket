import 'package:grpc/grpc.dart';
import '../grpc/bitsflea.pb.dart';
import '../grpc/bitsflea.pbgrpc.dart';
import 'package:eosdart_ecc/eosdart_ecc.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class DataApi {
  static const KEY_TOKEN = "token";
  BitsFleaClient _client;
  EOSPrivateKey _privateKey = EOSPrivateKey.fromString('5JTjhoW4cbBDcHkfDVE6C3DwHqgU4yccqTAxrV7xc7JMDwa1xja');
  DateTime _lastTokenTime = DateTime.now();
  SharedPreferences _localData;

  Future<bool> init() async {
    final _channel = ClientChannel(
      'api.bitsflea.com',
      port: 50000,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _client = BitsFleaClient(_channel);
    _localData = await SharedPreferences.getInstance();
    return true;
  }

  Future<String> getToken({bool force = false}) async {
    String token = _localData.getString(KEY_TOKEN) ?? "0";
    final diff = DateTime.now().difference(_lastTokenTime);
    if (force == false && diff.inHours < 2 && token != "0") {
      return token;
    }
    final request = RefreshTokenRequest();
    request.userid = 1;
    request.token = token;
    request.time = ((new DateTime.now().millisecondsSinceEpoch) / 1000).floor();
    request.sign = _privateKey.signString(request.userid.toString() + request.token + request.time.toString()).toString();
    //print(request.sign);
    final res = await _client.refreshToken(request);
    if (res.status.code == 0) {
      token = res.token;
      _lastTokenTime = DateTime.now();
      await _localData.setString(KEY_TOKEN, token);
    }
    //print(res);
    return token;
  }

  Future<dynamic> getUserByPhone(String phone) async {
    final token = await getToken();
    final query = "{ users(phone:\"" +
        phone +
        "\") { edges{ node { userid,eosid,phone,status,nickname,head,creditValue,referrer,lastActiveTime,postsTotal,sellTotal,buyTotal," +
        "referralTotal,point,isReviewer,favoriteTotal,collectionTotal,fansTotal,authKey } } } }";
    final res = await _client.search(SearchRequest()..query = query, options: CallOptions(metadata: {'token': token}));
    //print(res);
    if (res.status.code == 0 && res.data.length > 0) {
      final data = json.decode(res.data);
      final e = data['users']['edges'];
      if (e.length > 0) return e[0]['node'];
    }
    return null;
  }
}
