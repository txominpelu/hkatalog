# HKatalog
Port of datacatalog to Haskell

## Boostrap your local environment

You need to sandbox your dependencies installation (unless you're a rock-solid Haskell dev and you know absolutely what you're doing, beware dependencies hell ;) )

```bash
$ cabal sandbox init
$ cabal install -j
```

And now you can run the project:
```bash
$ .cabal-sandbox/bin/haq
```

## TODO

- [ ] Add HLint (code linter)
- [ ] Add tests (HSpec)
- [ ] Add Haddock doc
