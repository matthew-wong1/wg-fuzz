struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_4, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 1>();
    var var_0 = any(vec3<bool>(global0.b.b.b.x, false, global0.c > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - 250f))));
    var var_1 = -1321f;
    global1 = array<Struct_4, 1>();
    let var_2 = global0.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(global0.d, _wgslsmith_mod_i32(global0.d, global0.b.a.x)), reverseBits(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, global0.b.c, global0.b.c, u_input.b), vec4<u32>(44929u, 0u, 0u, global0.b.c)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 60346u), vec4<u32>(1u, 63000u, u_input.b, 2398u)))), vec3<u32>(u_input.b, ~(0u & global0.b.c), max(~1u, ~4294967295u) << (var_2.a % 32u)), 1i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(744f + -1035f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-371f - global0.c) - -949f)))));
}

