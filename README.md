# ESP IDF SBOM Vulnerability Scan Action

This action scans manifest files with CPE info in
repository for possible vulnerabilities.

## Secrets

## `MATTERMOST_WEBHOOK`

If the `MATTERMOST_WEBHOOK` environment variable is set, a brief status message
containing the job link will automatically be dispatched to the Mattermost
webhook.

## Outputs

## `vulnerable`

Set to 1 if vulnerability was found, 0 otherwise.

## Example usage

    jobs:
      vulnerability-scan:
        name: Vulnerability scan
        runs-on: ubuntu-latest
        steps:
          - name: Checkout repository
            uses: actions/checkout@v4

          - name: Vulnerability scan
            env:
              MATTERMOST_WEBHOOK: ${{ secrets.MATTERMOST_WEBHOOK }}
            uses: fhrbata/esp-idf-sbom-scan@main
