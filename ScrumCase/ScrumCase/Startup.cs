using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ScrumCase.Startup))]
namespace ScrumCase
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
