struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<f32>(828f, -509f, -2227f), vec4<bool>(false, false, true, true), -2423f, -33445i);

var<private> global1: array<vec2<bool>, 23>;

var<private> global2: bool;

var<private> global3: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

var<private> global4: Struct_4 = Struct_4(vec3<f32>(-785f, 2919f, 632f), vec4<bool>(true, true, false, false), -969f, 152i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 6>();
    var var_0 = global0.b.x & false;
    global3 = array<vec3<bool>, 6>();
    let var_1 = Struct_3(global4.b.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.a.x)))), 803f, global4.c));
    var var_2 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~u_input.a), ~_wgslsmith_sub_u32(16482u, u_input.b.x)) | (u_input.b.zw ^ u_input.b.wx), global0.c, ~(0u >> (u_input.a % 32u)), _wgslsmith_f_op_f32(-282f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - global4.a.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 1210f, 104f, -478f) * vec4<f32>(-815f, global0.c, 1757f, -1890f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global4.a.x, 995f, var_1.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, global4.c, global4.c, global4.c))), false)))));
}

