FROM mcr.microsoft.com/dotnet/aspnet:6.0
RUN mkdir /var/webapp1
COPY /bin/Release/net6.0/publish /var/webapp1
WORKDIR /var/webapp1
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000
 
ENTRYPOINT ["dotnet", "webapp.dll"]
