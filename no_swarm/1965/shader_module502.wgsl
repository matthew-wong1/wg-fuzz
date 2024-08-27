struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> i32 {
    return ~_wgslsmith_mod_i32(u_input.e, ~(i32(-1i) * -u_input.e));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>) -> u32 {
    global1 = Struct_1(false, reverseBits(vec3<u32>(_wgslsmith_mult_u32(global1.d | global1.c, 21823u), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c.x, 4294967295u), 95858u))), global1.c, _wgslsmith_clamp_u32(reverseBits(u_input.c.x) ^ _wgslsmith_div_u32(global1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, global1.c, 0u), vec3<u32>(u_input.d.x, global1.b.x, u_input.a))), ~_wgslsmith_mod_u32(1776u, 1u), _wgslsmith_dot_vec3_u32(global1.b, vec3<u32>(0u, u_input.a, global1.c))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(470f))), -2839f, -2118f), _wgslsmith_f_op_vec4_f32(-global1.e))));
    global0 = array<vec2<bool>, 29>();
    global0 = array<vec2<bool>, 29>();
    var var_0 = max(43427i, 2147483647i);
    var var_1 = global1.e;
    return u_input.d.x;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(~(~func_2(any(vec3<bool>(true, global1.a, global1.a)))), Struct_2(Struct_1(any(select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, false), global1.a)), u_input.c, u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global1.c), vec2<u32>(u_input.b, 1u)), 0u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(global1.e.x * 656f), _wgslsmith_f_op_f32(ceil(2468f)), -1019f)), Struct_1(all(vec2<bool>(true, global1.a)), ~u_input.c, ~(~u_input.a), 1u, vec4<f32>(_wgslsmith_f_op_f32(round(global1.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global1.e.x * global1.e.x), _wgslsmith_f_op_f32(max(global1.e.x, global1.e.x)))), select(30888u, func_3(~vec2<i32>(u_input.e, u_input.e), vec3<f32>(global1.e.x, global1.e.x, global1.e.x)), true), (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global1.d, u_input.d.x), global1.b) >> (~39492u % 32u)) | 5680u));
    var_0 = Struct_3(~(~_wgslsmith_mod_i32(var_0.a, u_input.e)) & var_0.a, var_0.b);
    global1 = Struct_1(~u_input.c.x < global1.d, ~(~firstTrailingBit(vec3<u32>(4294967295u, 114381u, 1u)) >> (u_input.c % vec3<u32>(32u))), select(53996u >> (~(u_input.c.x & 4294967295u) % 32u), ~var_0.b.c, any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.b.a.a, true, false, global1.a), vec4<bool>(global1.a, true, false, global1.a)), select(vec4<bool>(global1.a, true, global1.a, var_0.b.b.a), vec4<bool>(var_0.b.a.a, var_0.b.a.a, true, true), var_0.b.b.a), true))), _wgslsmith_add_u32(~(u_input.b & u_input.b), 4294967295u), global1.e);
    var var_1 = Struct_3(-23551i, var_0.b);
    var var_2 = var_0.b.b.a;
    return Struct_2(Struct_1(true, reverseBits(global1.b), ~(~countOneBits(0u)), ~(global1.d ^ global1.d), vec4<f32>(global1.e.x, _wgslsmith_f_op_f32(abs(1f)), global1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1598f + global1.e.x)))), Struct_1(all(vec2<bool>(!var_0.b.a.a, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(u_input.c, global1.b), var_0.b.d), firstTrailingBit(~vec3<u32>(4294967295u, 14081u, global1.d)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, var_0.b.d, 57519u), vec3<u32>(0u, global1.d, var_0.b.d))), 23117u, 17043u ^ _wgslsmith_div_u32(global1.c, u_input.a), var_0.b.b.e), _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, var_1.b.b.b.x, 1u), max(vec4<u32>(global1.d, 1u, global1.b.x, 28628u), vec4<u32>(4294967295u, 4294967295u, var_0.b.d, 43078u)), var_0.b.a.a) ^ abs(select(vec4<u32>(13806u, var_0.b.d, 0u, 32346u), vec4<u32>(42802u, var_0.b.a.c, u_input.b, global1.c), true)), vec4<u32>(1u, ~(u_input.d.x << (84324u % 32u)), _wgslsmith_div_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.d.x), vec3<u32>(1u, 0u, 27703u))), ~0u)), 4294967295u ^ _wgslsmith_mod_u32(~_wgslsmith_mod_u32(0u, 19985u), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(u_input.e, ~u_input.e);
    let var_1 = func_1();
    global1 = Struct_1(false, var_1.b.b, u_input.c.x, ~(~u_input.c.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(283f, 110f, -889f, var_1.b.e.x), global1.e)) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.e.x, var_1.a.e.x, global1.e.x, -1595f), vec4<f32>(-781f, 873f, 1262f, var_1.b.e.x)), global1.e)))));
    global1 = Struct_1(true, var_1.b.b, u_input.a, u_input.d.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(global1.e.x, -454f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1875f) + -524f), 974f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -176f)))))));
    var var_2 = vec2<i32>(-u_input.e, u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(-733f, 2147483647i, ~vec3<u32>(global1.b.x, 0u, 50539u));
}

