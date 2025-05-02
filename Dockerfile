# استخدام صورة Python الرسمية
FROM python:3.11-slim

# تحديد دليل العمل
WORKDIR /app

# نسخ الملفات المطلوبة
COPY requirements.txt .
COPY bot.py .

# إنشاء مجلد للبيانات
RUN mkdir -p /data/backups

# تثبيت المكتبات
RUN pip install --no-cache-dir -r requirements.txt

# تشغيل البوت
CMD ["python", "bot.py"]