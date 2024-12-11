dotnet
{
    assembly(mscorlib)
    {
        type(System.IO.MemoryStream; MemoryStreamSOC) { }
    }
    assembly(BarcodeWrapper)
    {
        type(BarcodeWrapper.Wrapper; WrapperSOC) { }
    }
}