//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PerfumerService
{
    using System;
    using System.Collections.Generic;
    
    public partial class OrderGood : Entity
    {
        public int Id { get; set; }
        public Nullable<int> GoodsId { get; set; }
        public Nullable<int> OrderId { get; set; }
        public Nullable<int> Quantity { get; set; }
    
        public virtual Good Good { get; set; }
        public virtual Order Order { get; set; }
    }
}
