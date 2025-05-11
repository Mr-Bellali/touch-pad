import 'package:network_info_plus/network_info_plus.dart';

final info = NetworkInfo();

Future<void> getNetworkInfo() async {
  final wifiName = await info.getWifiName(); // "FooNetwork"
  final wifiBSSID = await info.getWifiBSSID(); // 11:22:33:44:55:66
  final wifiIP = await info.getWifiIP(); // 192.168.1.43
  final wifiIPv6 = await info.getWifiIPv6(); // 2001:0db8:85a3:0000:0000:8a2e:0370:7334
  final wifiSubmask = await info.getWifiSubmask(); // 255.255.255.0
  final wifiBroadcast = await info.getWifiBroadcast(); // 192.168.1.255
  final wifiGateway = await info.getWifiGatewayIP(); // 192.168.1.1

  print("wifiName: ${wifiName}");
  print("wifiBSSID: ${wifiBSSID}");
  print("wifiIP: ${wifiIP}");
  print("wifiIPv6: ${wifiIPv6}");
  print("wifiSubmask: ${wifiSubmask}");
  print("wifiBroadcast: ${wifiBroadcast}");
  print("wifiGateway: ${wifiGateway}");
}
