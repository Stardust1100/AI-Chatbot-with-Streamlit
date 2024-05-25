import streamlit as st
import pandas as pd
import numpy as np

def main():
    st.title("Hello World!")
    st.write("Here's our first attempt at using data to create a table:")
    df = pd.DataFrame(np.random.randn(10, 2), columns=['x', 'y'])
    st.bar_chart(df)

if __name__ == "__main__":
    main()