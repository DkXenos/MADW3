import SwiftUI

struct MusicPlayerView: View {
    @State private var isPlaying: Bool = true
    @State private var progress: Double = 0.28
    @State private var volume: Double = 0.65


    let totalDuration: Double = 226
    let accentColor = Color.white
    let bgColor = Color(red: 0.42, green: 0.27, blue: 0.13)

    var elapsedTime: String {
        let secs = Int(progress * totalDuration)
        return String(format: "%d:%02d", secs / 60, secs % 60)
    }

    var remainingTime: String {
        let secs = Int((1 - progress) * totalDuration)
        return String(format: "-%d:%02d", secs / 60, secs % 60)
    }

    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                Image("mrcy-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.5), radius: 20, x: 0, y: 10)

                Spacer().frame(height: 40)

                VStack(spacing: 8) {
                    Text("R.L.M")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(accentColor)
                    Text("MRCY")
                        .font(.title3)
                        .foregroundColor(accentColor.opacity(0.7))
                }

                Spacer().frame(height: 40)

                VStack(spacing: 8) {
                    Slider(value: $progress, in: 0...1)
                        .tint(accentColor)
                    
                    HStack {
                        Text(elapsedTime)
                            .font(.caption)
                            .foregroundColor(accentColor.opacity(0.7))
                        Spacer()
                        Text(remainingTime)
                            .font(.caption)
                            .foregroundColor(accentColor.opacity(0.7))
                    }
                }
                .padding(.horizontal, 24)

                Spacer().frame(height: 30)

                HStack(spacing: 50) {
                    Button(action: {
                    }) {
                        Image(systemName: "backward.fill")
                            .font(.system(size: 30))
                            .foregroundColor(accentColor)
                    }

                    Button(action: {
                        isPlaying.toggle()
                    }) {
                        Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                            .font(.system(size: 50))
                            .foregroundColor(accentColor)
                    }

                    Button(action: {
                    }) {
                        Image(systemName: "forward.fill")
                            .font(.system(size: 30))
                            .foregroundColor(accentColor)
                    }
                }

                Spacer().frame(height: 40)

                HStack(spacing: 15) {
                    Image(systemName: "speaker.fill")
                        .foregroundColor(accentColor.opacity(0.7))
                    
                    Slider(value: $volume, in: 0...1)
                        .tint(accentColor)
                    
                    Image(systemName: "speaker.wave.3.fill")
                        .foregroundColor(accentColor.opacity(0.7))
                }
                .padding(.horizontal, 24)

                Spacer()

                HStack {
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .font(.system(size: 24))
                            .foregroundColor(accentColor.opacity(0.7))
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.system(size: 24))
                            .foregroundColor(accentColor.opacity(0.7))
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.system(size: 24))
                            .foregroundColor(accentColor.opacity(0.7))
                    }
                    Spacer()
                }
                .padding(.bottom, 20)
            }
        }
        .navigationBarHidden(true)
    }

}

#Preview {
    MusicPlayerView()
}
