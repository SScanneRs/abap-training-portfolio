@AbapCatalog.sqlViewName: 'ZV_PRODUCTS'
@EndUserText.label: 'Active Products View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view Z_CDS_PRODUCT_LIST
  as select from zproduct
{
  key product_id,
  product_name,
  category,
  price
}
where is_active = 'X'
