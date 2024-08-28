struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.a.x, ~firstTrailingBit(~(~1u)), 5660u);
    global0 = array<vec4<bool>, 2>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1537f);
    let var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, select(var_0.x, 27599u, true));
}

