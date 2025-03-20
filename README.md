# homebrew-setlist

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Homebrew](https://img.shields.io/badge/homebrew-blue.svg)](https://brew.sh)

A Homebrew tap for the `setlist` application, a command-line tool to automatically generate `.aws/config` files based on AWS SSO rules in your organization.

## About Setlist

Setlist helps streamline AWS access management by automatically generating AWS configuration files based on your organization's SSO settings. This eliminates manual configuration and ensures consistency across your team's AWS setups.

## Installation

### Prerequisites

- [Homebrew](https://brew.sh/) installed on your system
- macOS or Linux operating system

### Installing Setlist

```bash
# Add the tap to your Homebrew installation
brew tap scottbrown/setlist

# Install the setlist application
brew install setlist
```

### Verifying Installation

After installation, you can verify that setlist was installed correctly by running:

```bash
setlist --help
```

## Supported Platforms

Setlist is available for:

- macOS (Intel/x86_64 and Apple Silicon/ARM64)
- Linux (x86_64 and ARM64)

## Usage

Basic usage information:

```bash
# Get help
setlist --help
```

For more detailed usage instructions, please visit the [main Setlist repository](https://github.com/scottbrown/setlist).

## Version Information

Current version: 1.2.1

## Troubleshooting

### Common Issues

- If you encounter permission issues, ensure that your Homebrew installation has the proper permissions.
- For AWS SSO-related issues, verify your AWS SSO is correctly configured.

## For Contributors

### Repository Structure

```
.
├── Formula/
│   └── setlist.rb       # The Homebrew formula definition
├── LICENSE              # MIT License
└── README.md            # This documentation
```

### Updating the Formula

When a new version of Setlist is released, update the formula as follows:

1. Update the `VERSION` constant in `Formula/setlist.rb`
2. Update the SHA256 checksums for each distribution
3. Test the formula locally
4. Commit and push your changes

### Testing Locally

To test the formula locally before publishing:

```bash
brew install --build-from-source ./Formula/setlist.rb
```

### Release Process

1. Ensure the SHA256 checksums are correct for all platform binaries
2. Update the version number in the formula
3. Commit changes and push to the repository
4. Tag the new version (`git tag v1.2.1`)
5. Push tags (`git push --tags`)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Resources

- [Main Setlist Repository](https://github.com/scottbrown/setlist)
- [Issues and Feature Requests](https://github.com/scottbrown/setlist/issues)
- [Homebrew Documentation](https://docs.brew.sh/)

## About Homebrew Taps

A Homebrew tap is a repository of third-party formulae (package definitions) for the Homebrew package manager. This tap provides an easy way to install the Setlist tool using the familiar `brew install` command.
