FROM docker.io/node:lts-bullseye

# Install prerequisites
RUN apt update && apt install -y curl git dos2unix

# Install semantic-release
RUN npm install -g semantic-release conventional-changelog-conventionalcommits @semantic-release/commit-analyzer @semantic-release/release-notes-generator @semantic-release/changelog @semantic-release/npm @semantic-release/github @semantic-release/git @semantic-release/exec @commitlint/cli @commitlint/config-conventional

COPY scripts/entrypoint.sh /bin/entrypoint.sh
COPY scripts/semantic-release.sh /bin/semantic-release.sh
RUN dos2unix /bin/semantic-release.sh && chmod a+x /bin/semantic-release.sh
RUN dos2unix /bin/entrypoint.sh && chmod a+x /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
CMD ["/bin/semantic-release.sh"]
