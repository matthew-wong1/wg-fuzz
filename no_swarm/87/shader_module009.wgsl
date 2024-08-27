struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: f32,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x > u_input.e.x;
    let var_1 = 0i;
    var var_2 = -u_input.e.yz;
    let var_3 = vec2<f32>(746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-952f - 110f), _wgslsmith_f_op_f32(abs(1258f)))) + _wgslsmith_f_op_f32(ceil(-1018f))));
    let var_4 = ~var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c, 1u, 44888u));
}

