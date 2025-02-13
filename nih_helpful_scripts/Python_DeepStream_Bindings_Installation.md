# Installing DeepStream python bindings
Directions based on these https://github.com/NVIDIA-AI-IOT/deepstream_python_apps/blob/master/bindings/README.md


Enter in terminal
```
sudo apt install python3-gi python3-dev python3-gst-1.0 python-gi-dev git python-dev python3 python3-pip python3.8-dev cmake g++ build-essential libglib2.0-dev libglib2.0-dev-bin libgstreamer1.0-dev libtool m4 autoconf automake libgirepository1.0-dev libcairo2-dev
```

Then:
```
sudo su
```
Then 
```
cd /opt/nvidia/deepstream/deepstream/sources/ && \

git clone https://github.com/NVIDIA-AI-IOT/deepstream_python_apps.git && \
cd /opt/nvidia/deepstream/deepstream/sources/
```

```
cd /opt/nvidia/deepstream/deepstream/sources/deepstream_python_apps/
git submodule update --init
exit
```

Setup certificates
```
sudo apt-get install -y apt-transport-https ca-certificates -y && \
sudo update-ca-certificates
```

Go back into su
```
cd /opt/nvidia/deepstream/deepstream/sources/deepstream_python_apps/3rdparty/gst-python/ && \
sudo su
```


```
cd /opt/nvidia/deepstream/deepstream/sources/deepstream_python_apps/3rdparty/gst-python/ && \
./autogen.sh && \
make && \
exit
```

```
sudo make install && \
sudo su
```



```
cd /opt/nvidia/deepstream/deepstream/sources/deepstream_python_apps/bindings/ && \
git submodule update --init && \
mkdir build && cd build && \
cmake ..  -DPYTHON_MAJOR_VERSION=3 -DPYTHON_MINOR_VERSION=8 -DPIP_PLATFORM=linux_aarch64 && \
make -j4 && \
exit
```
```
cd /opt/nvidia/deepstream/deepstream/sources/deepstream_python_apps/bindings/build/ && \
python3.8 -m pip install ./pyds*.whl && \
sudo mv pyds.so pyds.egg-info ~/.local/lib/python3.8/site-packages/ && \
cd
```

Check that it has installed
```
python3.8 -c "import pyds"
```

Should see no output (which means there is no error importing the module)

Then do

```
cd ~ && \
cp -r /opt/nvidia/deepstream/deepstream/samples/ samples/
```

(Optional)
Then if you want to use triton 
```
cd /opt/nvidia/deepstream/deepstream/samples && \
sudo ./triton_backend_setup.sh
```

