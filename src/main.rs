fn main() {
    println!("Hello from Rust CI!");
}

#[cfg(test)]
mod tests {
    #[test]
    fn always_passes() {
        assert_eq!(2 + 2, 4);
    }
}
