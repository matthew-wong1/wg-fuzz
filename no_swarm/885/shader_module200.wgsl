struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_1(all(vec3<bool>(true, true, true)), 0i, max(~0u, ~4294967295u));
    let var_1 = ~(~(~0i)) ^ _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_0.b, var_0.b, -37275i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_0.b, -7437i), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_0.b, u_input.b), vec3<i32>(var_0.b, 66502i, u_input.d))), ~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(17343i, -1i, 1i), vec3<i32>(u_input.b, var_0.b, -1i))));
    var var_2 = Struct_1(var_0.a, firstLeadingBit(-var_0.b), 1u);
    let var_3 = !vec4<bool>(any(!vec3<bool>(var_2.a, false, var_0.a)) == select(false, select(var_0.a, var_2.a, true), var_2.a), any(!(!vec4<bool>(var_2.a, var_2.a, var_0.a, false))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, var_2.a)), select(vec2<bool>(true, true), vec2<bool>(var_2.a, true), vec2<bool>(var_0.a, var_2.a)), select(vec2<bool>(false, var_2.a), vec2<bool>(var_2.a, true), vec2<bool>(var_0.a, var_0.a)))), var_2.a);
    var var_4 = vec4<i32>(~min(countOneBits(var_0.b), u_input.a.x), _wgslsmith_sub_i32(2147483647i, var_2.b), _wgslsmith_div_i32(1i, var_0.b), max(1i, var_1));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2372f + 1265f), 1269f) * 201f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1197f * -1281f), 909f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(918f, 2681f)))), -837f, true));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(197f - -232f)) - _wgslsmith_div_f32(-674f, 2319f)) - -673f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_f_op_f32(func_3(4294967295u, 40805u, ~vec2<u32>(1u, 75326u)))));
    var var_1 = u_input.c;
    let var_2 = vec3<bool>(false, select(true, true || !(529f > var_0), ~(~var_1.x) <= _wgslsmith_mult_u32(~108073u, var_1.x)), !(_wgslsmith_clamp_u32(_wgslsmith_add_u32(6122u, u_input.c.x), 4294967295u, 0u) < ~0u));
    var var_3 = Struct_1(true, 0i >> (((firstLeadingBit(var_1.x) << (1u % 32u)) >> (countOneBits(1u) % 32u)) % 32u), _wgslsmith_div_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 63809u), vec2<u32>(u_input.c.x, 3311u)) << (43001u % 32u), abs(~21388u)), u_input.c.x & ~var_1.x));
    let var_4 = -vec4<i32>(1i, -10001i, abs(9989i), select(_wgslsmith_add_i32(-var_3.b, 941i), u_input.b, !var_2.x));
    return Struct_1(var_2.x, -(~u_input.d), select(1u, var_1.x, false) >> (reverseBits(select(_wgslsmith_sub_u32(var_3.c, 1u), _wgslsmith_add_u32(var_3.c, u_input.c.x), true)) % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<f32> {
    var var_0 = Struct_1(arg_0.a, 33246i, 1u);
    var_0 = func_2();
    let var_1 = select(!(!arg_1.xw), vec2<bool>(any(select(arg_1.xx, select(vec2<bool>(true, true), vec2<bool>(false, arg_0.a), true), select(true, false, var_0.a))), any(!select(arg_1.wwy, arg_1.wxw, arg_1.zzz))), true);
    let var_2 = _wgslsmith_mult_i32(var_0.b, 20682i);
    var_0 = func_2();
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1359f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f + 558f) - _wgslsmith_f_op_f32(select(-189f, 330f, true))), _wgslsmith_f_op_f32(ceil(686f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1016f * 1152f) - _wgslsmith_f_op_f32(-1000f + 1277f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-853f, -1895f, 288f, 1000f), vec4<f32>(1617f, 1043f, -721f, 114f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1220f, 762f, -1354f, 588f)))) + vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_0.c, 1u, vec2<u32>(var_0.c, arg_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(-447f * 2166f), _wgslsmith_div_f32(-2295f, -1082f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1056f, 1000f, 282f, -391f)), _wgslsmith_div_vec4_f32(vec4<f32>(335f, 960f, -141f, 1089f), vec4<f32>(-974f, -1272f, -950f, 2031f)), vec4<bool>(false, false, false, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(true, ~(u_input.b >> (15238u % 32u)), _wgslsmith_dot_vec3_u32(u_input.c & vec3<u32>(1u, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, 4294967295u, u_input.c.x))), vec4<bool>(false, true, true, !any(vec4<bool>(true, true, false, false))))));
    let var_1 = Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))) && true, _wgslsmith_div_i32(u_input.a.x, abs(-u_input.d >> (abs(u_input.c.x) % 32u))), u_input.c.x);
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2251f));
    var var_4 = true;
    var var_5 = ~min(_wgslsmith_dot_vec2_u32(u_input.c.xy, _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.c, 4294967295u), abs(u_input.c.xy))), _wgslsmith_mult_u32(var_2.c, 58729u));
    var_3 = var_0.x;
    var_5 = ~115750u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_2.b, var_1.b), _wgslsmith_dot_vec2_i32(~(~u_input.a), ~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-905f))) * -1465f));
}

