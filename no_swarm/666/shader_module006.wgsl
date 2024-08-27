struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(true, true, vec2<i32>(-1i, -16441i)), Struct_1(true, true, vec2<i32>(14881i, -16909i)), Struct_1(false, true, vec2<i32>(5386i, -10790i)), Struct_1(false, false, vec2<i32>(-1i, i32(-2147483648))), Struct_1(true, true, vec2<i32>(27167i, 1i)), Struct_1(false, false, vec2<i32>(54253i, 3729i)), Struct_1(true, false, vec2<i32>(-65634i, 1786i)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 7>();
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = select(0u, 1u, !all(!vec3<bool>(var_0.x, true, var_0.x))) | _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b.zz), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(61436u, 4294967295u, u_input.a.x, 4047u), ~vec4<u32>(10851u, 0u, 17497u, 29847u)), u_input.a.x));
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(559f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -898f))), _wgslsmith_f_op_f32(f32(-1f) * -704f)))) * _wgslsmith_f_op_f32(-815f - _wgslsmith_f_op_f32(floor(-356f))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> vec2<i32> {
    global0 = array<Struct_1, 7>();
    let var_0 = 2147483647i;
    var var_1 = -412f;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3())));
    let var_2 = select(!select(vec3<bool>(arg_1.x && false, arg_1.x, any(arg_1.zzx)), vec3<bool>(var_0 > -1i, true, arg_1.x), true), select(arg_1.xzz, !select(arg_1.yyy, !arg_1.yyw, -9723i != var_0), !arg_1.zxy), select(vec3<bool>(true, arg_0, _wgslsmith_div_f32(arg_2, 1027f) != _wgslsmith_f_op_f32(max(arg_2, arg_2))), arg_1.zzz, !((arg_1.x != arg_0) & arg_0)));
    return ~min(vec2<i32>(1i, var_0 & var_0), vec2<i32>(max(var_0, _wgslsmith_mult_i32(var_0, 23660i)), -10940i));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = Struct_3(1f, -2147483647i, any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f) + 1f), _wgslsmith_f_op_f32(trunc(-1348f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1796f + -825f) * _wgslsmith_f_op_f32(670f + -762f)))));
    let var_1 = func_2(!var_0.c, !(!select(!vec4<bool>(false, var_0.c, var_0.c, false), vec4<bool>(arg_1, var_0.c, arg_1, false), select(arg_1, false, false))), -653f);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(var_0.a))))), -357f));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.d.x)))))) - _wgslsmith_f_op_f32(-var_0.d.x)), arg_0, arg_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.d, vec4<f32>(var_0.a, -1052f, var_0.a, -716f), var_0.c))) * var_0.d), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.d))), _wgslsmith_f_op_vec4_f32(exp2(var_0.d)))), any(vec2<bool>(var_0.c, false)) || (!arg_1 | (u_input.a.x < u_input.a.x)))));
    let var_4 = Struct_1(true & (_wgslsmith_f_op_f32(min(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -157f))) > 2736f), false, _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(0i, -11916i), vec2<i32>(1i, var_0.b), var_3.c) & -vec2<i32>(-1i, 18404i), vec2<i32>(~var_3.b, _wgslsmith_sub_i32(2147483647i, 2147483647i))), var_1, var_1));
    return vec3<u32>(arg_2.x, _wgslsmith_add_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, arg_2.x, u_input.a.x), vec4<u32>(arg_2.x, u_input.a.x, arg_2.x, 4294967295u))), ~select(min(arg_2.x, u_input.b.x), arg_2.x & 14834u, !var_0.c)), min(arg_2.x, _wgslsmith_mult_u32(arg_2.x, 64606u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-72481i, -65466i, -2147483647i, 1561i), vec4<i32>(-1i, -56926i, 61985i, -14961i)), true, vec3<u32>(u_input.b.x, 97101u, u_input.b.x)), _wgslsmith_mult_vec3_u32(u_input.a, min(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(66874u, 4788u, u_input.a.x)))), vec3<u32>(max(4294967295u, 4294967295u) | _wgslsmith_mod_u32(3708u, select(32265u, u_input.a.x, true)), 59581u, _wgslsmith_mod_u32(max(~u_input.b.x, u_input.b.x), u_input.b.x)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2280f)) - 1087f))), 1i, true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1010f, -519f, -1000f, -726f), vec4<f32>(1148f, 153f, -308f, -1114f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1610f, -1650f, -1913f, -749f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(var_1.d.zxx));
    let var_3 = Struct_4(_wgslsmith_mod_vec4_i32(-max(max(vec4<i32>(0i, 8668i, var_1.b, var_1.b), vec4<i32>(-64524i, 2147483647i, -8191i, -2147483647i)), vec4<i32>(1i, 1i, 0i, var_1.b)), ~max(~vec4<i32>(-47284i, 1i, var_1.b, var_1.b), vec4<i32>(2147483647i, var_1.b, var_1.b, var_1.b))), reverseBits(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_1.b, var_1.b, var_1.b, var_1.b)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, var_0.x), vec4<u32>(664u, u_input.b.x, var_0.x, 36040u), vec4<u32>(0u, u_input.b.x, var_0.x, u_input.b.x)) % vec4<u32>(32u)), (vec4<i32>(var_1.b, var_1.b, var_1.b, -1479i) & vec4<i32>(-1i, 1i, -2147483647i, var_1.b)) & (vec4<i32>(-21170i, -6819i, var_1.b, var_1.b) & vec4<i32>(var_1.b, -53786i, 25120i, -1i)))), vec2<u32>(select(u_input.b.x, ~min(var_0.x, var_0.x), all(!vec2<bool>(var_1.c, false))), abs(u_input.b.x)), ~select(2147483647i, -_wgslsmith_add_i32(-1i, -1i), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(var_1.d, var_1.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.d)) * vec4<f32>(_wgslsmith_div_f32(var_1.a, var_2.x), _wgslsmith_f_op_f32(min(-1796f, -1000f)), -434f, -1023f)), vec4<bool>(any(vec3<bool>(false, false, var_1.c)), 114643u == _wgslsmith_sub_u32(var_0.x, var_0.x), true, !select(false, false, var_1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b | var_3.d, vec3<u32>(func_1(~_wgslsmith_dot_vec3_i32(var_3.a.wzx, vec3<i32>(-1i, var_1.b, -2147483647i)), any(vec4<bool>(false, true, false, false)), ~reverseBits(vec3<u32>(38561u, var_3.c.x, var_3.c.x))).x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(96294u, u_input.b.x, 1u, 0u), vec4<u32>(0u, 0u, var_3.c.x, 30224u)), min(vec4<u32>(4294967295u, 7832u, var_0.x, 0u), vec4<u32>(22538u, var_3.c.x, 36107u, var_0.x))), ~(vec4<u32>(64500u, u_input.b.x, var_3.c.x, 4294967295u) & vec4<u32>(7908u, u_input.b.x, 1u, var_0.x))), max(1u << (select(var_3.c.x, 1u, var_1.c) % 32u), ~u_input.b.x)), var_1.d.x, vec3<i32>(var_1.b, -22461i, var_1.b));
}

