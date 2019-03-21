import os
import cantera as ct

mech_path = os.path.join(
    os.path.split(os.path.abspath(ct.__file__))[0],
    'data'
)

available = {item for item in os.listdir(mech_path) if
             ('.cti' in item) or ('.xml' in item)}

for item in sorted(available, key=lambda s: s.lower()):
    print(item)
