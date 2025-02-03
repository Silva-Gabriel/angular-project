using System.Data;

namespace user.INFRA.repository
{
    public class UserRepository
    {
        private readonly IDbConnection connection;

        public UserRepository(IDbConnection _connection)
        {
            connection = _connection;
        }
    }
}