FROM continuumio/miniconda3

RUN conda install -c conda-forge pyproj jupyter requests 

RUN pip install numpy pandas rasterio geopandas rasterio beautifulsoup4 matplotlib selenium earthpy

RUN pip install plotly psutil

RUN pip install -U kaleido

COPY ./GDAL-3.2.2-cp38-cp38-win_amd64.whl /install/GDAL-3.2.2-cp38-cp38-win_amd64.whl

RUN cd /install \
    pip install GDAL-3.2.2-cp38-cp38-win_amd64.whl 