using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Mandour.Startup))]
namespace Mandour
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
