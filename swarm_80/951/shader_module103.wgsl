struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(-1481f, 1475f, 1000f), vec3<f32>(-1000f, -1656f, 744f));

var<private> global1: array<Struct_3, 2>;

var<private> global2: array<u32, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 2>();
    global1 = array<Struct_3, 2>();
    global2 = array<u32, 10>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, -890f, -684f, 248f))))), ~vec4<u32>(~4294967295u, abs(1u), 74335u, u_input.b.x) ^ ~u_input.d, Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_mult_u32(~u_input.c.x, 24950u | u_input.c.x) <= 38664u), false);
    let var_1 = var_0.a.x;
    global1 = array<Struct_3, 2>();
    let var_2 = var_0.c;
    global1 = array<Struct_3, 2>();
    global0 = array<vec3<f32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(max(u_input.a.x, u_input.a.x) & countOneBits(2147483647i), -u_input.a.x) ^ u_input.a.x);
}

