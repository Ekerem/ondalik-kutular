"""src/index.src.html + three.min.js -> index.html (tek dosya)."""
import pathlib
root = pathlib.Path(__file__).resolve().parent.parent
src = (root / 'src' / 'index.src.html').read_text(encoding='utf-8')
three = (root / 'tools' / 'three.min.js').read_text(encoding='utf-8')
out = src.replace('/*__THREE__*/', three)
(root / 'index.html').write_text(out, encoding='utf-8')
print('index.html', len(out) // 1024, 'KB')
