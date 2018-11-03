Nimclipboard is a [Nim](https://nim-lang.org/) wrapper for [libclipboard](https://github.com/jtanx/libclipboard).

Nimclipboard is distributed as a [Nimble](https://github.com/nim-lang/nimble) package and depends on [nimgen](https://github.com/genotrance/nimgen) and [c2nim](https://github.com/nim-lang/c2nim/) to generate the wrappers. The libclipboard source code is downloaded using Git so having ```git``` in the path is required.

__Installation__

Nimclipboard can be installed via [Nimble](https://github.com/nim-lang/nimble):

```
> nimble install nimclipboard
```

This will download, wrap and install nimclipboard in the standard Nimble package location, typically ~/.nimble. Once installed, it can be imported into any Nim program.

__Usage__

Module documentation can be found [here](http://nimgen.genotrance.com/nimclipboard).

```nim
import nimclipboard/libclipboard

var cb = clipboard_new(nil)

cb.clipboard_clear(LCB_CLIPBOARD)
echo cb.clipboard_set_text("nimclipboard rocks")
echo cb.clipboard_text()

cb.clipboard_free()
```

Refer to the ```tests``` directory for examples on how the library can be used.

__Credits__

Nimclipboard wraps the libclipboard source code and all licensing terms of [libclipboard](https://github.com/jtanx/libclipboard) apply to the usage of this package.

Credits go out to [c2nim](https://github.com/nim-lang/c2nim/) as well without which this package would be greatly limited in its abilities.

__Feedback__

Nimclipboard is a work in progress and any feedback or suggestions are welcome. It is hosted on [GitHub](https://github.com/genotrance/nimclipboard) with an MIT license so issues, forks and PRs are most appreciated.
