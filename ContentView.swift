import SwiftUI

struct ContentView: View {
    @State var AssetsTextField : Int = 0
    @State var PayCheck : Int = 0 
    @State var Allowance : Int = 0
    @State var GraduationGifts : Int = 0
    @State var LiabilityTextField : Int = 0 
    @State var Netflix : Int = 0
    @State var CellPhone : Int = 0
    @State var Entertainment : Int = 0
    @State var showingAlert = false
    @State var stepOne = 0
    @State var stepTwo = 0
    @State var NetWorth = 0
    
    var body: some View {
        VStack {
            Text("Net Worth Calculator ")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            Text("Assets")
                .font(.title)
                .fontWeight(.thin)
                .padding()
                .foregroundColor(.green)
            TextField("Paycheck", value: $PayCheck, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            TextField("Allowance", value: $Allowance, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            TextField("Graduation Gifts", value: $GraduationGifts, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            Text("Liability")
                .font(.title)
                .fontWeight(.thin)
                .padding()
                .foregroundColor(.pink)
            TextField("Netflix", value: $Netflix, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            TextField("Cell Phone", value: $CellPhone, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            TextField("Entertainment", value: $Entertainment, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            Button(action: {
                showingAlert = true 
                stepOne = (PayCheck + Allowance + GraduationGifts)
                stepTwo = (Netflix + CellPhone + Entertainment)
                NetWorth = (stepOne - stepTwo)
            }) {
                Text("Click Here to Calculate Your Net Worth ")
                    .font(.title)
                    .fontWeight(.thin)
                    .foregroundColor(.black)
                    .frame(width: 300, height: 80, alignment: .center)
                    .foregroundColor(.white)
                    .background(.red)
                    .position(x: 220, y: 30)
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Your Networth is: "), message: Text("\(NetWorth)"), dismissButton: .default(Text("Got it")))
                    }
                
                    
              
                
            }
        }
    }
}
