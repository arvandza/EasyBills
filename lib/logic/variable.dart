class Content {
  final String title;
  final String amountMoney;
  final String amountUser;

  Content(
      {required this.title,
      required this.amountMoney,
      required this.amountUser});
}

List<Content> listContent = [
  Content(title: "Seblak", amountMoney: "60.000", amountUser: "2"),
  Content(title: "Rujak Cingur", amountMoney: "50.000", amountUser: "3")
];
