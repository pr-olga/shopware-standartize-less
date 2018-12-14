# Shell Scripts for Shopware Less Files

The scripts adjust the less code style to the Shopware and SportSpar Coding Standards.

If you put the script in the folder containing the less-files to be cleaned,
use the following command to execute the script:

```
./[script-name].sh [example.less]
```

## unitize.sh
Replace the properties with mixin `unitize`:
1. top/right/bottom/left
2. height/min-height/max-height
3. width/min-width/max-width
4. padding-top/padding-right/padding-bottom/padding-right
5. margin-top/margin-right/margin-bottom/margin-right
6. fonst-size
7. line-height


```diff
- height: 10px;
+ .unitize-height(10);
```