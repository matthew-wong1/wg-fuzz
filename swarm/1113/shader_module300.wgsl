struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(1559f, 127f), vec2<f32>(-367f, 1000f), vec2<f32>(-507f, -386f), vec2<f32>(-317f, 2212f), vec2<f32>(1338f, -943f), vec2<f32>(-1400f, -477f), vec2<f32>(-1000f, 864f), vec2<f32>(1257f, -1197f), vec2<f32>(135f, 1209f), vec2<f32>(-1000f, -768f), vec2<f32>(-752f, 777f), vec2<f32>(2184f, -632f), vec2<f32>(1000f, -809f), vec2<f32>(1000f, 489f), vec2<f32>(-377f, -437f), vec2<f32>(1000f, 216f), vec2<f32>(247f, 132f), vec2<f32>(394f, -1367f), vec2<f32>(809f, 381f), vec2<f32>(-900f, -609f), vec2<f32>(2860f, 299f), vec2<f32>(-493f, 605f), vec2<f32>(-319f, -102f), vec2<f32>(-1383f, -1000f));

var<private> global1: array<vec2<u32>, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1922f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(184f, _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-164f + _wgslsmith_f_op_f32(ceil(874f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1046f, -643f)), _wgslsmith_f_op_f32(417f + -906f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2293f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1244f, -716f)))), _wgslsmith_f_op_f32(366f - _wgslsmith_f_op_f32(f32(-1f) * -2189f))));
    let var_1 = Struct_1(~min(abs(reverseBits(48511i)), ~u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~u_input.c), min(~u_input.c, u_input.c), u_input.c, ~u_input.a.x ^ (0u | u_input.a.x)), abs(~vec4<u32>(4294967295u, 59890u, 4294967295u, u_input.a.x))), 1i);
    let var_2 = Struct_4(-u_input.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, var_0.x)))))), _wgslsmith_sub_vec4_i32(vec4<i32>(~var_1.a, u_input.d, _wgslsmith_div_i32(reverseBits(var_1.c), _wgslsmith_add_i32(53657i, 71090i)), _wgslsmith_dot_vec2_i32(vec2<i32>(22001i, -24866i), vec2<i32>(u_input.b, var_1.a)) << (~45692u % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_1.a, u_input.b), vec3<i32>(-29356i, u_input.b, -4185i)), ~var_1.c, _wgslsmith_mult_i32(var_1.c, 24322i)), ~abs(vec4<i32>(-30505i, u_input.d, 50683i, -762i)), -vec4<i32>(u_input.d, u_input.d, 2147483647i, 2147483647i) ^ (vec4<i32>(var_1.c, -1i, 1i, -2147483647i) & vec4<i32>(1i, var_1.c, -49490i, u_input.d)))), Struct_2(Struct_1(-53541i, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.b, 0u, var_1.b), firstTrailingBit(vec3<u32>(u_input.c, 32836u, var_1.b))), u_input.b), var_0), vec3<bool>(var_1.c != _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, -2250i), vec3<i32>(-32837i, 0i, u_input.d)), var_1.a), true, false));
    var var_3 = Struct_4(_wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d), vec2<i32>(-19616i, 7236i)), var_2.d.a.a), var_2.c.zy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-116f, var_0.x) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1858f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 789f), global0[_wgslsmith_index_u32(6076u, 24u)], true)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(-1197f + _wgslsmith_f_op_f32(round(var_0.x))))), max(vec4<i32>(_wgslsmith_clamp_i32(~u_input.d, i32(-1i) * -22326i, 1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.a, 0i), 1i), -11424i, -69412i), vec4<i32>(_wgslsmith_div_i32(var_2.a, select(var_2.d.a.c, 0i, true)), 56509i, ~(~var_1.c), firstTrailingBit(0i))), var_2.d, vec3<bool>(-1i <= u_input.d, !((i32(-1i) * -14672i) >= (var_1.a & -2147483647i)), false));
    let var_4 = Struct_3(_wgslsmith_add_vec3_i32(-vec3<i32>(~var_2.c.x, min(u_input.d, var_1.a), var_2.d.a.a), abs(abs(min(vec3<i32>(var_2.d.a.a, -2147483647i, var_3.d.a.a), vec3<i32>(var_1.c, -45772i, -4431i))))), var_3.d.a, var_2.d);
    return vec2<bool>(var_3.e.x, true);
}

