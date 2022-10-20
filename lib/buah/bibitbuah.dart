class BibitItem {
  final String nama;
  final double harga;
  final String path;
  BibitItem({required this.nama, required this.harga, required this.path});
}

BibitList allBibit = BibitList(bibit: [
  BibitItem(
      nama: 'Semangka',
      harga: 10000,
      path: 'assets/semangka.png'
  ),
  BibitItem(
      nama: 'Mangga',
      harga: 30000,
      path: 'assets/mangga.png'
  ),
]);

class BibitList {
  List<BibitItem> bibit;

  BibitList({required this.bibit});
}