using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;

namespace BuiMinhHieu.ModelViews
{
    public class AccountViewModel
    {
        public int CustomerId { get; set; }

        [Display(Name = "Họ và tên")]
        [Required(ErrorMessage = "Vui lòng nhập họ và tên")]
        public string FullName { get; set; }

        [Required(ErrorMessage = "Vui lòng nhập email")]
        [MaxLength(150)]
        [DataType(DataType.EmailAddress)]
        [Remote(action: "ValidateEmail", controller: "Accounts")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Vui lòng nhập email")]
        [Display(Name = "Điện thoại")]
        [Remote(action: "ValidatePhone", controller: "Accounts")]
        [DataType(DataType.PhoneNumber)]
        public string Phone { get; set; }

        [Display(Name = "Mật khẩu")]
        [Required(ErrorMessage = "Bạn phải nhập mật khẩu")]
        [MinLength(5, ErrorMessage = "Bạn phải nhập ít nhất 5 kí tự")]
        public string Password { get; set; }

        [Display(Name = "Nhập lại mật khẩu")]
        [MinLength(5, ErrorMessage = "Bạn phải nhập ít nhất 5 kí tự")]
        [Compare("Password", ErrorMessage = "vui lòng nhập mật khẩu giống nhau")]
        public string ConfirmPassword { get; set; }

        public string Salt { get; set; }

        public bool? IsActive { get; set; }

        [Display(Name = " Ngày tạo")]
        public DateTime CreatedAt { get; set; }

        [Display(Name = " Ngày khoá")]
        public DateTime CreatedEnd { get; set; }
    }
}
