struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 22>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> bool {
    global0 = array<Struct_5, 22>();
    global0 = array<Struct_5, 22>();
    global0 = array<Struct_5, 22>();
    let var_0 = u_input.c << (1u % 32u);
    var var_1 = vec4<u32>(~u_input.a.x, ~(~(~0u)), 1641u, u_input.b & ~1u) << (vec4<u32>(60845u, 1u, ~71115u, ~u_input.b) % vec4<u32>(32u));
    return select(true, true, false);
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_5, 22>();
    global0 = array<Struct_5, 22>();
    global0 = array<Struct_5, 22>();
    let var_0 = Struct_5(u_input.c, select(vec4<bool>(all(vec4<bool>(true, false, false, false)), !func_3(u_input.c), u_input.c < -1i, true), vec4<bool>(true, true, true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false))), vec2<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_div_u32(u_input.a.x, reverseBits(39543u)) != ~_wgslsmith_div_u32(u_input.b, u_input.b)));
    var var_1 = vec3<f32>(-570f, 160f, -898f);
    return Struct_1(var_0.b.x);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = -38097i;
    var_0 = func_2();
    var var_2 = Struct_4(var_0.a);
    var_0 = Struct_1(true);
    return Struct_1(arg_0 < (~(-7815i) | u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(97810u, u_input.b, u_input.a.x), vec3<u32>(60096u, 9620u, 42131u)), ~_wgslsmith_div_u32(33494u, u_input.a.x)) ^ ~_wgslsmith_mod_u32(u_input.b, 0u), abs(17802u));
    let var_1 = vec3<bool>(true, true, true);
    var_0 = u_input.b;
    let var_2 = Struct_4(false);
    let var_3 = -305f;
    var_0 = u_input.b;
    let var_4 = Struct_3(Struct_1(!var_2.a), func_1(~(-72654i), u_input.c), Struct_2((any(vec3<bool>(false, var_1.x, true)) && true) != !(!var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(9293u, u_input.b, u_input.b), select(vec3<u32>(1u, 60249u, u_input.b), vec3<u32>(1u, u_input.a.x, u_input.b), var_1), select(vec3<u32>(u_input.b, 32212u, 0u), vec3<u32>(u_input.a.x, u_input.b, 43216u), var_4.c.a))), u_input.a, -462f, var_3, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3, var_3), vec2<f32>(var_3, var_3), false)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 2188f) + vec2<f32>(-105f, -131f))))));
}

