﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class db_imEntities : DbContext
{
    public db_imEntities()
        : base("name=db_imEntities")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public virtual DbSet<fact_estatus> fact_estatus { get; set; }
    public virtual DbSet<fact_genero> fact_genero { get; set; }
    public virtual DbSet<fact_grado_escolar> fact_grado_escolar { get; set; }
    public virtual DbSet<fact_licencias> fact_licencias { get; set; }
    public virtual DbSet<fact_materia_exam> fact_materia_exam { get; set; }
    public virtual DbSet<fact_nivel_escolar> fact_nivel_escolar { get; set; }
    public virtual DbSet<fact_nivel_exam> fact_nivel_exam { get; set; }
    public virtual DbSet<fact_tipo_centro> fact_tipo_centro { get; set; }
    public virtual DbSet<fact_tipo_fiscal> fact_tipo_fiscal { get; set; }
    public virtual DbSet<fact_tipo_rfc> fact_tipo_rfc { get; set; }
    public virtual DbSet<fact_tipo_usuario> fact_tipo_usuario { get; set; }
    public virtual DbSet<inf_alumnos> inf_alumnos { get; set; }
    public virtual DbSet<inf_centro> inf_centro { get; set; }
    public virtual DbSet<inf_centro_dep> inf_centro_dep { get; set; }
    public virtual DbSet<inf_contacto_fiscal> inf_contacto_fiscal { get; set; }
    public virtual DbSet<inf_empresa> inf_empresa { get; set; }
    public virtual DbSet<inf_examenes> inf_examenes { get; set; }
    public virtual DbSet<inf_examenes_dep> inf_examenes_dep { get; set; }
    public virtual DbSet<inf_fiscal> inf_fiscal { get; set; }
    public virtual DbSet<inf_gastos> inf_gastos { get; set; }
    public virtual DbSet<inf_inventario> inf_inventario { get; set; }
    public virtual DbSet<inf_preguntas_exam> inf_preguntas_exam { get; set; }
    public virtual DbSet<inf_preguntas_test> inf_preguntas_test { get; set; }
    public virtual DbSet<inf_respuestas_exam> inf_respuestas_exam { get; set; }
    public virtual DbSet<inf_respuestas_test> inf_respuestas_test { get; set; }
    public virtual DbSet<inf_sepomex> inf_sepomex { get; set; }
    public virtual DbSet<inf_test_unam> inf_test_unam { get; set; }
    public virtual DbSet<inf_test_unam_dep> inf_test_unam_dep { get; set; }
    public virtual DbSet<inf_usuarios> inf_usuarios { get; set; }
    public virtual DbSet<inf_ventas> inf_ventas { get; set; }
    public virtual DbSet<inf_ventas_dep> inf_ventas_dep { get; set; }
}
