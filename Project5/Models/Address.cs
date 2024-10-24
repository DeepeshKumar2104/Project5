using System;
using System.Collections.Generic;

namespace Project5.Models;

public partial class Address
{
    public int AddressId { get; set; }

    public int UserId { get; set; }

    public string? Street { get; set; }

    public string? City { get; set; }

    public string? State { get; set; }

    public string? Country { get; set; }

    public string? ZipCode { get; set; }

    public DateTime? CreatedAt { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public virtual User User { get; set; } = null!;

    public virtual ICollection<Userprofile> Userprofiles { get; set; } = new List<Userprofile>();
}
