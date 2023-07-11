from langchain.document_loaders import BSHTMLLoader
from langchain.embeddings.openai import OpenAIEmbeddings
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain.vectorstores import ElasticVectorSearch
from langchain.embeddings import HuggingFaceEmbeddings

from config import Paths, openai_api_key


def main():
    loader = BSHTMLLoader(str(Paths.book))
    data = loader.load()

    print(data)

    text_splitter = RecursiveCharacterTextSplitter.from_tiktoken_encoder(
        chunk_size=1000, chunk_overlap=0
    )
    documents = text_splitter.split_documents(data)

    # embeddings = OpenAIEmbeddings(openai_api_key=openai_api_key)
    embeddings = HuggingFaceEmbeddings()
    db = ElasticVectorSearch.from_documents(
        documents,
        embeddings,
        elasticsearch_url="http://localhost:9209",
        index_name="elastic-index",
    )
    print(db.client.info())


if __name__ == "__main__":
    main()
