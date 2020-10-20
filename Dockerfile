FROM easybuilders/tutorial:isc20
RUN pip3 install --user easybuild
RUN touch $HOME/.bashrc \
 && echo "module use /easybuild/modules/all" >> $HOME/.bashrc \
 && echo "module use $HOME/.local/easybuild/modules/all" >> $HOME/.bashrc
ENV PATH="$HOME/.local/bin:$PATH"
ENV EASYBUILD_BUILDPATH="/tmp/$USER"
ENV EB_PYTHON="python3"

