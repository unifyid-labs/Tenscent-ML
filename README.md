# Tenscent ML Images

[![Python](https://img.shields.io/badge/Python-v2.7-blue)](https://img.shields.io/badge/Python-v2.7-blue) [![Tensorflow](https://img.shields.io/badge/Tensorflow-v1.6.0-brightgreen)](https://img.shields.io/badge/Python-v2.7-blue)

----

# Usage

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/unifyid-labs/Tenscent-ML.git/master?urlpath=lab/tree/index.ipynb)

Run on binder to start notebook with Python and tensorflow dependencies installed.

# Repository Structure

| Directory     |                                           |
|---------------|-------------------------------------------|
| `models`      | Python module with Resnet101 architecture |
| `checkpoints` | Location to place model checkpoint files  |
| `images`      | Images to run inference over              |
| `data`        | Label definitions for 10k                 |

# Checkpoints

Checkpoint files can be downloaded from [this](https://storage.googleapis.com/unifyid-ml-vcm/models/tencent-ml-images/checkpoints/model.ckpt.tar.gz) bucket.

# Build Locally

To build using docker and [repo2docker](https://github.com/jupyterhub/repo2docker.git)


```sh
$ repo2docker --user-id 1000 --user-name jovyan .

...
[I 00:09:24.721 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
[I 00:09:26.593 NotebookApp] JupyterLab extension loaded from /srv/conda/envs/notebook/lib/python3.7/site-packages/jupyterlab
[I 00:09:26.593 NotebookApp] JupyterLab application directory is /srv/conda/envs/notebook/share/jupyter/lab
[I 00:09:28.008 NotebookApp] nteract extension loaded from /srv/conda/envs/notebook/lib/python3.7/site-packages/nteract_on_jupyter
[I 00:09:28.011 NotebookApp] Serving notebooks from local directory: /home/jovyan
[I 00:09:28.011 NotebookApp] The Jupyter Notebook is running at:
[I 00:09:28.011 NotebookApp] http://127.0.0.1:64743/?token=051af9850a371aed01fe66765b6eb1ca19e382911e2b9814
[I 00:09:28.011 NotebookApp]  or http://127.0.0.1:64743/?token=051af9850a371aed01fe66765b6eb1ca19e382911e2b9814
[I 00:09:28.011 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[W 00:09:28.016 NotebookApp] No web browser found: could not locate runnable browser.
[C 00:09:28.016 NotebookApp]

    To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://127.0.0.1:64743/?token=051af9850a371aed01fe66765b6eb1ca19e382911e2b9814
     or http://127.0.0.1:64743/?token=051af9850a371aed01fe66765b6eb1ca19e382911e2b9814
```
