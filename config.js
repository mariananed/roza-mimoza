// ═══════════════════════════════════════════════════
// config.js — Роза-Мимоза магазин (Актуална версия)
// ═══════════════════════════════════════════════════

const CONFIG = {

  supabase: {
    // 1. Отидете в Supabase -> Settings -> API
    // 2. Копирайте "Project URL" и го поставете долу на мястото на текста в кавичките
    url: 'https://qewdtgmycenrqfaretmx.supabase.co', 

    // 3. Пак там копирайте "anon public" ключа и го поставете долу
    key: 'sb_publishable_H2XQ9ggJjuoBOiZdrsKG8Q_iBs6fFY_',
  },

  emailjs: {
    // Ако имаш EmailJS ключове, ги сложи тук. Ако не - остави ги така за момента.
    publicKey: 'b4a_eX8fx_Vr-0sRL',
    serviceId: 'service_ddlio2r',
    templateId: 'template_7qyeatg',
  },

  shop: {
    name: 'Роза-Мимоза магазин',
    email: 'mariana99jordan@gmail.com',
    facebook: 'https://www.facebook.com/share/1GTHzsR8YT/',
    currency: '€',
    freeShippingAbove: 15,
    minStockAlert: 5,
  }

};