struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(999f - -1175f))) * _wgslsmith_f_op_f32(f32(-1f) * -1608f)), 566f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f) - -1161f) + _wgslsmith_div_f32(-580f, 1000f))));
}