fn func_2(arg_0: Struct_1) -> Struct_5 {
    let var_0 = _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(4294967295u & arg_0.b, countOneBits(~(~arg_0.b))), u_input.c);
    var var_1 = select(select(func_3(), !func_3(), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, false, false), all(vec3<bool>(true, false, true)))), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var_1 = vec2<bool>(true, select(!all(vec4<bool>(var_1.x, var_1.x, false, true)) | var_1.x, var_1.x, var_1.x));
    var var_2 = Struct_2(arg_0, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -414f) * -401f))), -875f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-3034f)))));
    var_2 = Struct_2(Struct_1(_wgslsmith_mod_i32(firstLeadingBit(arg_0.c), arg_0.a), min(arg_0.b | arg_0.b, u_input.c) ^ ~(~1u), 47637i), var_2.b);
    return Struct_5(Struct_4(arg_0.a, global0[_wgslsmith_index_u32(1u, 24u)], vec4<i32>(firstTrailingBit(firstLeadingBit(var_2.a.a)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(-1i, arg_0.a))), abs(~arg_0.c), max(arg_0.c, 2147483647i) ^ arg_0.a), Struct_2(Struct_1(u_input.d, countOneBits(25267u), _wgslsmith_mult_i32(u_input.d, var_2.a.c)), vec3<f32>(-1413f, _wgslsmith_f_op_f32(min(-1419f, var_2.b.x)), _wgslsmith_f_op_f32(max(var_2.b.x, var_2.b.x)))), select(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, false, true)), select(select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x)), !vec3<bool>(false, var_1.x, false), !var_1.x), select(!vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(var_1.x, false, var_1.x), select(false, true, var_1.x)))), true);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>) -> u32 {
    let var_0 = true;
    let var_1 = Struct_3(firstLeadingBit(countOneBits(vec3<i32>(-1i, u_input.d ^ u_input.d, _wgslsmith_dot_vec2_i32(arg_0.a.c.zw, vec2<i32>(-2147483647i, u_input.b))))), Struct_1(arg_0.a.d.a.a, abs(func_2(arg_0.a.d.a).a.d.a.b), ~(~select(39326i, 32971i, false))), Struct_2(arg_0.a.d.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.d.b))));
    let var_2 = func_2(arg_0.a.d.a).a;
    global1 = array<vec2<u32>, 17>();
    let var_3 = Struct_2(Struct_1(-32735i, func_2(func_2(func_2(Struct_1(u_input.b, 76821u, -30844i)).a.d.a).a.d.a).a.d.a.b, _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(arg_0.a.d.a.c), var_1.b.a, _wgslsmith_dot_vec2_i32(var_1.a.xy, arg_0.a.c.yy), ~0i), vec4<i32>(16895i, -27853i, -arg_0.a.c.x, var_2.c.x))), vec3<f32>(-1866f, 731f, _wgslsmith_f_op_f32(max(arg_0.a.d.b.x, var_1.c.b.x))));
    return u_input.c;
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = -1289f;
    var var_1 = Struct_2(Struct_1(-select(arg_0.x, -1i, select(true, false, true)), ~arg_2, arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-877f, 253f, 295f)) - vec3<f32>(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0))));
    global1 = array<vec2<u32>, 17>();
    let var_2 = func_2(func_2(func_2(var_1.a).a.d.a).a.d.a).a;
    let var_3 = var_2.d.a;
    return ~arg_3;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_2.c.b)));
    global1 = array<vec2<u32>, 17>();
    let var_1 = func_5(select(arg_3.c, vec4<i32>(~abs(arg_2.c.a.a), _wgslsmith_sub_i32(-arg_3.c.x, 2147483647i), (-1i | u_input.b) ^ arg_0.a.x, -11904i), arg_3.e.x), _wgslsmith_dot_vec2_i32(arg_3.c.wx, vec2<i32>(arg_2.c.a.c, u_input.b)), func_4(func_2(arg_0.b), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 1000f, _wgslsmith_f_op_f32(-arg_2.c.b.x), _wgslsmith_f_op_f32(-arg_2.c.b.x))))), u_input.c);
    let var_2 = arg_2.c;
    var var_3 = vec4<bool>(arg_3.d.a.b > func_5(arg_3.c, select(~(-1i), _wgslsmith_add_i32(8001i, -68941i), arg_3.e.x), countOneBits(_wgslsmith_add_u32(47312u, arg_0.c.a.b)), func_2(Struct_1(u_input.b, 1u, 46967i)).a.d.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.c.b.x))), _wgslsmith_mod_i32(~(-1i), arg_2.a.x) > (_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.c, -1i, -25480i, arg_0.b.c), vec4<i32>(arg_3.d.a.c, -33280i, -1905i, 0i)) & -64947i), any(select(!arg_3.e.xz, select(arg_3.e.xy, select(arg_3.e.yx, arg_3.e.zx, arg_3.e.x), arg_3.e.x), true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -140f), -229f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x + arg_0.c.b.x)), arg_2.c.b.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(867f + 646f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<i32>(32545i, u_input.d, 0i), Struct_1(0i, 1u, u_input.d), Struct_2(Struct_1(2147483647i, u_input.a.x, 1340i), vec3<f32>(1702f, -806f, 1236f))), 14427u, Struct_3(vec3<i32>(12439i, u_input.d, 19170i), Struct_1(1i, u_input.c, 2147483647i), Struct_2(Struct_1(u_input.d, 4294967295u, u_input.d), vec3<f32>(-594f, -524f, -183f))), Struct_4(-2147483647i, global0[_wgslsmith_index_u32(u_input.c, 24u)], vec4<i32>(-2147483647i, u_input.d, u_input.d, 10520i), Struct_2(Struct_1(u_input.d, u_input.a.x, u_input.b), vec3<f32>(-852f, 1012f, -531f)), vec3<bool>(true, false, false)))) + _wgslsmith_f_op_f32(-1289f + -1116f))))) + 557f);
    global1 = array<vec2<u32>, 17>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(540f + -125f)))), (0u >> (_wgslsmith_div_u32(u_input.a.x, u_input.c) % 32u)) > (~10376u | _wgslsmith_mod_u32(u_input.a.x, 4294967295u)))));
    var var_1 = !vec4<bool>(!(-u_input.d >= countOneBits(-2147483647i)), 1f > _wgslsmith_f_op_f32(trunc(2605f)), true, true);
    let var_2 = ~(~11893i);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(1658f, _wgslsmith_f_op_f32(sign(2413f))), _wgslsmith_f_op_f32(1507f * 394f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1520f, 704f)))), vec3<f32>(func_2(Struct_1(u_input.d, u_input.a.x, 2147483647i)).a.b.x, 1022f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f - -415f) * func_2(Struct_1(u_input.b, u_input.a.x, 22498i)).a.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(141f, 291f, -181f) * vec3<f32>(-2479f, -1208f, -1070f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1157f, 610f, 1133f), vec3<f32>(634f, -1000f, -807f))) * vec3<f32>(-1376f, 1390f, -137f)))));
    var_0 = 1f;
    var var_4 = Struct_1(~(~((14733i & var_2) & 1i)), abs(1u), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c, 112472u), countOneBits(0u)), ~var_4.b), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), vec2<u32>(u_input.c, 8514u)) & _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_4.b, 4294967295u), ~var_4.b), u_input.a.x, 0u), firstTrailingBit(~firstLeadingBit(82143u)));
}

