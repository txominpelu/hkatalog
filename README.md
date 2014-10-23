# HKatalog
Port of datacatalog to Haskell

## Boostrap your local environment

### Update your cabal

```bash
$ cabal update
```

### Local env

You need to sandbox your dependencies installation (unless you're a rock-solid Haskell dev and you know absolutely what you're doing, beware dependencies hell ;) )

```bash
$ cabal sandbox init
$ cabal install -j
```

And now you can run the project:
```bash
$ .cabal-sandbox/bin/hkatalog me
```

Should output
```bash
"Haq! me"
```

## Tests

Install HSpec

```bash
$ cabal install --enable-tests
```

Run tests
```bash
$ cabal test
```

## Tagging a release

Tag your release locally like this

```bash
$ git tag 0.0
$ git push --tags
```

## TODO

- [ ] Add HLint (code linter)
- [ ] Add tests (HSpec)
- [ ] Add Haddock doc
