FROM buildpack-deps

RUN curl https://sdk.cloud.google.com | bash -s -- --disable-prompts --install-dir=/opt
ENV PATH $PATH:/opt/google-cloud-sdk/bin

ENTRYPOINT ["gcloud"]
