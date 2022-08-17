class OrderModel {
  String? id;
  DateTime? createDateTime;
  DateTime? overdueDateTime;
  String? status;
  String? copyAndPaste;
  double? total;
  OrderModel({
    this.id,
    this.createDateTime,
    this.overdueDateTime,
    this.status,
    this.copyAndPaste,
    this.total,
  });
}
