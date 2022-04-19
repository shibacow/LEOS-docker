# Dockernized LEOS

# OverView

This repository has been dockerized for makeing it easy to try out LEOS.
The supported version of LEOS is LEOS Pilot 3.1.2.

# Usage

1. `git clone` this repository.
2. download  `LEOS-Pilot_3.1.2.zip`  from this [site](https://joinup.ec.europa.eu/collection/justice-law-and-security/solution/leos-open-source-software-editing-legislation/release/312-security-patch)
3. Then place the `LEOS-Pilot_3.1.2.zip` directly under that repository.
4. Change `leos.properties`. Because the value of `annotate.client.url` is used by the browser's javascript, it is necessary to specify the domain name of the referrer. `annotate.client.url`=http://\<custom host\>/annotate/client like that.
5. There is a `docker-compose.yml` directly under the repository, run `docker-compose up` there.


# 日本語 / in japanese 
# LEOSのDokcer化

# 概要

LEOSを手軽に試すように、LEOSをDockerで動くようにした。
対応バージョンは、 `LEOS Pilot 3.1.2` である。

# 実行方法

1. このレポジトリを `git clone` する。
2. この[サイト](https://joinup.ec.europa.eu/collection/justice-law-and-security/solution/leos-open-source-software-editing-legislation/release/312-security-patch)から `LEOS-Pilot_3.1.2.zip` をダウンロードする。
3. ダウンロードした `LEOS-Pilot_3.1.2.zip` を　クローンしたレポジトリの直下に配置する。
1. `leos.properties` を変更する。何故ならば `annotate.client.url` の値は、ブラウザのjavascriptが使うため、参照元のドメイン名を指定する必要がある。`annotate.client.url`=http://\<custom host\>/annotate/client の様に指定する。
4. レポジトリ直下に、 `docker-compose.yml` があるので、そこで、`docker-compose up` を実行する。
