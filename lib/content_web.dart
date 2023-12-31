import 'package:flutter/material.dart';
import 'package:umkm_wview/my_web_view.dart';
import 'package:umkm_wview/url.dart';

class Inventory extends StatelessWidget {
  final String title;
  const Inventory({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/daftar-inventori",
    );
  }
}

class Profil extends StatelessWidget {
  final String title;
  const Profil({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/my-profile",
    );
  }
}

class Produksi extends StatelessWidget {
  final String title;
  const Produksi({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/mutasi-inventori/produksi",
    );
  }
}

class StockOpname extends StatelessWidget {
  final String title;
  const StockOpname({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/stock-opname",
    );
  }
}

class StockInventory extends StatelessWidget {
  final String title;
  const StockInventory({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/stock-inventori",
    );
  }
}

class InTransaksi extends StatelessWidget {
  final String title;
  const InTransaksi({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/mutasi-inventori/stock-in",
    );
  }
}

class OutTransaksi extends StatelessWidget {
  final String title;
  const OutTransaksi({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/mutasi-inventori/stock-out",
    );
  }
}

class Transfer extends StatelessWidget {
  final String title;
  const Transfer({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/mutasi-inventori/transfer",
    );
  }
}

class Penyesuaian extends StatelessWidget {
  final String title;
  const Penyesuaian({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/mutasi-inventori/penyesuaian",
    );
  }
}

class Konversi extends StatelessWidget {
  final String title;
  const Konversi({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/mutasi-inventori/konversi",
    );
  }
}

class StockAlert extends StatelessWidget {
  final String title;
  const StockAlert({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/mutasi-inventori/stock-alert",
    );
  }
}

class RiwayatTransaksi extends StatelessWidget {
  final String title;
  const RiwayatTransaksi({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/mutasi-inventori/history",
    );
  }
}

class PenerimaanBarang extends StatelessWidget {
  final String title;
  const PenerimaanBarang({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/pembelian/receive-item",
    );
  }
}

class PurchaseOrder extends StatelessWidget {
  final String title;
  const PurchaseOrder({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/pembelian/purchase-order",
    );
  }
}

class ReturBarang extends StatelessWidget {
  final String title;
  const ReturBarang({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyWebView(
      title: title,
      selectedUrl: UrlServer.url + "/inventori/pembelian/retur-item",
    );
  }
}
