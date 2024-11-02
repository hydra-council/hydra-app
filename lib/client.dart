import 'package:grpc/grpc.dart';
import 'package:hydra_app/config.dart';

ClientChannel initChannel({String host = hydraHost, int port = hydraPort}) {
  final channel = ClientChannel(
    host,
    port: port,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  return channel;
}
