using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Studiesystemet.Startup))]
namespace Studiesystemet
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
