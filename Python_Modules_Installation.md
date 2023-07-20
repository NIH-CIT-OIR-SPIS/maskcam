Install things 


```
python3.8 -m pip install numpy opencv-python rich pyparsing pygobject matplotlib Pillow pexpect cryptography filterpy paho-mqtt simplejson onnx scipy Cython scikit-learn ipdb && \
sudo apt install gir1.2-gst-rtsp-server-1.0
```

```
vi ~/.bashrc
```
Go to line where you see
export PATH=/usr/local/cuda-11.4/bin:$PATH

Then delete that line and replace with the the following
export PATH=/usr/local/cuda-11.4/bin:/home/[username]/.local/bin:$PATH

where <username> is the name of the user (in this case orin54)

Then reboot system

```
sudo reboot
```

Extra notes for dev:
If dependency error: 
"
opencv-python 4.8.0.74 has requirement numpy>=1.19.3; python_version >= "3.6" and platform_system == "Linux" and platform_machine == "aarch64", but you'll have numpy 1.17.4 which is incompatible.
"
Then do following
```
python3.8 -m pip uninstall opencv-python && python3.8 -m pip install numpy --upgrade && python3.8 -m pip install opencv-python 
```

