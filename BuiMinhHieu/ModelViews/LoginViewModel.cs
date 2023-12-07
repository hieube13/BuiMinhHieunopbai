using System.ComponentModel.DataAnnotations;

namespace BuiMinhHieu.ModelViews
{
    public class LoginViewModel
    {
        [Key]
        [MaxLength(100)]
        [Required(ErrorMessage ="Vui lòng nhập gmail / sđt")]
        [Display(Name = "Gmail/ Sđt")]
        [DataType(DataType.EmailAddress)]
        public string UserName { get; set; }

        [Display(Name = "Mật khẩu")]
        [Required(ErrorMessage = "Vui lòng nhập mật khẩu")]
        [MinLength(5, ErrorMessage = "Bạn cần đặt mật khẩu tối thiểu 5 kí tự")]
        public string Password { get; set; }
    }
}
