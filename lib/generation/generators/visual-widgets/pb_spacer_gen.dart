import 'package:parabeac_core/generation/generators/pb_generator.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/subclasses/pb_intermediate_node.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/alignments/spacer.dart';
class PBSpacerGenerator extends PBGenerator {
  PBSpacerGenerator() : super('SPACER');

  @override
  String generate(PBIntermediateNode source) {
    if(source is Spacer){
    var buffer = StringBuffer();
    buffer.write('Spacer(');
    buffer.write('flex: ${source.flex},');
    buffer.write(')');
    return buffer.toString();}
  }
}
