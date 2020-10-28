namespace Mandour.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Init : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Todos",
                c => new
                    {
                        TodoID = c.Int(nullable: false, identity: true),
                        TodoTitle = c.String(),
                        UserID = c.String(),
                        TodoDate = c.DateTime(nullable: false),
                        IsDone = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.TodoID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Todos");
        }
    }
}
