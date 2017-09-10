def decode(file_path):
    import qrtools
    qr = qrtools.QR()
    qr.decode(file_path)
    return qr.data

def encode(data, file_path):
    import qrtools
    qr = qrtools.QR(data.encode("utf-8"))
    return qr.encode(filename=file_path)

def greetings(name):
    return "Hello "+ name
