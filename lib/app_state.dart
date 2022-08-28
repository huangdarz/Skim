import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _isLoggedIn = prefs.getBool('ff_isLoggedIn') ?? _isLoggedIn;
  }

  late SharedPreferences prefs;

  int pageIndex = 0;

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;
  set isLoggedIn(bool _value) {
    _isLoggedIn = _value;
    prefs.setBool('ff_isLoggedIn', _value);
  }

  List<int> monsterspend = [5, 10, 7, 0, 20, 25, 40, 90, 10, 5];

  List<String> days = [
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28'
  ];

  List<int> daysint = [19, 20, 21, 22, 23, 24, 25, 26, 27, 28];

  List<int> otherspend = [20, 12, 25, 50, 30, 85, 70, 8, 40, 25];
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
