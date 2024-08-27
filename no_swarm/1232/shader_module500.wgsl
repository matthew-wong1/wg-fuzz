struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> vec2<u32> {
    var var_0 = ~(~(-7632i));
    let var_1 = ~1u;
    global0 = array<vec4<i32>, 20>();
    return u_input.d.xy;
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1385f, 282f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-893f, -1000f) * vec2<f32>(-1999f, -793f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-342f, -341f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1149f, 405f))), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-256f, 1000f), vec2<f32>(918f, 758f)) * vec2<f32>(-398f, -1776f))))));
    var var_1 = ~_wgslsmith_mult_i32(~(-2147483647i), 1i);
    global0 = array<vec4<i32>, 20>();
    let var_2 = select(select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), select(true, false, false)), vec2<bool>(true, !select(true, true, true))), vec2<bool>(true, !(!any(vec2<bool>(false, true)))), !select(all(vec4<bool>(false, true, false, true)) || all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, true, true)), true));
    global0 = array<vec4<i32>, 20>();
    return select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), var_2, all(!(!vec3<bool>(var_2.x, true, true)))), vec2<bool>(any(!select(var_2, vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false))), false), var_2);
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<vec4<i32>, 20>();
    let var_0 = ~vec3<i32>(u_input.a, ~u_input.a, -u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(195f, _wgslsmith_f_op_f32(sign(2409f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-342f)))))));
    var var_2 = Struct_4(Struct_2(~max(reverseBits(vec2<u32>(1u, 7307u)), vec2<u32>(u_input.c.x, u_input.c.x) & u_input.d.zy), Struct_1(_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.d.xx)), ~u_input.c.x ^ (0u >> (u_input.d.x % 32u)), _wgslsmith_mult_vec2_i32(min(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 24500i)), vec2<i32>(1i, arg_0)))), vec2<bool>(!(_wgslsmith_f_op_f32(-var_1.x) < 1f), (_wgslsmith_f_op_f32(-var_1.x) == 121f) & any(vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-216f, var_1.x, var_1.x, var_1.x))) * vec4<f32>(var_1.x, -1000f, -1239f, var_1.x)))));
    global0 = array<vec4<i32>, 20>();
    return -1227f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~1u, _wgslsmith_sub_u32(~(u_input.d.x << (u_input.b % 32u)), u_input.b)) <= 0u;
    let var_1 = var_0;
    var var_2 = Struct_4(Struct_2(func_1(), Struct_1(u_input.c.x, _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), ~(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(15443i, u_input.a)))), !select(func_2(), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, var_1)), func_2().x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-347f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(826f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) - 1855f), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(u_input.a, u_input.a))))));
    var_2 = Struct_4(Struct_2(vec2<u32>(0u, ~(~11763u)), Struct_1(1u, ~(~var_2.a.b.a), -vec2<i32>(-557i, u_input.a))), select(var_2.b, func_2(), var_1), var_2.c);
    global0 = array<vec4<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.c.x), ~(vec2<u32>(75266u >> (u_input.c.x % 32u), 4294967295u) ^ vec2<u32>(var_2.a.b.b, firstLeadingBit(var_2.a.a.x))), vec2<f32>(-648f, var_2.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-530f, -748f, var_2.c.x, var_2.c.x), vec4<f32>(var_2.c.x, var_2.c.x, var_2.c.x, 1000f)))) - vec4<f32>(1257f, _wgslsmith_f_op_f32(select(338f, _wgslsmith_f_op_f32(max(var_2.c.x, 945f)), true)), var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) * -763f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-350f, -152f, var_2.c.x, -2215f) + vec4<f32>(406f, var_2.c.x, 1441f, var_2.c.x)))));
}

