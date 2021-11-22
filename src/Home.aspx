<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="color:White">Abtract:</h1>
<p style="text-align:justify; color:White; font-size:x-large;">We propose a new design for large-scale multimedia 
content protection systems. Our design leverages cloud infrastructures to provide cost efficiency, rapid deployment, scalability, and elasticity to accommodate varying workloads. The proposed system can
 be used to protect different multimedia content types, including 2-D videos, 3-D videos, images, audio clips, 
 songs, and music clips. The system can be deployed on private and/or public clouds. Our system has two novel components:
  (i) method to create signatures of 3-D videos, and (ii) distributed matching engine for multimedia objects. The signature
   method creates robust and representative signatures of 3-D videos that capture the depth signals in these videos and it is 
   computationally efficient to compute and compare as well as it requires small storage. The distributed matching engine achieves 
   high scalability and it is designed to support different multimedia objects. We implemented the proposed system and deployed it 
   on two clouds: Amazon cloud and our private cloud. Our experiments with more than 11,000 3-D videos and 1 million images show
    the high accuracy and scalability of the proposed system. In addition, we compared our system to the protection system used by
     YouTube and our results show that the YouTube protection system fails to detect most copies of 3-D videos, while our system 
     detects more than 98% of them. This comparison shows the need for the proposed 3-D signature method, since the state-of-the-art
      commercial system was not able to handle 3-D videos.</p>
</asp:Content>

