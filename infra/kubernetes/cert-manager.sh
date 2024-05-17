export HELM_EXPERIMENTAL_OCI=1 && \
helm pull oci://cr.yandex/yc-marketplace/yandex-cloud/cert-manager-webhook-yandex/cert-manager-webhook-yandex \
  --version 1.0.8-1 \
  --untar && \
helm install \
  --namespace <пространство_имен> \
  --create-namespace \
  --set-file config.auth.json=key.json \
  --set config.email='<адрес_электронной_почты_для_уведомлений_от_Lets_Encrypt>' \
  --set config.folder_id='<идентификатор_каталога_с_зоной_Cloud_DNS>' \
  --set config.server='https://acme-v02.api.letsencrypt.org/directory' \
  cert-manager-webhook-yandex ./cert-manager-webhook-yandex/