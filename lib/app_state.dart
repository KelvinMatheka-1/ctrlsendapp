import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectWalletId =
          prefs.getStringList('ff_selectWalletId')?.map(int.parse).toList() ??
              _selectWalletId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _paying = false;
  bool get paying => _paying;
  set paying(bool value) {
    _paying = value;
  }

  List<int> _selectWalletId = [];
  List<int> get selectWalletId => _selectWalletId;
  set selectWalletId(List<int> value) {
    _selectWalletId = value;
    prefs.setStringList(
        'ff_selectWalletId', value.map((x) => x.toString()).toList());
  }

  void addToSelectWalletId(int value) {
    selectWalletId.add(value);
    prefs.setStringList(
        'ff_selectWalletId', _selectWalletId.map((x) => x.toString()).toList());
  }

  void removeFromSelectWalletId(int value) {
    selectWalletId.remove(value);
    prefs.setStringList(
        'ff_selectWalletId', _selectWalletId.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromSelectWalletId(int index) {
    selectWalletId.removeAt(index);
    prefs.setStringList(
        'ff_selectWalletId', _selectWalletId.map((x) => x.toString()).toList());
  }

  void updateSelectWalletIdAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    selectWalletId[index] = updateFn(_selectWalletId[index]);
    prefs.setStringList(
        'ff_selectWalletId', _selectWalletId.map((x) => x.toString()).toList());
  }

  void insertAtIndexInSelectWalletId(int index, int value) {
    selectWalletId.insert(index, value);
    prefs.setStringList(
        'ff_selectWalletId', _selectWalletId.map((x) => x.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
