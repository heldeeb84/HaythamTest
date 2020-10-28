namespace Mandour.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Init1 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Todos", "TodoTitle", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Todos", "TodoTitle", c => c.String());
        }
    }
}
