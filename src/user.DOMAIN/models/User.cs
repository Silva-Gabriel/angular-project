using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace user.DOMAIN.models
{
    public class User
    {
        [Required]
        public int Id { get; set; }

        [Required]
        [JsonPropertyName("nomeCompleto")]
        public string NomeCompleto { get; set;}

        [JsonPropertyName("email")]
        public string Email { get; set;}

        [JsonPropertyName("cargo")]
        public string Cargo { get; set;}

        [JsonPropertyName("salario")]
        public decimal? Salario { get; set;}

        [Required]
        [Length(11,11)]
        [JsonPropertyName("cpf")]
        public string Cpf { get; set;}

        [JsonPropertyName("senha")]
        public string Senha { get; set;}

        [JsonPropertyName("situacao")]
        public bool Situacao { get; set;}
    }
}