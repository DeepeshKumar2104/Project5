﻿using System;
using System.Collections.Generic;

namespace Project5.Models;

public partial class Employment
{
    public int EmploymentId { get; set; }

    public int UserId { get; set; }

    public string? Company { get; set; }

    public string? JobTitle { get; set; }

    public DateTime? StartDate { get; set; }

    public DateTime? EndDate { get; set; }

    public DateTime? CreatedAt { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public virtual User User { get; set; } = null!;

    public virtual ICollection<Userprofile> Userprofiles { get; set; } = new List<Userprofile>();
}
