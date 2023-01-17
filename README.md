# AK47
Sung
Kích hoạt chế độ AHCI qua Registry
1. Nhấn Windows + R, sau đó nhập regedit và nhấn Enter để mở Registry Editor.

2. Điều hướng đến registry sau:

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\iaStorV
3. Chọn iaStorV, sau đó từ bảng điều khiển bên phải, nhấp đúp vào Start.
4. Thay đổi giá trị của nó thành 0 và sau đó nhấp vào OK.
5. Tiếp theo, mở rộng iaStorV rồi chọn StartOverride.
6. Một lần nữa từ cửa sổ bên phải, nhấp đúp vào 0.
7. Thay đổi giá trị của nó thành 0 và nhấp vào OK.
8. Bây giờ điều hướng đến registry key sau:
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\storahci
9. Chọn storahci sau đó trong cửa sổ bên phải, nhấp đúp vào Start.
10. Thay đổi giá trị của nó thành 0 và nhấp vào OK.
11. Mở rộng storahci sau đó chọn StartOverride và nhấp đúp vào 0.
12. Thay đổi giá trị của nó thành 0 rồi nhấp vào OK.
13. Khởi động PC vào chế độ Safe Mode, sau đó không khởi động vào Windows mà vào BIOS và bật chế độ AHCI.
Định vị cấu hình bộ nhớ sau đó thay đổi cài đặt có nội dung “Configure SATA as” và chọn chế độ ACHI.

14. Lưu các thay đổi sau đó thoát thiết lập BIOS và khởi động PC bình thường.

15. Windows sẽ tự động cài đặt driver AHCI sau đó khởi động lại một lần nữa để lưu các thay đổi

Bật chế độ AHCI bằng cách xóa StartOverride
1. Nhấn phím Windows + R, sau đó nhập regedit và nhấn Enter.

2. Điều hướng đến registry sau:

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\storahci
3. Mở rộng storahci sau đó nhấp chuột phải vào StartOverride và chọn Delete.
4. Mở Notepad, sau đó sao chép và dán văn bản sau:
reg delete “HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\storahci\” /v StartOverride /f
5. Lưu file dưới dạng AHCI.bat (phần mở rộng .bat rất quan trọng) và từ Save as type, chọn “All Files”.
chuột phải vào AHCI.bat và chọn Run as Administrator.

7. Khởi động lại PC, vào BIOS và bật chế độ AHCI.
