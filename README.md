# freja-jandent

Alternative formatting for the freja editor using
[jandent](https://github.com/sogaiu/jandent).

## Prerequisites

The [freja editor](https://github.com/saikyun/freja).

## Setup

0. Clone this repository somewhere and cd to the resulting directory
1. Start freja with: `freja ./freja-jandent/indent.janet`
2. `Control+L` to load the file

## Example Usage

1. In freja's buffer window, type some code that could use some
   formatting, e.g.:
    ```
    (defn my-fn
    [x]
    (+ x 1))
    ```

2. Enter the key sequence `Control+Shift+F`.

3. Observe the formatted code:
    ```
    (defn my-fn
      [x]
      (+ x 1))
    ```

## Explanation

In this version, `Control+Shift+F` invokes the function `jandent-format`
which formats the buffer content using `jandent`.

`jandent` acts a little differently than `spork/fmt`, in particular it
tries NOT to:

* alter whitespace beyond the first non-whitespace character on a line
* put a closing delimiter in the left-most column
* change the number of lines in the file

Note that the built in key sequence for formatting using `spork/fmt` is
overridden.
