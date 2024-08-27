# Читаем данные из wolfpsort_result.txt
with open('wolfpsort_result.txt', 'r') as wolfpsort_file:
    wolfpsort_lines = wolfpsort_file.readlines()

# Создаем множество с ID последовательностей, у которых в wolfpsort_result.txt после details идет nucl
nucl_proteins = set()
for line in wolfpsort_lines:
    if "details nucl" in line:
        protein_id = line.split()[0]
        nucl_proteins.add(protein_id)

# Читаем данные из selected_proteins.fasta и записываем в nucl_proteins.fasta те последовательности, которые соответствуют условиям
with open('selected_proteins.fasta', 'r') as fasta_file, open('nucl_proteins.fasta', 'w') as nucl_file:
    current_protein_id = None
    for line in fasta_file:
        if line.startswith('>'):
            current_protein_id = line.strip('>\n')
            if current_protein_id in nucl_proteins:
                nucl_file.write(line)
        elif current_protein_id in nucl_proteins:
            nucl_file.write(line)

print("Скрипт выполнен успешно. Проверьте файл nucl_proteins.fasta.")