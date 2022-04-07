import 'dart:convert';

class BluetoothDevice {
  String? name;
  String? address;
  int? type = 0;
  bool? connected = false;
  
  BluetoothDevice({
    this.name,
    this.address,
    this.type,
    this.connected,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
      'type': type,
      'connected': connected,
    };
  }

  factory BluetoothDevice.fromMap(Map<String, dynamic> map) {
    return BluetoothDevice(
      name: map['name'],
      address: map['address'],
      type: map['type']?.toInt(),
      connected: map['connected'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BluetoothDevice.fromJson(String source) =>
      BluetoothDevice.fromMap(json.decode(source));
}
