struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(10793u, ~(~(-u_input.c << (reverseBits(vec4<u32>(4294967295u, u_input.b, global0.a, global0.a)) % vec4<u32>(32u)))));
    var var_0 = !vec3<bool>(true, !all(vec2<bool>(true, true)), true);
    global1 = var_0.x;
    let var_1 = -vec2<i32>(-8201i, u_input.a.x);
    let var_2 = vec2<u32>(firstLeadingBit(4493u), 4294967295u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(781f - -1328f));
    let x = u_input.a;
    s_output = StorageBuffer(420f);
}

