FROM python:3.7
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install --upgrade wheel
RUN pip install --upgrade numpy
RUN pip install --upgrade pandas
RUN pip install --upgrade matplotlib
RUN pip install --upgrade seaborn
RUN pip install --upgrade scikit-learn
RUN pip install --upgrade scipy
RUN pip install --upgrade jupyter
RUN pip install --upgrade jupyterlab
RUN pip install --upgrade ipywidgets
RUN pip install --upgrade ipython
RUN pip install --upgrade ipykernel
RUN pip install --upgrade jupyter_contrib_nbextensions
RUN pip install --upgrade jupyter_nbextensions_configurator
RUN pip install --upgrade jupyterthemes
RUN jupyter contrib nbextension install --user
RUN jupyter nbextensions_configurator enable --user
RUN jupyter nbextension enable --py widgetsnbextension
RUN jupyter nbextension enable --py --sys-prefix jupyter_nbextensions_configurator
RUN jupyter nbextension enable --py --sys-prefix jupyter_contrib_nbextensions
RUN jt -t chesterish -f fira -fs 95 -nf ptsans -nfs 115 -N -kl -cursw 3 -cursc r -cellw 88% -T
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
COPY . ./
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]