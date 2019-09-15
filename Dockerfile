FROM python:3
# 標準出力をバッファに溜め込まない設定
ENV PYTHONUNBUFFERED 1
# codeディレクトリを作成して、作業ディレクトリをcodeディレクトリに移動させている
RUN mkdir /code
WORKDIR /code
# ビルドコンテキストを移動させている
COPY requirements.txt /code/
# requirements.txtに記載されているパッケージをインストールする
RUN pip install -r requirements.txt
# ビルドコンテキスの内容をcodeディレクトに移動させている
COPY . /code/
