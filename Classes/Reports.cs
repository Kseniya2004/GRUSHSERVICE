//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GRUSHSERVICE.Classes
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reports
    {
        public int id { get; set; }
        public Nullable<int> clientsRep { get; set; }
        public Nullable<int> servicesRep { get; set; }
        public string documentsRep { get; set; }
        public Nullable<int> productRep { get; set; }
        public Nullable<System.DateTime> dateStart { get; set; }
    
        public virtual Clients Clients { get; set; }
        public virtual Products Products { get; set; }
        public virtual Sevices Sevices { get; set; }
    }
}
