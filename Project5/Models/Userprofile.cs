using System;
using System.Collections.Generic;

namespace Project5.Models;

public partial class Userprofile
{
    public int ProfileId { get; set; }

    public int UserId { get; set; }

    public int? AddressId { get; set; }

    public int? ActivePasswordId { get; set; }

    public int? CurrentJobId { get; set; }

    public int? HighestEducationId { get; set; }

    public DateTime? CreatedAt { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public virtual Password? ActivePassword { get; set; }

    public virtual Address? Address { get; set; }

    public virtual Employment? CurrentJob { get; set; }

    public virtual Education? HighestEducation { get; set; }

    public virtual User User { get; set; } = null!;
}
