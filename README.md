# Project App Belanja

Praktikum Layout dan Navigasi dengan tema produk belanja.

## Kode

  ### main.dart
  <img width="1632" height="1154" alt="image" src="https://github.com/user-attachments/assets/2953690a-6b18-4c55-aca0-6473d44d4d1f" />
  
  Deskripsi : 
  
  Pada file main.dart ini terdapat inisiasi route supaya project ini dapat berpindah halaman, dapat dilihat initialRoute
  adalah "/" yang berarti saat menjalankan project maka route yang dijalankan adalah "/". 

  Lalu ada juga route yang berisi daftar rute halaman yang dapat diakses, terdapat 2 rute yakni "/" yang mengarah ke 
  halaman home page dan rute "/item" yang mengarah ke halaman item page.

  ### models/items.dart
  <img width="990" height="894" alt="image" src="https://github.com/user-attachments/assets/7a00d502-0bcc-43bf-b80d-7ec7f3a2bd20" />
  
  Deskripsi :

  Pada file items.dart ini terdapat class untuk mendefinisikan data barang. Ada 6 atribut yakni : name, imageProduct, 
  description, price, rating, dan stok. 

  ### widgets/product_card.dart
  <img width="1546" height="3464" alt="image" src="https://github.com/user-attachments/assets/b04dde10-f74d-46dc-bcfb-b264fab51aee" />

  Deskripsi :

  File ini berisi tampilan product card yang reusable, pada project ini digunakan untuk home page saja dan cukup dipanggil
  ProductCard maka akan muncul. Product card juga menggunakan Inkwell supaya dapat berpindah ke item page ketika mengklik card.

  ### widgets/footer.dart
  <img width="1312" height="1154" alt="image" src="https://github.com/user-attachments/assets/78fd9dbe-c07a-454d-9ba9-a6b2ec5945de" />

  Deskripsi :

  File ini berisi tampilan footer yang reusable untuk home page maupun item page.

  ### pages/home_page.dart
  <img width="2048" height="2458" alt="image" src="https://github.com/user-attachments/assets/38934b73-ad21-4801-af77-c9709349c06f" />

  Deskripsi : 

  Pada file home page ini, terdapat list items berisi 2 data barang dengan memanggil class items dari file model items. 
  Kemudian pada bagian body, menggunakan GridView.builder(...) yang didalamnya me-return ProductCard dari file widgets/product_card.dart,
  dengan grid view ini dapat mengatur pembagian tata letak card. Pada gridDelegate mengatur 1 baris akan ditempati oleh 2 card. Lalu 
  pada bottomNavigationBar dipanggil Footer dari file footer.dart

  ### pages/item_page.dart
  <img width="1546" height="3502" alt="image" src="https://github.com/user-attachments/assets/6fd4d21d-9e5b-4640-b24f-d74788e2a360" />

  Deskripsi : 

  Pada file item page ini untuk menampilkan detail product yang telah dipencet, selain itu ada juga Hero karena pada product card 
  menggunakan Hero widget.

## Tampilan

  ### Tampilan Home Page
  <img width="411" height="818" alt="image" src="https://github.com/user-attachments/assets/fc83c944-f7ba-4a76-8743-6d7183bf0e36" />

  ### Tampilan Item Page
  <img width="402" height="815" alt="image" src="https://github.com/user-attachments/assets/dc78f28a-152a-4e8e-a0ef-babc6569fbe8" />

  
