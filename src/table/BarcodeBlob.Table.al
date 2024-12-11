/// <summary>
/// Table Barcode Blob SOC (ID 75000).
/// </summary>
table 91200 "Barcode Blob SOC"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Guid)
        {
            DataClassification = CustomerContent;
        }
        field(2; Content; BLOB)
        {
            DataClassification = CustomerContent;
            SubType = Bitmap;
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }

}