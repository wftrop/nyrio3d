from flask import Flask, request, render_template, send_file
import os

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/upload', methods=['POST'])
def upload():
    gcode = request.files['file']
    gcode_filename = gcode.filename
    gcode.save(gcode_filename)

    python_filename = create_python_file_from_gcode(gcode_filename, 'new_file.py')

    return render_template('download.html', filename=python_filename)

@app.route('/download/<path:filename>')
def download(filename):
    return send_file(filename, as_attachment=True)

def create_python_file_from_gcode(gcode_file, python_file):
    # Code pour extraire les informations et créer un nouveau fichier Python
    pass

if __name__ == '__main__':
    app.run(debug=True)
