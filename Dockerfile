FROM continuumio/miniconda3

RUN conda install -c conda-forge pyproj jupyter requests geopandas matplotlib 

COPY ./Fiona-1.8.19-cp38-cp38-win_amd64.whl /install/Fiona-1.8.19-cp38-cp38-win_amd64.whl

COPY ./GDAL-3.2.2-cp38-cp38-win_amd64.whl /install/GDAL-3.2.2-cp38-cp38-win_amd64.whl

RUN cd /install \
    pip install GDAL-3.2.2-cp38-cp38-win_amd64.whl \
    pip install Fiona-1.8.19-cp38-cp38-win_amd64.whl \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple shapely \
    pip install rasterio plotly psutil \
    pip install -U kaleido