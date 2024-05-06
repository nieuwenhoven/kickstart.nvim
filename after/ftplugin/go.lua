-- die bestand bevat speciale opties die worden gezet, direct na het openen van een go bestand
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.list = false -- omdat de standaard formatter met tabs werkt, is het mooier om het soort whitespace niet te zien
vim.opt_local.formatoptions = 'o' -- zorgt voor automatisch inspringen bij een nieuwe regel
