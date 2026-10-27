# Ondalık Kutular 📦👾

Ders sonu için 3 boyutlu eğitsel oyun (6. ve 7. sınıf, ondalık gösterimler ve rasyonel sayılar). Öğrenci uzay gemisindeki 5 kutuyu taşıyıp üzerlerindeki ondalık sayıları **küçükten büyüğe** sıralar. Yanlış yuvaya koyarsa yeşil canavar karakteri yakalayıp fırlatır ve bir ipucu çıkar.

## Menü
Menüde **6. Sınıf** ve **7. Sınıf** sekmeleri vardır; her sınıfta **Sıralama** ve **Bölme** bölümleri bulunur. Son seçilen sınıf hatırlanır.

- **6. sınıf:** aşağıdaki tablolardaki seviyeler (negatif sayı yok).
- **7. sınıf Sıralama:** Karışık · Negatif onda birler (−0,7 · 0,2) · Negatif yüzde birler (−0,4 · −0,45) · Karışık negatifler (−1,5 · −0,05) · **Devirli ondalıklar** (0,3 < 0,33 < 0,3̅ < 0,34 ve negatif devirliler)
- **7. sınıf Bölme:** Farklı basamaklar · Negatif ÷ pozitif (−1,2 ÷ 0,4) · Negatif ÷ negatif (−0,24 ÷ −0,06) · İşaretli, ondalıklı (−0,5 ÷ 0,2 = −2,5) · **Devirli sonuç** (1 ÷ 0,3 = 10 ÷ 3 = 3,3̅). Çeldiriciler: devir çizgisini unutmak (3,3 · 3,33), virgül hatası (0,3̅ · 33,3̅) ve işaret hatası.

## Görüntü ayarı (akıllı tahta)
Menünün altındaki **Görüntü** ayarı:
- **Otomatik** (varsayılan): çizim çözünürlüğü sınırlıdır; oyun kasarsa çözünürlük ve gölgeler kendiliğinden düşer.
- **Hızlı:** zayıf akıllı tahtalar için; gölgeler kapalı, çözünürlük düşük.
- **Kaliteli:** güçlü bilgisayarlar için; kenar yumuşatma ve yüksek çözünürlük.

Oyun zamanı yavaş cihazlarda da gerçek zamanla ilerler (sabit adımlı simülasyon), canavar yolundaki kutuları kenara iter.

## Bölümler (6. sınıf)

### Sıralama
Öğrenci 5 kutuyu taşıyıp üzerlerindeki ondalık sayıları **küçükten büyüğe** sıralar. Yanlış yuvaya koyarsa yeşil canavar karakteri yakalayıp fırlatır ve bir ipucu çıkar.

| # | Konu | Örnek |
|---|------|-------|
| 1 | Onda birler | 0,3 · 0,7 |
| 2 | Yüzde birler | 0,4 · 0,45 |
| 3 | Binde birler | 0,3 · 0,29 |
| 4 | Tam kısımlı | 1,5 · 1,05 |
| 5 | Karışık | 0,305 · 0,35 · 1,03 |

### Bölme
Makine ekranında bölme işlemi pay / payda olarak görünür. Öğrenci ×10 ve ×100 kutularını PAY ve PAYDA yuvalarına taşıyarak virgülü kaydırır; sona eklenen sıfırlar turuncu görünür. Pay ile payda farklı kaydırılırsa ekrandaki "=" işareti "≠" olur. ONAYLA'ya basınca:
- Kaydırmalar farklıysa: ilk seferde uyarı (tek hak) ve kaydırmalar sıfırlanır; ikinci seferde canavar karakteri gemiden atar ve seviye baştan başlar.
- İkisi de doğal sayıya döndüyse cevap kutuları çıkar; doğru kutu SONUÇ'a götürülür. Yanlış cevapta canavar fırlatır.

| # | Konu | Örnek |
|---|------|-------|
| 1 | Doğal ÷ onda bir | 6 ÷ 0,2 = 60 ÷ 2 = 30 |
| 2 | Onda bir ÷ onda bir | 1,2 ÷ 0,4 = 12 ÷ 4 = 3 |
| 3 | Yüzde birler | 0,24 ÷ 0,06 = 24 ÷ 6 = 4 |
| 4 | Farklı basamaklar | 1,5 ÷ 0,03 = 150 ÷ 3 = 50 |
| 5 | Ondalıklı sonuç | 0,5 ÷ 0,2 = 5 ÷ 2 = 2,5 |

Her seviyede 5 soru/kutu vardır, sayılar her oyunda rastgele üretilir ve kafadan hesaplanacak kadar küçüktür. Hatasız: ★★★, 1–2 hata: ★★, daha fazla: ★.

## Kontroller
- **Bilgisayar / akıllı tahta:** WASD veya ok tuşları ile yürü, Boşluk ile AL / YERLEŞTİR / BIRAK. Fareyle zemine basılı tutarak da yürünür. Fare tekerleği veya iki parmakla (tablet, akıllı tahta) yakınlaştırılıp uzaklaştırılır.
- **Tablet / telefon:** Sol alttaki joystick, sağ alttaki büyük buton.

## Telefon uygulaması (APK)
- Telefon yan çevrilince oyun da yan döner; telefonun döndürme kilidi açık olmasa da çalışır.
- Tam ekran: üstteki durum çubuğu ve alttaki gezinme çubuğu gizlidir; ekranın kenarından kaydırınca geçici olarak görünür.
- Kamera çentiği olan telefonlarda butonlar çentiğin altında kalmaz.
Bu ayarlar `tools/android-patch.sh` ile APK derlenirken uygulanır. Yatay ekran (kısa ekran) için menü ve kontroller sıkılaştırılmıştır.

## Dosyalar
- `index.html` — oyunun tamamı (Three.js içine gömülü, tek dosya). `src/index.src.html` düzenlenip `python3 tools/build.py` ile üretilir.
- `sw.js` — çevrimdışı katman, `version.json` — güncelleme kontrolü.
- `.github/workflows/pages.yml` — GitHub Pages yayını, `apk.yml` — `v*` etiketiyle APK derleyip Release'e yükler.

## Yeni sürüm
`src/index.src.html` içindeki `APP_VERSION` ve `version.json` aynı anda artırılır, `python3 tools/build.py` çalıştırılır ve `main`'e gönderilir. `version.json` değiştiği için APK iş akışı kendiliğinden çalışır ve `v<sürüm>` etiketli release'i oluşturur.

Made by Us
