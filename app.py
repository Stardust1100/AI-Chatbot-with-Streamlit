# Python
import streamlit as st
import pandas as pd


def main():
    st.title("Hello World!")


   # Add a select box to the sidebar
    option = st.sidebar.selectbox(
        'How would you like to greet the world?',
        ('Hello', 'Hi', 'Hey', 'Hola', 'Bonjour', 'Ciao'))
    
    st.write("Welcome to this simple Streamlit app.")

    # Use the selected option to display a greeting
    st.write(f"{option}, welcome to this simple Streamlit app.")


sample = pd.DataFrame({
  'Fruit': ['Apples', 'Oranges', 'Bananas'],
  'Quantity': [10, 20, 15],

})

st.bar_chart(sample)

