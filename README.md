# function_exported bug

This is a complete example reproducing the weird behavior I saw in one of my projects.

I was checking whether the `__info__/1` function was exported for a module as a way to check if a module exists.

I noticed that after a clean app start the behavior is fine, but after any recompile (even with no changes and `recompile(force: true)` in iex!) the behavior of function_exported?/3 would change to report the `__info__/1` function no longer being exported.

I worked backwards and stripped the project of everything to get this minimal example.

To see the issue, run `./reproduce.sh` and you should see something like this:

```
❱ ./reproduce.sh
+ mix clean
+ mix reproduce
Compiling 2 files (.ex)
Generated function_exported_bug app
Function Elixir.Foo.__info__/1 is exported.
+ mix reproduce
Function Elixir.Foo.__info__/1 is NOT exported.
+ mix reproduce
Function Elixir.Foo.__info__/1 is NOT exported.
+ mix clean
+ mix reproduce
Compiling 2 files (.ex)
Generated function_exported_bug app
Function Elixir.Foo.__info__/1 is exported.
~/d/function_exported_bug main• 2s ❱
```
