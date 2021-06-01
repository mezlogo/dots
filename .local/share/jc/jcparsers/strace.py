"""jc - JSON CLI output utility `strace` command output parser

<<Short foo description and caveats>>

Usage (cli):

    $ strace -fy ls | jc --strace

    or

    $ jc strace -fy ls

Usage (module):

    import jc.parsers.strace
    result = jc.parsers.strace.parse(strace_command_output)

Schema:

    [
      {
        "pid":      integer,
        "method":   string,
        "result":   integer
      }
    ]
"""
import re
import jc.utils


class info():
    """Provides parser metadata (version, author, etc.)"""
    version = '1.0'
    description = '`strace` command parser'
    author = 'Denis'
    author_email = 'mezencevdenis@yandex.ru'

    # compatible options: linux, darwin, cygwin, win32, aix, freebsd
    compatible = ['linux']
    magic_commands = ['strace']


__version__ = info.version

straceRegex = re.compile(r'(?P<pid>\d+)?\s*(?P<method>\w+)\((?P<arg>.*?)\)\s+=\s+(?P<result>-?\d*\??)')

def _process(proc_data):
    try:
        return straceRegex.search(proc_data).groupdict()
    except:
        return { 'raw': proc_data }


def parse(data, raw=False, quiet=False):
    """
    Main text parsing function

    Parameters:

        data:        (string)  text data to parse
        raw:         (boolean) output preprocessed JSON if True
        quiet:       (boolean) suppress warning messages if True

    Returns:

        List of Dictionaries. Raw or processed structured data.
    """
    return [_process(line) for line in data.splitlines()]
