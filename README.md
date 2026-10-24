# Ondalık Kutular 📦👾

Ders sonu için 3 boyutlu eğitsel oyun (6. sınıf, ondalık gösterimler). Öğrenci uzay gemisindeki 5 kutuyu taşıyıp üzerlerindeki ondalık sayıları **küçükten büyüğe** sıralar. Yanlış yuvaya koyarsa yeşil canavar karakteri yakalayıp fırlatır ve bir ipucu çıkar.

## Bölümler

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
- **Bilgisayar / akıllı tahta:** WASD veya ok tuşları ile yürü, Boşluk ile AL / YERLEŞTİR / BIRAK. Fareyle zemine basılı tutarak da yürünür. Fare tekerleği ile yakınlaştırılıp uzaklaştırılır.
- **Tablet / telefon:** Sol alttaki joystick, sağ alttaki büyük buton.

## Dosyalar
- `index.html` — oyunun tamamı (Three.js içine gömülü, tek dosya). `src/index.src.html` düzenlenip `python3 tools/build.py` ile üretilir.
- `sw.js` — çevrimdışı katman, `version.json` — güncelleme kontrolü.
- `.github/workflows/pages.yml` — GitHub Pages yayını, `apk.yml` — `v*` etiketiyle APK derleyip Release'e yükler.

## Yeni sürüm
`src/index.src.html` içindeki `APP_VERSION` ve `version.json` aynı anda artırılır, `python3 tools/build.py` çalıştırılır ve `main`'e gönderilir. `version.json` değiştiği için APK iş akışı kendiliğinden çalışır ve `v<sürüm>` etiketli release'i oluşturur.

Made by Us
