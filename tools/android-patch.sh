#!/usr/bin/env bash
# Capacitor'ın oluşturduğu Android projesine telefon ayarlarını uygular:
#  - Ekran, telefonun döndürme kilidinden bağımsız olarak sensöre göre yan/dik döner
#  - Durum çubuğu ve alttaki gezinme çubuğu gizlenir (tam ekran); kenardan kaydırınca geçici görünür
#  - Kamera çentiği olan telefonlarda oyun çentiğin altına girmez
set -euo pipefail
MANIFEST=android/app/src/main/AndroidManifest.xml
ACT_DIR=android/app/src/main/java/com/madebyus/ondalikkutular

grep -q 'android:name=".MainActivity"' "$MANIFEST" || { echo "MainActivity bildirimde bulunamadı"; exit 1; }
if ! grep -q 'android:screenOrientation' "$MANIFEST"; then
  sed -i 's/android:name=".MainActivity"/android:name=".MainActivity"\n            android:screenOrientation="sensor"/' "$MANIFEST"
fi
grep -q 'android:screenOrientation="sensor"' "$MANIFEST" || { echo "Ekran yönü ayarı eklenemedi"; exit 1; }

test -d "$ACT_DIR" || { echo "MainActivity klasörü yok: $ACT_DIR"; exit 1; }
cat > "$ACT_DIR/MainActivity.java" <<'JAVA'
package com.madebyus.ondalikkutular;

import android.os.Bundle;
import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.getcapacitor.BridgeActivity;

public class MainActivity extends BridgeActivity {
    private static final int BG = 0xFF0B1026; // oyunun arka plan rengi

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().getDecorView().setBackgroundColor(BG);
        View web = getBridge().getWebView();
        web.setBackgroundColor(BG);
        // Çentik (kamera deliği) bölgesini boş bırak: butonlar çentiğin altında kalmasın
        View holder = (View) web.getParent();
        holder.setBackgroundColor(BG);
        ViewCompat.setOnApplyWindowInsetsListener(holder, (v, insets) -> {
            Insets c = insets.getInsets(WindowInsetsCompat.Type.displayCutout());
            v.setPadding(c.left, c.top, c.right, c.bottom);
            return insets;
        });
        hideSystemBars();
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) hideSystemBars();
    }

    private void hideSystemBars() {
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        WindowInsetsControllerCompat c = WindowCompat.getInsetsController(getWindow(), getWindow().getDecorView());
        c.hide(WindowInsetsCompat.Type.systemBars());
        c.setSystemBarsBehavior(WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE);
    }
}
JAVA
echo "Android ayarları uygulandı:"; grep -n 'screenOrientation' "$MANIFEST"
