# Deployment Recipes

# Item Storage
craftingTable.remove(<item:ae2:item_storage_cell_1k>);
<recipetype:create:deploying>.addRecipe("1k_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:cell_component_1k>, [<item:ae2:item_storage_cell_1k>]);
craftingTable.remove(<item:ae2:item_storage_cell_4k>);
<recipetype:create:deploying>.addRecipe("4k_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:cell_component_4k>, [<item:ae2:item_storage_cell_4k>]);
craftingTable.remove(<item:ae2:item_storage_cell_16k>);
<recipetype:create:deploying>.addRecipe("16k_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:cell_component_16k>, [<item:ae2:item_storage_cell_16k>]);
craftingTable.remove(<item:ae2:item_storage_cell_64k>);
<recipetype:create:deploying>.addRecipe("64k_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:cell_component_64k>, [<item:ae2:item_storage_cell_64k>]);
craftingTable.remove(<item:ae2:item_storage_cell_256k>);
<recipetype:create:deploying>.addRecipe("256k_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:cell_component_256k>, [<item:ae2:item_storage_cell_256k>]);

# Fluid Cells
craftingTable.remove(<item:ae2:fluid_storage_cell_1k>);
<recipetype:create:deploying>.addRecipe("1k_fluid_cell_deploy", <item:ae2:fluid_cell_housing>, <item:ae2:cell_component_1k>, [<item:ae2:fluid_storage_cell_1k>]);
craftingTable.remove(<item:ae2:fluid_storage_cell_4k>);
<recipetype:create:deploying>.addRecipe("4k_fluid_cell_deploy", <item:ae2:fluid_cell_housing>, <item:ae2:cell_component_4k>, [<item:ae2:fluid_storage_cell_4k>]);
craftingTable.remove(<item:ae2:fluid_storage_cell_16k>);
<recipetype:create:deploying>.addRecipe("16k_fluid_cell_deploy", <item:ae2:fluid_cell_housing>, <item:ae2:cell_component_16k>, [<item:ae2:fluid_storage_cell_16k>]);
craftingTable.remove(<item:ae2:fluid_storage_cell_64k>);
<recipetype:create:deploying>.addRecipe("64k_fluid_cell_deploy", <item:ae2:fluid_cell_housing>, <item:ae2:cell_component_64k>, [<item:ae2:fluid_storage_cell_64k>]);
craftingTable.remove(<item:ae2:fluid_storage_cell_256k>);
<recipetype:create:deploying>.addRecipe("256k_fluid_cell_deploy", <item:ae2:fluid_cell_housing>, <item:ae2:cell_component_256k>, [<item:ae2:fluid_storage_cell_256k>]);

# Spatial Storage

craftingTable.remove(<item:ae2:spatial_cell_component_2>);
<recipetype:create:deploying>.addRecipe("2_spatial_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:spatial_cell_component_2>, [<item:ae2:spatial_storage_cell_2>]);

craftingTable.remove(<item:ae2:spatial_cell_component_16>);
<recipetype:create:deploying>.addRecipe("16_spatial_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:spatial_cell_component_16>, [<item:ae2:spatial_storage_cell_16>]);

craftingTable.remove(<item:ae2:spatial_cell_component_128>);
<recipetype:create:deploying>.addRecipe("128_spatial_cell_deploy", <item:ae2:item_cell_housing>, <item:ae2:spatial_cell_component_128>, [<item:ae2:spatial_storage_cell_128>]);

# View Cell
craftingTable.remove(<item:ae2:view_cell>);
<recipetype:create:deploying>.addRecipe("view_cell_deploy", <item:ae2:item_cell_housing>, <tag:items:ae2:all_certus_quartz>, [<item:ae2:view_cell>]);

# Portable Item Storage
craftingTable.remove(<item:ae2:portable_item_cell_1k>);
craftingTable.addShapeless("portable_item_cell_deploy_1k", <item:ae2:portable_item_cell_1k>, [<item:ae2:chest>, <item:ae2:energy_cell>, <item:ae2:item_storage_cell_1k>]);

craftingTable.remove(<item:ae2:portable_item_cell_4k>);
craftingTable.addShapeless("portable_item_cell_deploy_4k", <item:ae2:portable_item_cell_4k>, [<item:ae2:chest>, <item:ae2:energy_cell>, <item:ae2:item_storage_cell_4k>]);

craftingTable.remove(<item:ae2:portable_item_cell_16k>);
craftingTable.addShapeless("portable_item_cell_deploy_16k", <item:ae2:portable_item_cell_16k>, [<item:ae2:chest>, <item:ae2:energy_cell>, <item:ae2:item_storage_cell_16k>]);

craftingTable.remove(<item:ae2:portable_item_cell_64k>);
craftingTable.addShapeless("portable_item_cell_deploy_64k", <item:ae2:portable_item_cell_64k>, [<item:ae2:chest>, <item:ae2:energy_cell>, <item:ae2:item_storage_cell_64k>]);

craftingTable.remove(<item:ae2:portable_item_cell_256k>);
craftingTable.addShapeless("portable_item_cell_deploy_256k", <item:ae2:portable_item_cell_256k>, [<item:ae2:chest>, <item:ae2:energy_cell>, <item:ae2:item_storage_cell_256k>]);

# Portable Fluid Storage
craftingTable.remove(<item:ae2:portable_fluid_cell_1k>);
craftingTable.addShapeless("portable_fluid_cell_deploy_1k", <item:ae2:portable_fluid_cell_1k>, [<item:ae2:chest>, <item:ae2:energy_cell>, <item:ae2:fluid_storage_cell_1k>]);

craftingTable.remove(<item:ae2:portable_fluid_cell_4k>);
craftingTable.addShapeless("portable_fluid_cell_deploy_4k", <item:ae2:portable_fluid_cell_4k>, [<item:ae2:chest>, <item:ae2:energy_cell>, <item:ae2:fluid_storage_cell_4k>]);

craftingTable.remove(<item:ae2:portable_fluid_cell_16k>);
craftingTable.addShapeless("portable_fluid_cell_deploy_16k", <item:ae2:portable_fluid_cell_16k>, [<item:ae2:chest>, <item:ae2:energy_cell>, <item:ae2:fluid_storage_cell_16k>]);

craftingTable.remove(<item:ae2:portable_fluid_cell_64k>);
craftingTable.addShapeless("portable_fluid_cell_deploy_64k", <item:ae2:portable_fluid_cell_64k>, [<item:ae2:chest>, <item:ae2:energy_cell>, <item:ae2:fluid_storage_cell_64k>]);

craftingTable.remove(<item:ae2:portable_fluid_cell_256k>);
craftingTable.addShapeless("portable_fluid_cell_deploy_256k", <item:ae2:portable_fluid_cell_256k>, [<item:ae2:chest>, <item:ae2:energy_cell>, <item:ae2:fluid_storage_cell_256k>]);
