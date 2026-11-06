path = 'mediatek/Makefile'
with open(path, 'rb') as f:
    content = f.read()
if content.startswith(b'\xef\xbb\xbf'):
    content = content[3:]
content = content.replace(b'\r\n', b'\n').replace(b'\r', b'\n')
with open(path, 'wb') as f:
    f.write(content)
print('Makefile fixed successfully!')

