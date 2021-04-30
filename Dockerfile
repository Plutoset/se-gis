FROM continuumio/miniconda3

# RUN apt-get update \
#     apt-get upgrade -y
# RUN conda update -n base -C defaults conda

RUN conda install -c conda-forge pyproj jupyter requests geopandas matplotlib 
    # gdal fiona
# RUN pip install shapely

COPY ./Fiona-1.8.19-cp38-cp38-win_amd64.whl /install/Fiona-1.8.19-cp38-cp38-win_amd64.whl

COPY ./GDAL-3.2.2-cp38-cp38-win_amd64.whl /install/GDAL-3.2.2-cp38-cp38-win_amd64.whl

RUN cd /install \
    pip install GDAL-3.2.2-cp38-cp38-win_amd64.whl \
    pip install Fiona-1.8.19-cp38-cp38-win_amd64.whl \
    pip install -i https://pypi.tuna.tsinghua.edu.cn/simple shapely