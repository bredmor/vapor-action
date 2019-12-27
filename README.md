# Laravel Vapor Action

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

GitHub Actions for [Laravel Vapor](https://docs.vapor.build/1.0/introduction.html#requirements). Uses [bredmor/laradocker](https://github.com/bredmor/laradocker) image for CI - Ubuntu@latest with PHP 7.3 and Node v12.

## Usage

Via GitHub Workflow

### Prepare
1. Generate a Vapor API Token under https://vapor.laravel.com/app/account/api-tokens
2. Add it as a secret variable to your project under https://github.com/{username}/{project}/settings/secrets
![](docs/github-secrets.png)

### Example Github Action

Add a new workflow under `.github/workflows` (e.g. `push.yaml`) to your repository to enable this Action.

You can find out more about under https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobs

```
name: CI
on:
  push:
    branches:
      - beta
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: Deploy to staging
      uses: bredmor/vapor-action@master
      env:
        VAPOR_API_TOKEN: ${{ secrets.VAPOR_API_TOKEN }}
      with:
        args: deploy staging
```

## Vapor CI Integration Helper
Auto-inserts commit hash and git ref for slack messages, emails, etc.

## Credits

* [Oliver Kaufmann](https://github.com/okaufmann)
* [Morgan Breden](https://github.com/bredmor)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-release]: https://img.shields.io/github/tag/bredmor/vapor-action.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/bredmor/vapor-action/releases
