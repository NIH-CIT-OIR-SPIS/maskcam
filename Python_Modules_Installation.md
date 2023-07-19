Install things 


```
python3 -m pip install opencv-python rich pyparsing pygobject matplotlib Pillow pexpect cryptography filterpy paho-mqtt simplejson onnx scipy Cython scikit-learn ipdb

sudo apt install gir1.2-gst-rtsp-server-1.0
```

```
vi .bashrc
```
Go to line where you see
export PATH=/usr/local/cuda-11.4/bin:$PATH

Then delete that line and replace with the the following
export PATH=/usr/local/cuda-11.4/bin:/home/<username>/.local/bin:$PATH

where <username> is the name of the user (in this case orin54)

Then reboot system

```
sudo reboot
```

