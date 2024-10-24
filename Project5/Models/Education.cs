using System;
using System.Collections.Generic;

namespace Project5.Models;

public partial class Education
{
    public int EducationId { get; set; }

    public int UserId { get; set; }

    public string? Degree { get; set; }

    public string? Institution { get; set; }

    public int? GraduationYear { get; set; }

    public DateTime? CreatedAt { get; set; }

    public virtual User User { get; set; } = null!;

    public virtual ICollection<Userprofile> Userprofiles { get; set; } = new List<Userprofile>();
}
