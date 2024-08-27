struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = firstLeadingBit(-17435i);
    let var_1 = all(!select(vec3<bool>(true, arg_3.x, 1u != arg_2.a), !(!vec3<bool>(arg_3.x, true, false)), all(vec3<bool>(false, true, arg_3.x))));
    let var_2 = Struct_3(Struct_1(select(82374u ^ arg_2.b, u_input.c, arg_3.x) >> (1u % 32u), arg_2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.zx, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a, 242f)))))) * vec2<f32>(-360f, 1865f)));
    let var_3 = _wgslsmith_dot_vec2_i32(min(-vec2<i32>(-2147483647i, u_input.a ^ 80447i), vec2<i32>(u_input.a, ~u_input.a)), min(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a))) ^ vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i)), i32(-1i) * -2108i), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -9215i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(0i, -2147483647i)))));
    let var_4 = Struct_1(_wgslsmith_dot_vec4_u32(~max(reverseBits(u_input.b), firstLeadingBit(vec4<u32>(11770u, 0u, 2024u, var_2.a.b))), ~u_input.b), 1u | u_input.b.x);
    return arg_3.x;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = vec2<bool>(any(select(vec4<bool>(false, func_3(Struct_4(arg_1.b.x, vec3<u32>(43063u, u_input.b.x, 0u), arg_1.a, 80724u), vec4<f32>(1206f, arg_1.b.x, arg_1.b.x, 356f), Struct_1(1u, 4294967295u), vec2<bool>(true, false)), true, false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)))), !any(vec2<bool>(true, true)));
    var var_1 = ~u_input.b.x;
    let var_2 = arg_1.a;
    let var_3 = select(vec4<bool>(all(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), true), select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), all(var_0), var_0.x, false), !(!vec4<bool>(true, var_0.x | var_0.x, var_0.x, true)), select(select(select(!vec4<bool>(false, var_0.x, true, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, false, false)), var_0.x), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, true)), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), false), false), vec4<bool>(!var_0.x, any(vec2<bool>(var_0.x, var_0.x)), !var_0.x, !var_0.x), vec4<bool>(all(vec3<bool>(var_0.x, false, true)), u_input.a <= -2147483647i, true, true)), !(!(!vec4<bool>(true, true, var_0.x, var_0.x)))));
    var_1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(~1u, firstLeadingBit(min(0u | arg_1.a.a, arg_1.a.a))), min(abs(~_wgslsmith_add_u32(arg_1.a.b, 26497u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, countOneBits(0u)), ~vec2<u32>(1u, 0u))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1552f, 1420f, -1019f, arg_1.b.x), vec4<f32>(-2376f, -263f, -751f, arg_1.b.x)))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(select(arg_1.b.x, arg_1.b.x, true)), _wgslsmith_div_f32(1000f, 1635f), _wgslsmith_f_op_f32(max(536f, -1620f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, 1354f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, 1000f, -495f, arg_1.b.x), vec4<f32>(arg_1.b.x, -1778f, arg_1.b.x, 394f)))))), any(vec2<bool>(!var_0.x, !var_0.x)) && var_0.x));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> i32 {
    let var_0 = any(vec4<bool>(arg_0, false, !all(!vec4<bool>(arg_0, false, true, arg_0)), arg_0));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 667f, -1000f) + vec4<f32>(1690f, arg_2, arg_2, arg_2)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-907f, arg_2, -1200f, 718f), vec4<f32>(arg_2, arg_2, 382f, 540f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1216f, arg_2, -1582f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.a, Struct_3(Struct_1(1u, 65247u), vec2<f32>(-1023f, 1467f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(726f, arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(-19268i, Struct_3(arg_1, vec2<f32>(-1170f, 278f)))).x), arg_2)));
    let var_2 = arg_1;
    var_1 = vec4<f32>(681f, _wgslsmith_f_op_vec4_f32(func_2(1i, Struct_3(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yw - var_1.wz))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(985f))) + var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(718f - _wgslsmith_div_f32(var_1.x, -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(626f)) + arg_2))), var_1.x);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1022f, var_1.x, 115f, 1612f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, var_1.x, var_1.x, 177f))))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1131f), 931f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec4_f32(func_2(arg_3.x, Struct_3(Struct_1(arg_1.a, u_input.b.x), vec2<f32>(-276f, -2054f)))).x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_2, 1000f, var_1.x), vec4<f32>(arg_2, 1714f, var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -831f, 2949f, arg_2)))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(select(-648f, -469f, !var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return (arg_3.x ^ _wgslsmith_add_i32(abs(2147483647i), -arg_3.x)) << (u_input.b.x % 32u);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-509f, -748f)), _wgslsmith_f_op_f32(round(-355f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(2147483647i, Struct_3(Struct_1(u_input.c, 0u), vec2<f32>(765f, -1000f)))).x)))))));
    let var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(~(~19297u), 0u), u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(1u, 1u), ~65116u, u_input.b.x << (20668u % 32u), min(0u ^ u_input.c, ~52245u)), vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(1u, u_input.b.x)), abs(80013u) >> (u_input.c % 32u), 42362u, u_input.c)));
    let var_2 = ~reverseBits(0u);
    let var_3 = firstTrailingBit(_wgslsmith_clamp_u32(1u, abs(~_wgslsmith_mult_u32(83845u, u_input.c)), (~u_input.b.x ^ var_1.a) ^ 44523u));
    var var_4 = vec2<i32>(i32(-1i) * -11416i, _wgslsmith_sub_i32(u_input.a, firstTrailingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 2871i, -38158i, arg_0.x), vec4<i32>(0i, arg_0.x, 2147483647i, u_input.a)))));
    return _wgslsmith_f_op_f32(865f * _wgslsmith_f_op_f32(-var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-firstTrailingBit(vec2<i32>(-30462i, u_input.a)), -vec4<i32>(-24694i, -50882i, -2147483647i, u_input.a) ^ (vec4<i32>(-2147483647i, u_input.a, u_input.a, -1i) << (u_input.b % vec4<u32>(32u))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_mult_i32(func_1(true, Struct_1(5933u, 14547u), -1016f, vec3<i32>(u_input.a, 0i, 0i)), u_input.a)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(f32(-1f) * -217f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(451f, _wgslsmith_f_op_f32(step(-1128f, _wgslsmith_f_op_f32(965f * -1256f)))), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -168f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_0, var_1.x, 339f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, 603f, -660f, -401f), vec4<f32>(-245f, var_1.x, 195f, var_1.x), vec4<bool>(false, false, false, true))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, 222f, var_1.x) + vec4<f32>(502f, var_1.x, var_1.x, var_0)), vec4<f32>(958f, 1000f, var_0, var_0)), !(-1262f < var_0)))), ~(~(_wgslsmith_clamp_i32(u_input.a, u_input.a, 41089i) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 6441i), vec2<i32>(u_input.a, 9331i)))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(i32(-1i) * -45590i, ~(~u_input.a), -_wgslsmith_sub_i32(u_input.a, u_input.a)), u_input.a), ~_wgslsmith_add_vec3_u32(u_input.b.wzz, vec3<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), firstTrailingBit(u_input.c), 67040u)));
}

