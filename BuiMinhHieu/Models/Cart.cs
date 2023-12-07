namespace BuiMinhHieu.Models
{
    public class Cart
    {
        public List<CartLine> Lines { get; set; } = new List<CartLine>();

        public void AddItem(Product product, int quantity)
        {
            CartLine? line = Lines.Where(p => p.product?.ProductId == product.ProductId).FirstOrDefault();
            if (line == null)
            {
                Lines.Add(new CartLine
                {
                    product = product,
                    Quantity = quantity
                });
            }
            else
            {
                line.Quantity += quantity;
            }
        }

        public void RemoveLine(Product product)
        {
            Lines.RemoveAll(p => p.product.ProductId == product.ProductId);
        }

        public decimal ComputeTotalValue()
        {
            return (decimal)Lines.Sum(p => p.product.Price * p.Quantity);
        }

        public void Clear()
        {
            Lines.Clear();
        }

        public class CartLine
        {
            public int CartLineId { get; set; }

            public Product? product { get; set; } = new();
            public int Quantity { get; set; }
        }
    }
}
