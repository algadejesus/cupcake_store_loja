import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _dadosCliente = prefs
              .getStringList('ff_dadosCliente')
              ?.map((x) {
                try {
                  return ClienteStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _dadosCliente;
    });
    _safeInit(() {
      _pedido = prefs
              .getStringList('ff_pedido')
              ?.map((x) {
                try {
                  return PedidoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pedido;
    });
    _safeInit(() {
      _pedidoFinalizados = prefs
              .getStringList('ff_pedidoFinalizados')
              ?.map((x) {
                try {
                  return OrdensPedidosStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pedidoFinalizados;
    });
    _safeInit(() {
      _addCarrinho = prefs.getDouble('ff_addCarrinho') ?? _addCarrinho;
    });
    _safeInit(() {
      _multiplicacao = prefs.getDouble('ff_multiplicacao') ?? _multiplicacao;
    });
    _safeInit(() {
      _multiplicao2 = prefs.getDouble('ff_multiplicao2') ?? _multiplicao2;
    });
    _safeInit(() {
      _formaPagto = prefs.getString('ff_formaPagto') ?? _formaPagto;
    });
    _safeInit(() {
      _isActiveEdit = prefs.getBool('ff_isActiveEdit') ?? _isActiveEdit;
    });
    _safeInit(() {
      _addPedido = prefs.getInt('ff_addPedido') ?? _addPedido;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ClienteStruct> _dadosCliente = [];
  List<ClienteStruct> get dadosCliente => _dadosCliente;
  set dadosCliente(List<ClienteStruct> _value) {
    _dadosCliente = _value;
    prefs.setStringList(
        'ff_dadosCliente', _value.map((x) => x.serialize()).toList());
  }

  void addToDadosCliente(ClienteStruct _value) {
    _dadosCliente.add(_value);
    prefs.setStringList(
        'ff_dadosCliente', _dadosCliente.map((x) => x.serialize()).toList());
  }

  void removeFromDadosCliente(ClienteStruct _value) {
    _dadosCliente.remove(_value);
    prefs.setStringList(
        'ff_dadosCliente', _dadosCliente.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDadosCliente(int _index) {
    _dadosCliente.removeAt(_index);
    prefs.setStringList(
        'ff_dadosCliente', _dadosCliente.map((x) => x.serialize()).toList());
  }

  void updateDadosClienteAtIndex(
    int _index,
    ClienteStruct Function(ClienteStruct) updateFn,
  ) {
    _dadosCliente[_index] = updateFn(_dadosCliente[_index]);
    prefs.setStringList(
        'ff_dadosCliente', _dadosCliente.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDadosCliente(int _index, ClienteStruct _value) {
    _dadosCliente.insert(_index, _value);
    prefs.setStringList(
        'ff_dadosCliente', _dadosCliente.map((x) => x.serialize()).toList());
  }

  List<PedidoStruct> _pedido = [];
  List<PedidoStruct> get pedido => _pedido;
  set pedido(List<PedidoStruct> _value) {
    _pedido = _value;
    prefs.setStringList('ff_pedido', _value.map((x) => x.serialize()).toList());
  }

  void addToPedido(PedidoStruct _value) {
    _pedido.add(_value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void removeFromPedido(PedidoStruct _value) {
    _pedido.remove(_value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPedido(int _index) {
    _pedido.removeAt(_index);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void updatePedidoAtIndex(
    int _index,
    PedidoStruct Function(PedidoStruct) updateFn,
  ) {
    _pedido[_index] = updateFn(_pedido[_index]);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPedido(int _index, PedidoStruct _value) {
    _pedido.insert(_index, _value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  List<OrdensPedidosStruct> _pedidoFinalizados = [];
  List<OrdensPedidosStruct> get pedidoFinalizados => _pedidoFinalizados;
  set pedidoFinalizados(List<OrdensPedidosStruct> _value) {
    _pedidoFinalizados = _value;
    prefs.setStringList(
        'ff_pedidoFinalizados', _value.map((x) => x.serialize()).toList());
  }

  void addToPedidoFinalizados(OrdensPedidosStruct _value) {
    _pedidoFinalizados.add(_value);
    prefs.setStringList('ff_pedidoFinalizados',
        _pedidoFinalizados.map((x) => x.serialize()).toList());
  }

  void removeFromPedidoFinalizados(OrdensPedidosStruct _value) {
    _pedidoFinalizados.remove(_value);
    prefs.setStringList('ff_pedidoFinalizados',
        _pedidoFinalizados.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPedidoFinalizados(int _index) {
    _pedidoFinalizados.removeAt(_index);
    prefs.setStringList('ff_pedidoFinalizados',
        _pedidoFinalizados.map((x) => x.serialize()).toList());
  }

  void updatePedidoFinalizadosAtIndex(
    int _index,
    OrdensPedidosStruct Function(OrdensPedidosStruct) updateFn,
  ) {
    _pedidoFinalizados[_index] = updateFn(_pedidoFinalizados[_index]);
    prefs.setStringList('ff_pedidoFinalizados',
        _pedidoFinalizados.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPedidoFinalizados(
      int _index, OrdensPedidosStruct _value) {
    _pedidoFinalizados.insert(_index, _value);
    prefs.setStringList('ff_pedidoFinalizados',
        _pedidoFinalizados.map((x) => x.serialize()).toList());
  }

  double _addCarrinho = 0.0;
  double get addCarrinho => _addCarrinho;
  set addCarrinho(double _value) {
    _addCarrinho = _value;
    prefs.setDouble('ff_addCarrinho', _value);
  }

  double _multiplicacao = 0.0;
  double get multiplicacao => _multiplicacao;
  set multiplicacao(double _value) {
    _multiplicacao = _value;
    prefs.setDouble('ff_multiplicacao', _value);
  }

  double _multiplicao2 = 0.0;
  double get multiplicao2 => _multiplicao2;
  set multiplicao2(double _value) {
    _multiplicao2 = _value;
    prefs.setDouble('ff_multiplicao2', _value);
  }

  int _contador = -1;
  int get contador => _contador;
  set contador(int _value) {
    _contador = _value;
  }

  String _formaPagto = '';
  String get formaPagto => _formaPagto;
  set formaPagto(String _value) {
    _formaPagto = _value;
    prefs.setString('ff_formaPagto', _value);
  }

  bool _isActiveEdit = false;
  bool get isActiveEdit => _isActiveEdit;
  set isActiveEdit(bool _value) {
    _isActiveEdit = _value;
    prefs.setBool('ff_isActiveEdit', _value);
  }

  int _addPedido = 0;
  int get addPedido => _addPedido;
  set addPedido(int _value) {
    _addPedido = _value;
    prefs.setInt('ff_addPedido', _value);
  }
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
