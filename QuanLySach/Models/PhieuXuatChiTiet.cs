//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLySach.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PhieuXuatChiTiet
    {
        public int Id { get; set; }
        public int PhieuXuatId { get; set; }
        public int SanPhamId { get; set; }
        public int SoLuong { get; set; }
        public decimal GiaXuat { get; set; }
    
        public virtual PhieuXuat PhieuXuat { get; set; }
        public virtual SanPham SanPham { get; set; }
    }
}
