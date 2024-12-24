# simple loops to reference
## I. for / ifs / heredoc loops
1. Use IFS and find/exec to read a csv line by line.  
a. Run nikto against set of ip/ports in xml format and upload to Dradis

2. `for x in $(cat somefile); do somecommand $x; done`

## II. parallel   

3. `echo somelist | parallel -j10 --progress some-command.sh`  
a. some-command.sh 
```
curl -s -o "Some-Text-Prefix-$1" -w "%{http_code}\n" "https://someurl/someother-text-prefix-$1"
```
### More examples https://www.gnu.org/software/parallel/parallel_examples.html