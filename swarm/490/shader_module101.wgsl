struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(794f, _wgslsmith_f_op_f32(f32(-1f) * -526f), all(vec4<bool>(true, false, var_0.e.x, true)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(min(arg_0.c.x, -329f)), !(1u > arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(arg_0.c.x - -572f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-924f)) + _wgslsmith_f_op_f32(f32(-1f) * -1386f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 253f));
    let var_3 = u_input.c;
    let var_4 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(arg_0.a, var_0.a), vec2<i32>(1i, arg_0.a), vec2<bool>(arg_0.e.x, arg_0.e.x))), select(select(vec2<i32>(50658i, arg_0.a), vec2<i32>(-13142i, arg_0.a), var_0.e.x), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a, 1i), vec2<i32>(-55110i, arg_0.a)), select(arg_0.e.yy, vec2<bool>(true, arg_0.e.x), true))), abs(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1716f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(897f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c), vec2<f32>(var_2.x, var_2.x), vec2<bool>(arg_0.e.x, false))) - _wgslsmith_f_op_vec2_f32(exp2(var_1.xz))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(var_1.xz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_0.c.x)))))), _wgslsmith_add_u32(_wgslsmith_sub_u32(min(u_input.a.x, ~30924u), ~0u), ~(var_3 ^ ~38928u)), select(select(select(vec3<bool>(true, false, var_0.e.x), arg_0.e, vec3<bool>(arg_0.e.x, var_0.e.x, false)), vec3<bool>(var_0.e.x, var_0.e.x & var_0.e.x, !arg_0.e.x), vec3<bool>(any(arg_0.e), arg_0.e.x, true)), !vec3<bool>(true, any(vec2<bool>(false, arg_0.e.x)), true), var_0.e.x));
    return 1693f;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> vec2<f32> {
    var var_0 = vec2<bool>(arg_0.e.x, any(vec3<bool>(any(vec3<bool>(arg_0.e.x, arg_0.e.x, arg_0.e.x)), select(arg_0.e.x, arg_0.e.x, arg_0.e.x) != !arg_0.e.x, any(select(vec3<bool>(arg_0.e.x, arg_0.e.x, arg_0.e.x), vec3<bool>(arg_0.e.x, arg_0.e.x, false), arg_0.e)))));
    var_0 = vec2<bool>(var_0.x, false);
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1462f)) * 1091f));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = ~(~(~_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_div_u32(u_input.e.x, u_input.b))));
    var_0 = ~u_input.d.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_mult_i32(2336i, arg_0.x), -480f, vec2<f32>(_wgslsmith_f_op_f32(-794f - -747f), _wgslsmith_f_op_f32(func_3(Struct_1(11325i, -1200f, vec2<f32>(216f, -201f), u_input.e.x, vec3<bool>(false, false, false)), vec2<u32>(u_input.b, 28450u)))), u_input.b, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 4891u, 1f, abs(~u_input.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(-2147483647i, -1235f, vec2<f32>(671f, -1768f), u_input.c, vec3<bool>(true, false, true)), u_input.c, 1154f, vec4<u32>(u_input.e.x, 12836u, u_input.c, 1u))).x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1994f, -978f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(760f, -1484f), vec2<f32>(487f, -133f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1368f, 473f)))), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), false)))));
    var_0 = reverseBits(u_input.e.x);
    var_0 = ~u_input.e.x;
    return Struct_1(arg_0.x, -322f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(988f - -1886f), -1413f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(-521f, var_1.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1)) - _wgslsmith_f_op_vec2_f32(func_4(Struct_1(-27449i, var_1.x, vec2<f32>(var_1.x, 1000f), u_input.a.x, vec3<bool>(true, true, false)), 0u, _wgslsmith_f_op_f32(487f * -462f), u_input.a)))), u_input.a.x & min(57210u, _wgslsmith_mod_u32(u_input.c, 23110u)), select(select(vec3<bool>(true, true, true), vec3<bool>(15163i != arg_0.x, true, true), true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), 1730f < var_1.x), vec3<bool>(all(vec2<bool>(false, false)), select(true, true, false), select(true, false, false)), true & any(vec4<bool>(false, true, true, false))), true));
}

fn func_1() -> i32 {
    let var_0 = u_input.a.wwz;
    var var_1 = func_2(-(~firstLeadingBit(vec2<i32>(2147483647i, -1i))));
    let var_2 = vec4<bool>(!var_1.e.x, false, true, true);
    let var_3 = max(abs(vec4<i32>(-1i, var_1.a, var_1.a, 31168i)), -firstLeadingBit(~(~vec4<i32>(-2147483647i, var_1.a, var_1.a, 54487i))));
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_4(func_2(-var_3.xy), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, select(vec4<u32>(26076u, 29035u, var_1.d, var_0.x), vec4<u32>(var_0.x, 0u, 4294967295u, 0u), var_2.x)), var_0.x | var_1.d, u_input.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1550f + var_1.b)) - _wgslsmith_f_op_f32(max(340f, _wgslsmith_f_op_f32(ceil(-1912f))))), ~reverseBits(~vec4<u32>(0u, u_input.c, 4294967295u, 108135u)))), vec2<f32>(632f, -745f)));
    return -var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_i32(1i, -reverseBits(func_1())), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(35603i, 1545f, vec2<f32>(-1325f, -1000f), 4294967295u, vec3<bool>(false, true, true)), 0u, -281f, u_input.a)).x * -1000f), _wgslsmith_f_op_f32(-805f + _wgslsmith_div_f32(298f, 1000f)), !all(vec4<bool>(false, false, true, false)))))), vec2<f32>(-139f, func_2(vec2<i32>(43545i << (u_input.a.x % 32u), i32(-1i) * -1i)).b), ~1u, !select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), func_2(vec2<i32>(1i, -2147483647i)).e, vec3<bool>(true, true, true)), vec3<bool>(true, select(false, true, true), false)));
    let var_1 = func_2(countOneBits(abs(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, -57607i), vec2<i32>(-6396i, -1i)))));
    let var_2 = vec2<i32>(var_1.a, -1i);
    let var_3 = u_input.a.x;
    let var_4 = any(!select(select(!var_1.e, !vec3<bool>(false, var_1.e.x, var_1.e.x), !var_0.e), !var_0.e, !func_2(var_2).e));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.d, select(_wgslsmith_div_vec3_u32(~u_input.a.yyx, _wgslsmith_div_vec3_u32(min(vec3<u32>(var_1.d, var_1.d, 4294967295u), u_input.a.zxz), ~vec3<u32>(7911u, 12024u, 0u))), firstLeadingBit(~vec3<u32>(0u, 1u, u_input.e.x)), select(select(select(vec3<bool>(false, false, var_0.e.x), vec3<bool>(var_1.e.x, false, true), var_0.e), !var_0.e, !var_0.e.x), var_0.e, !var_1.e)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(29631i, var_2.x) >> (vec2<u32>(4294967295u, var_1.d) % vec2<u32>(32u)), vec2<i32>(var_2.x, -2147483647i), var_0.e.zy), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(0i, var_0.a), vec2<i32>(-18688i, 0i)), _wgslsmith_add_vec2_i32(var_2, vec2<i32>(1i, var_1.a)), var_2)) & -(~var_2 >> ((vec2<u32>(var_3, u_input.c) << (u_input.d % vec2<u32>(32u))) % vec2<u32>(32u))));
}

