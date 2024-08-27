struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(48726u, 8896u, 50938u, 19386u, 4294967295u, 49984u, 4294967295u, 4294967295u, 1u, 60792u, 1u, 28679u, 17981u, 1u, 58193u, 43813u, 4294967295u, 0u, 38087u, 4294967295u, 0u, 1u, 3214u, 43220u, 5533u, 0u, 0u, 0u, 31455u, 15823u, 36336u);

var<private> global1: array<Struct_3, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 30>();
    global0 = array<u32, 31>();
    let var_0 = -717f;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-478f, 1000f, false)))))), 408f);
    global0 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -141f)) + _wgslsmith_f_op_f32(select(361f, -599f, true)))), 1000f));
}

