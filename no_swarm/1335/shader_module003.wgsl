struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 14850u, 4294967295u);

var<private> global2: i32 = 11946i;

var<private> global3: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global4: vec4<f32> = vec4<f32>(-1041f, 465f, 1541f, -347f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(vec2<i32>(max(-41649i, -2147483647i), -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1590f, 948f))));
}

