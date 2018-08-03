FROM hashicorp/terraform

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.15.63

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    apk add --no-cache jq && \
    apk add --no-cache docker && \
    rm -rf /var/cache/apk/*


