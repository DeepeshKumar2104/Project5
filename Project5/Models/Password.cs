using System;
using System.Collections.Generic;

namespace Project5.Models;

public partial class Password
{
    public int PasswordId { get; set; }

    public int UserId { get; set; }

    public string PasswordHash { get; set; } = null!;

    public DateTime? CreatedAt { get; set; }

    public virtual User User { get; set; } = null!;

    public virtual ICollection<Userprofile> Userprofiles { get; set; } = new List<Userprofile>();
}
