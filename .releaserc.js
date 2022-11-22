module.exports = {
    branches: [
        {
            name: "main",
            channel: "latest"
        },
        {
            name: "develop",
            prerelease: "alpha",
            channel: "canary"
        }
    ],
    repositoryUrl: "https://github.com/artursudnik/releases-test-1",
    extends: "@energyweb/semantic-release-config",
};
