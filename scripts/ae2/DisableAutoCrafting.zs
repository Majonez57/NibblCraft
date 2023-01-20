import mods.jei.JEI;

var autocraftingStuffs = [<item:ae2:crafting_unit>,<item:ae2:crafting_accelerator>,<item:ae2:1k_crafting_storage>,<item:ae2:4k_crafting_storage>,<item:ae2:16k_crafting_storage>,<item:ae2:64k_crafting_storage>,<item:ae2:256k_crafting_storage>,<item:ae2:pattern_provider>,<item:ae2:molecular_assembler>,<item:ae2:crafting_monitor>,<item:ae2:blank_pattern>];

for stuff in autocraftingStuffs {
    craftingTable.remove(stuff);
    JEI.hideIngredient(stuff);
}