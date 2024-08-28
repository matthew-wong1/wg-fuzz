struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_5) -> vec3<u32> {
    let var_0 = 40986u ^ _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(83608u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.e.x, 95932u, 24528u, arg_2.c.x), vec4<u32>(2253u, arg_2.b.x, arg_2.b.x, arg_2.d)), reverseBits(4294967295u), arg_2.b.x)), arg_2.c);
    var var_1 = arg_2.a;
    var_1 = arg_2.a;
    var_1 = arg_2.a;
    var_1 = arg_2.a;
    return vec3<u32>(64851u, 26108u, 71564u & ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(30919u, 12849u, var_0), var_0 << (var_0 % 32u), ~67038u));
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    let var_0 = vec2<u32>(1u, _wgslsmith_dot_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, 4294967295u, 0u), vec3<u32>(4294967295u, arg_0.a, arg_0.a))), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, ~4294967295u, arg_0.a << (0u % 32u)), func_3(abs(2147483647i), false, Struct_5(Struct_4(vec3<f32>(1000f, -1460f, -1550f)), vec2<u32>(1u, arg_0.a), vec4<u32>(arg_0.a, arg_0.a, 42071u, arg_0.a), arg_0.a, vec3<u32>(62206u, 0u, arg_0.a))))));
    let var_1 = -1206f;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 - var_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1309f * var_1)))))));
    let var_3 = Struct_1(4294967295u);
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2, var_1, 725f, var_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, var_2, var_2, var_1)))))) - vec4<f32>(var_2, var_1, -1185f, 285f))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.xzz)));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(Struct_1(18393u));
    let var_1 = u_input.a;
    let var_2 = func_2(Struct_1(~4294967295u));
    var var_3 = vec4<i32>(var_1, 51418i, var_1, var_1);
    var var_4 = 7607u;
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(179f)), 1f, _wgslsmith_f_op_f32(trunc(-428f)), _wgslsmith_f_op_f32(-var_2.a.x))), vec4<f32>(2314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)) - func_2(Struct_1(1u)).a.x), var_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.x, var_2.a.x), 1368f))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), ~(~(~1u)), Struct_1(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(~35566u, 619u, 6995u);
    let var_1 = func_1();
    let var_2 = Struct_5(Struct_4(var_1.a.zyy), ~((vec2<u32>(var_1.b, 20989u) << (vec2<u32>(46023u, var_1.b) % vec2<u32>(32u))) >> (select(vec2<u32>(65560u, var_1.b), vec2<u32>(var_1.b, 20055u), vec2<bool>(false, false)) % vec2<u32>(32u))) << (vec2<u32>(var_1.c.a, _wgslsmith_add_u32(0u, 1u)) % vec2<u32>(32u)), _wgslsmith_div_vec4_u32(abs(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c.a, var_1.c.a, var_1.c.a, 0u), vec4<u32>(42814u, 1904u, 43699u, 44967u), vec4<u32>(4294967295u, 1u, 59226u, var_1.c.a)))), ~(~abs(vec4<u32>(var_1.c.a, 4294967295u, var_1.b, 10578u)))), abs(var_1.b), ~((vec3<u32>(59214u, 0u, var_1.b) | ~vec3<u32>(var_1.c.a, var_1.c.a, var_1.b)) ^ vec3<u32>(min(4294967295u, var_1.b), _wgslsmith_sub_u32(4294967295u, var_1.c.a), _wgslsmith_dot_vec3_u32(vec3<u32>(59770u, var_1.c.a, var_1.c.a), vec3<u32>(var_1.c.a, 87196u, 13488u)))));
    var var_3 = var_1.a.xx;
    var_0 = _wgslsmith_div_u32(abs(4294967295u), (max(_wgslsmith_mod_u32(var_2.b.x, 4294967295u), 0u) ^ var_2.e.x) | func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d & ~var_1.c.a, var_2.e.x, var_1.a.yyz, abs(~abs(~var_2.b)), vec2<i32>(-2147483647i, -1i));
}

