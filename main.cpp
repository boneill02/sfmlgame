#include <SFML/Graphics.hpp>

sf::CircleShape shape;

void draw() {

}

void updateGame(sf::Time elapsed) {
	//shape.move(1, 0);
}


int main() {
	/* window init */
	sf::RenderWindow window(sf::VideoMode(200, 200), "SFML works!");
	window.setVerticalSyncEnabled(true);
	window.setFramerateLimit(60);

	shape = sf::CircleShape(100.f);
	shape.setFillColor(sf::Color::Green);
	sf::Clock clock;

	while (window.isOpen()) {
		/* poll events */
		sf::Event event;
		while (window.pollEvent(event)) {
			if (event.type == sf::Event::Closed)
				window.close();
		}

		/* keyboard */
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right)) {
			shape.move(1, 0);
		}
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left)) {
			shape.move(-1, 0);
		}
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up)) {
			shape.move(0, -1);
		}
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down)) {
			shape.move(0, 1);
		}

		sf::Time elapsed = clock.restart();
		updateGame(elapsed);

		window.clear(sf::Color::Black);
		/* draw */
		window.draw(shape);

		window.display();
	}

	return 0;
}
