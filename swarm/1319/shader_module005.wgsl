struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1307f - -1097f)), 901f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1000f, -623f)))), -1000f))));
    var var_1 = Struct_4(vec2<u32>(201u, 1u));
    let var_2 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, false, true)), true, select(true, false, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, true, false), true)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 341f <= var_0.x), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true), any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))), !(!vec4<bool>(any(vec4<bool>(true, true, false, true)), arg_0.x <= 4294967295u, true, true)));
    let var_3 = Struct_3(var_0.x);
    var var_4 = ~(~(~u_input.a));
    return _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(236i, -1i, 0i), vec3<i32>(-35468i, -2147483647i, 33008i)) << (firstLeadingBit(1u) % 32u), firstTrailingBit(~(~6385i))), vec2<i32>(-2147483647i, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-30692i, 1i), vec2<i32>(-6711i, -15963i)))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = max(~(-(~vec2<i32>(1i, 1i))), vec2<i32>(64705i, firstTrailingBit(_wgslsmith_dot_vec2_i32(func_3(vec4<u32>(1u, 58272u, u_input.a, 0u)), ~vec2<i32>(-31321i, -41270i)))));
    var var_1 = Struct_2((23064u | _wgslsmith_sub_u32(0u, 4294967295u ^ u_input.a)) | abs(u_input.a), Struct_1(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, false), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), true)), _wgslsmith_f_op_f32(-arg_0.x), -max(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, var_0.x))), vec2<u32>(u_input.a, select(1u, u_input.a, true & any(vec4<bool>(false, true, false, true)))), select(reverseBits(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x), vec4<i32>(0i, var_0.x, 37792i, var_0.x)))), ~(-vec4<i32>(-2147483647i, var_0.x, var_0.x, -40308i)) ^ ((vec4<i32>(var_0.x, var_0.x, var_0.x, 0i) | vec4<i32>(-1i, var_0.x, 0i, -30689i)) << (~vec4<u32>(25720u, 67847u, 110391u, u_input.a) % vec4<u32>(32u))), !all(vec3<bool>(true, true, true))), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, true), true, all(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, true, true)), -870f, abs(vec2<i32>(1i, var_0.x))));
    let var_2 = Struct_4(var_1.c);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-497f - arg_0.x) + var_1.e.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -343f) * 495f)), var_1.b.b)));
    let var_4 = !select(var_1.e.a, !(!select(var_1.b.a, var_1.e.a, false)), var_1.d.x >= 0i);
    return var_3;
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_2(u_input.a, Struct_1(select(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, true, true, true), true), vec4<bool>(false, arg_0, arg_0, true), !any(vec2<bool>(true, arg_0))), 357f, vec2<i32>(1i, 1i)), vec2<u32>(~1492u, ~select(0u, 85719u, false)), ~(-(select(vec4<i32>(8481i, -25001i, 0i, 1877i), vec4<i32>(-1i, 1i, 1i, 24568i), false) << ((vec4<u32>(52900u, 9661u, u_input.a, u_input.a) & vec4<u32>(17178u, 0u, 1u, u_input.a)) % vec4<u32>(32u)))), Struct_1(!(!(!vec4<bool>(arg_0, true, arg_0, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-617f - arg_1.a), _wgslsmith_f_op_f32(max(1636f, arg_1.a))))), vec2<i32>(1i, 1i)));
    var var_1 = Struct_4(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c.x, u_input.a), var_0.c), vec2<u32>(4298u, u_input.a)), vec2<u32>(countOneBits(1u), var_0.c.x))));
    var var_2 = ~u_input.a & abs(abs(4294967295u));
    var var_3 = var_0;
    var_3 = Struct_2(u_input.a, var_3.b, ~vec2<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, u_input.a, u_input.a), vec3<u32>(21649u, 92523u, var_0.a))) >> (~firstTrailingBit(select(vec2<u32>(8142u, var_1.a.x), var_1.a, vec2<bool>(var_3.b.a.x, arg_0))) % vec2<u32>(32u)), reverseBits(~var_3.d), Struct_1(vec4<bool>(arg_0, true, any(vec2<bool>(var_0.e.a.x, false)), all(vec2<bool>(false, true))), var_0.e.b, select((vec2<i32>(-33290i, -10182i) | var_3.d.zw) >> (vec2<u32>(var_0.c.x, var_1.a.x) % vec2<u32>(32u)), var_3.b.c, select(!vec2<bool>(arg_0, var_3.b.a.x), vec2<bool>(arg_0, var_3.b.a.x), var_0.e.a.zx))));
    return 385f;
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_4 {
    let var_0 = Struct_1(vec4<bool>(false, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(332f)))) * _wgslsmith_f_op_f32(func_4(true, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-345f, -1000f, -1292f) + vec3<f32>(133f, 493f, -1466f)))))), -_wgslsmith_mult_vec2_i32(~vec2<i32>(1i, 5390i), func_3(vec4<u32>(8190u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(arg_1, u_input.a, 1u, u_input.a) % vec4<u32>(32u)))));
    let var_1 = Struct_4(vec2<u32>(max(max(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 25320u), vec2<u32>(u_input.a, arg_1))), ~arg_1), 98693u));
    let var_2 = !select(!any(var_0.a.xz), true, false);
    let var_3 = _wgslsmith_f_op_f32(func_4(1u >= abs(_wgslsmith_div_u32(u_input.a, u_input.a)), Struct_3(var_0.b))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) + var_0.b))));
    var var_4 = ~min(_wgslsmith_sub_i32(firstTrailingBit(-8020i), 1i), -_wgslsmith_dot_vec2_i32(var_0.c, var_0.c));
    return var_1;
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> u32 {
    var var_0 = _wgslsmith_clamp_u32(~50194u, 24843u, 0u);
    var_0 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(~arg_1.a.x, countOneBits(u_input.a), u_input.a >> (u_input.a % 32u), ~4294967295u), vec4<u32>(85757u, 1u, abs(arg_1.a.x), 4294967295u)), ~abs(vec4<u32>(arg_1.a.x, arg_1.a.x, u_input.a, arg_1.a.x) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))) >> ((arg_1.a.x | u_input.a) % 32u);
    var var_1 = func_1(_wgslsmith_div_f32(1038f, _wgslsmith_f_op_f32(-arg_0)), 11824u);
    let var_2 = vec2<u32>(85260u, 4294967295u);
    let var_3 = 4294967295u;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 19764u, 5733u), vec3<u32>(101865u, 68279u, u_input.a)), vec3<u32>(u_input.a, ~u_input.a, 15389u << (u_input.a % 32u))), ~0u, func_5(879f, func_1(_wgslsmith_f_op_f32(abs(-228f)), 70059u))), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(2602u, u_input.a, u_input.a)) | vec3<u32>(u_input.a, u_input.a, 2069u)) ^ vec3<u32>(firstLeadingBit(u_input.a), ~u_input.a, abs(u_input.a & u_input.a)));
    let var_1 = ~(-reverseBits(-min(vec3<i32>(1i, -1i, 16281i), vec3<i32>(1i, -47917i, 0i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-256f, -275f) + vec2<f32>(640f, -303f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-653f, 500f), vec2<f32>(2203f, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1048f, 1685f) - vec2<f32>(-172f, -218f)) - vec2<f32>(-1094f, 240f)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)))));
    var var_3 = _wgslsmith_mult_u32(0u, ~(~(~u_input.a)));
    var var_4 = -min(var_1.x, _wgslsmith_mod_i32(abs(-38148i) << (u_input.a % 32u), var_1.x));
    let var_5 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, var_2.x, -544f))), vec3<f32>(-1592f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(var_2.x, 1204f))))), vec3<f32>(-1000f, 610f, _wgslsmith_f_op_f32(func_4(true, func_2(vec3<f32>(318f, 105f, var_2.x))))), vec3<bool>(true, false, true)))));
    let var_6 = Struct_1(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -820f), var_2.x))), min(~(-vec2<i32>(2147483647i, -15114i)), vec2<i32>(var_1.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(-289i, -1i), 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.b))), ~(firstLeadingBit(var_0) >> (countOneBits(vec3<u32>(u_input.a, var_0.x, 64890u)) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(104624u, _wgslsmith_mod_u32(var_0.x, 1u), ~var_0.x), ~max(var_0, vec3<u32>(0u, u_input.a, u_input.a))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-var_5.xz));
}

