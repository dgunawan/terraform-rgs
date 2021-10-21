global_tags = {
  Provisioner  = "Terraform"
}

resource_groups = {
  
  my-windows-rg = {
    location   = "canadacentral",
    tags       = {
      Owner      = "cybergavin",
      CostCenter = "C9999",
      Description = "Windows Infrastructure"} 
    }

  rg-test = {
    location="australiaeast",
    tags={}
    }
}