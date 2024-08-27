struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false));

var<private> global1: array<vec3<u32>, 10>;

var<private> global2: array<f32, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(true, !all(vec3<bool>(false, false, false)));
    global2 = array<f32, 29>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -124f);
    let var_2 = u_input.d.x;
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 25731i, -9269i);
}

