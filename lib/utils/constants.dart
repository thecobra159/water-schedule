import 'package:flutter_dotenv/flutter_dotenv.dart';

final _saneparId = dotenv.env["SANEPAR_ID"];
final _saneparGuid = dotenv.env["SANEPAR_GUID"];

final lackWaterEndpoint =
    "https://sgcb2b.sanepar.com.br/saneparmobile/ServiceFaltaDAgua.svc/webhttp/GetFaltaDAgua/${_saneparGuid}/${_saneparId}";
final consumeReaderEndpoint =
    "https://sgcb2b.sanepar.com.br/saneparmobile/GetLeituraConsumo.svc/webhttp/GetFaltaDAgua/${_saneparGuid}/${_saneparId}";
final paymentEndpoint =
    "https://sgcb2b.sanepar.com.br/saneparmobile/ServiceFaltaDAgua.svc/webhttp/GetFaltaDAgua/${_saneparGuid}/${_saneparId}";
