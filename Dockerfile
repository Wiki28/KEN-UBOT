# Using Python Slim-Buster
FROM vckyouuu/geezprojects:buster
# Halo kak yahaha
# WIKI-UBOT
#
RUN git clone -b WIKI-UBOT https://github.com/Wiki28/WIKI-UBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Wiki28/WIKI-UBOT/KEN-UBOT/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
