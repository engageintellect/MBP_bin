# RE-COMPILE ST WITH PYWAL COLORS

import os

# GO TO ST REPO
os.chdir('/home/r3dux/.config/suckless/st_term/')

# RE-COMPILE
os.system('sudo make uninstall && sudo make clean install')
