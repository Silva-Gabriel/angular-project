namespace user.DOMAIN.entities
{
    public class UserEntity
    {
        public int Id { get; set; }
        public string NomeCompleto { get; set;}
        public string Email { get; set;}
        public string Cargo { get; set;}
        public decimal? Salario { get; set;}
        public string Cpf { get; set;}
        public string Senha { get; set;}
        public bool Situacao { get; set;}
    }
}