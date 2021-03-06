FROM nfcore/base

LABEL version="1.3.1"
LABEL authors="robert.petit@emory.edu"
LABEL description="Container image containing requirements for the Bactopia insertion_sequences process"

COPY conda/insertion_sequences.yml /
RUN conda env create -f insertion_sequences.yml && conda clean -a
ENV PATH /opt/conda/envs/bactopia-insertion_sequences/bin:$PATH
