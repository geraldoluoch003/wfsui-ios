//
//  ContentView.swift
//  WFSUI
//
//  Created by Gerald Oluoch on 24/05/2025.
//

import SwiftUI

@available(macOS 10.15, *)
struct ContentView: View {
    var body: some View {
        VStack(spacing: 32) {
            Spacer()
            GradientLoader()
            VStack(spacing: 8) {
                Text("Processing Your Request")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.black)
                Text("This may take a few seconds")
                    .font(.system(size: 16))
                    .foregroundColor(Color(.systemGray))
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

@available(macOS 10.15, *)
struct Arc: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let radius = min(rect.width, rect.height) / 2
        let center = CGPoint(x: rect.midX, y: rect.midY)
        path.addArc(center: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: endAngle,
                    clockwise: clockwise)
        return path
    }
}

@available(macOS 10.15, *)
struct GradientLoader: View {
    @State private var isAnimating = false

    var body: some View {
        Arc(
            startAngle: .degrees(-45),
            endAngle: .degrees(315),
            clockwise: false
        )
        .stroke(
            AngularGradient(
                stops: [
                    .init(color: Color(red: 1, green: 0.8, blue: 0), location: 0.0),
                    .init(color: Color(red: 1, green: 0.8, blue: 0), location: 0.08),
                    .init(color: Color(red: 0.98, green: 0.47, blue: 0.16), location: 0.18),
                    .init(color: Color(red: 0.97, green: 0.25, blue: 0.41), location: 0.28),
                    .init(color: Color(red: 0.97, green: 0.25, blue: 0.41), location: 0.38),
                    .init(color: Color(red: 0.98, green: 0.47, blue: 0.16), location: 0.48),
                    .init(color: Color(red: 1, green: 0.8, blue: 0), location: 0.58),
                    .init(color: Color(red: 1, green: 0.8, blue: 0), location: 1.0),
                ],
                center: UnitPoint(x: 0.51, y: 0.58),
                angle: .degrees(51.59)
            ),
            style: StrokeStyle(lineWidth: 3, lineCap: .round)
        )
        .frame(width: 64, height: 64)
        .rotationEffect(.degrees(isAnimating ? 360 : 0))
        .animation(
            .linear(duration: 0.9)
                .repeatForever(autoreverses: false),
            value: isAnimating
        )
        .onAppear {
            isAnimating = true
        }
    }
}
