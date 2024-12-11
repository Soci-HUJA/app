/// <summary>
/// Functions to generate barcodes
/// </summary>
codeunit 91200 "Barcode Management SOC"
{
    /// <summary>
    /// Creates a "Aztec" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeAztecAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeAztecAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Creates a "Call1DA" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeCall1DAAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeCAll1DAAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "Codabar" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeCodabarAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeCodabarAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "Code128" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeCode128AsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeCode128AsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;
    /// <summary>
    /// Create "Code128"-GS1 barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    /// <param name="IsGS1">Boolean.</param>
    procedure CreateBarcodeEncodeCode128_GS1_AsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC"; IsGS1: boolean)
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.Encode_GS1_Code128AsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode, IsGS1);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "Code39" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeCode39AsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeCode39AsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "Code93" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeCode93AsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeCode93AsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "DataMatrix" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeDataMatrixAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeDataMatrixAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "EAN13" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeEAN13AsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeEAN13AsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "EAN8" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeEAN8AsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeEAN8AsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "ITF" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeITFAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeITFAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "Maxicode" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeMaxicodeAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeMaxicodeAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "MSI" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeMSIAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeMSIAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "PDF417" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodePDF417AsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodePDF417AsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "Plessey" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodePlesseyAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodePlesseyAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "QRCode" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeQRCodeAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeQRCodeAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "RSS14" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeRSS14AsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeRSS14AsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "RSSExpanded" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeRSSExpandedAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeRSSExpandedAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "UPCA" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeUPCAAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeUPCAAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "UPCEANExtension" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeUPCEANExtensionAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeUPCEANExtensionAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;

    /// <summary>
    /// Create "UPCE" barcode as blob.
    /// </summary>
    /// <param name="Width">Integer.</param>
    /// <param name="Height">Integer.</param>
    /// <param name="Margin">Integer.</param>
    /// <param name="Value">Text.</param>
    /// <param name="Rotation">Integer.</param>
    /// <param name="PureBarcode">Boolean.</param>
    /// <param name="BarcodeBlobSOC">VAR Record "Barcode Blob SOC".</param>
    procedure CreateBarcodeEncodeUPCEAsBlob(Width: Integer; Height: Integer; Margin: Integer; Value: Text; Rotation: Integer; PureBarcode: Boolean; var BarcodeBlobSOC: Record "Barcode Blob SOC")
    var
#pragma warning disable
        WrapperSOC: DotNet WrapperSOC;
        MemoryStreamSOC: DotNet MemoryStreamSOC;
#pragma warning restore
        OutStream: OutStream;
    begin
        WrapperSOC := WrapperSOC.Wrapper();
        MemoryStreamSOC := MemoryStreamSOC.MemoryStream();
        WrapperSOC.EncodeUPCEAsBlob(Width, Height, Margin, Value, MemoryStreamSOC, Rotation, PureBarcode);
        BarcodeBlobSOC.Content.CreateOutStream(OutStream);
        MemoryStreamSOC.WriteTo(OutStream);
    end;
}