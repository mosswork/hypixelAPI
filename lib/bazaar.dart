class Bazaar {
  final bool success;
  final int lastUpdated;
  final Map<String, Product> products;

  Bazaar(this.success, this.lastUpdated, this.products);

  Bazaar.fromJson(Map<String, dynamic> json)
      : success = json['success'],
        lastUpdated = json['lastUpdated'],
        products = (json['products']);
}

class Product {
  String productId;
  List<BuySellSummary> sellSummary;
  List<BuySellSummary> buySummary;
  QuickStatus quickStatus;

  Product(this.productId, this.sellSummary, this.buySummary, this.quickStatus);

  Product.fromJson(Map<String, dynamic> json)
      : productId = json['product_id'],
        sellSummary = (json['sell_summary'] as List)
            .map((e) => BuySellSummary.fromJson(e))
            .toList(),
        buySummary = (json['buy_summary'] as List)
            .map((e) => BuySellSummary.fromJson(e))
            .toList(),
        quickStatus = QuickStatus.fromJson(json['quick_status']);
}

class BuySellSummary {
  final int amount;
  final double ppu;
  final int orders;

  BuySellSummary(this.amount, this.ppu, this.orders);

  BuySellSummary.fromJson(Map<String, dynamic> json)
      : amount = json['amount'],
        ppu = json['pricePerUnit'],
        orders = json['orders'];
}

class QuickStatus {
  String productId;

  double sellPrice;
  int sellVolume;
  int sellMovingWeek;
  int sellOrders;

  double buyPrice;
  int buyVolume;
  int buyMovingWeek;
  int buyOrders;

  QuickStatus(
      this.productId,
      this.sellPrice,
      this.sellVolume,
      this.sellMovingWeek,
      this.sellOrders,
      this.buyPrice,
      this.buyVolume,
      this.buyMovingWeek,
      this.buyOrders);

  QuickStatus.fromJson(Map<String, dynamic> json)
      : productId = json['productId'],
        sellPrice = json['sellPrice'],
        sellVolume = json['sellVolume'],
        sellMovingWeek = json['sellMovingWeek'],
        sellOrders = json['sellOrders'],
        buyPrice = json['buyPrice'],
        buyVolume = json['buyVolume'],
        buyMovingWeek = json['buyMovingWeek'],
        buyOrders = json['buyOrders'];
}
