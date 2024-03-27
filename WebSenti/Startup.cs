using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebSenti.Startup))]
namespace WebSenti
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
