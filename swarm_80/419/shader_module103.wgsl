struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.e) + arg_3.e), _wgslsmith_f_op_f32(979f * -1575f), 135f) - arg_1.c.xww), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.c.yyw)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_3.e, _wgslsmith_f_op_f32(-arg_3.e))), _wgslsmith_f_op_f32(116f * -233f));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_3(~arg_2.x, Struct_1(-2147483647i & _wgslsmith_sub_i32(countOneBits(u_input.a.x), ~u_input.c.x), countOneBits(~arg_2.yw), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 236f, -694f, -792f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(795f, -323f, -162f, 621f)), arg_0.x)))), vec3<bool>(true, true, arg_0.x), -274f), Struct_2(Struct_1(arg_1.x, arg_2.xz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2181f, 1663f, 623f, 1430f)))), vec3<bool>(arg_2.x < 0u, !arg_0.x, arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(-321f, -614f, 1000f, 993f), Struct_1(arg_1.x, arg_2.yy, vec4<f32>(677f, -236f, 1679f, 777f), arg_0.zwy, 1000f), -1102f, Struct_1(u_input.c.x, vec2<u32>(arg_2.x, arg_2.x), vec4<f32>(-914f, -348f, 1999f, -230f), arg_0.zwz, 306f))))), u_input.b, vec2<u32>(max(arg_2.x | 40836u, arg_2.x), 4294967295u), Struct_1(~u_input.c.x, vec2<u32>(arg_2.x, ~arg_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(656f, 1313f, -288f, -1556f))), vec3<bool>(arg_0.x, true, true), _wgslsmith_f_op_f32(-1110f * 230f)), arg_3.x), Struct_1(reverseBits(i32(-1i) * -11456i), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.zy, ~vec2<u32>(arg_2.x, 1u)), arg_2.xy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(316f, 424f, -758f, 2088f), vec4<f32>(-724f, -395f, -213f, -844f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2400f, 1183f, 658f, 195f), vec4<f32>(-1328f, -293f, 261f, -750f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-284f, -1009f, 101f, 1164f), vec4<f32>(-292f, -1837f, -312f, 1032f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1200f, 220f, -229f, -168f) - vec4<f32>(1599f, 108f, 1110f, 279f))))), vec3<bool>(arg_0.x && true, false, !all(vec3<bool>(false, arg_0.x, arg_3.x))), _wgslsmith_f_op_f32(2229f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1096f, 1000f))))));
    var_0 = Struct_3(24714u, Struct_1(arg_1.x ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1.x), vec2<i32>(var_0.d.a, arg_1.x)), u_input.c.x >> (arg_2.x % 32u)), vec2<u32>(~1u, arg_2.x) ^ countOneBits(~vec2<u32>(25437u, 0u)), var_0.c.a.c, arg_3, var_0.d.e), var_0.c, var_0.c.d);
    var_0 = Struct_3(arg_2.x, var_0.c.a, Struct_2(Struct_1(u_input.a.x, var_0.c.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b.c, var_0.d.c)), select(!vec3<bool>(arg_0.x, true, false), arg_3, false), var_0.b.c.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(~arg_1.x, arg_1.x), 28339i), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_0.a, arg_2.x) | vec2<u32>(var_0.d.b.x, arg_2.x), _wgslsmith_add_vec2_u32(vec2<u32>(80674u, 59976u), var_0.d.b), arg_0.x), ~var_0.d.b, var_0.c.c), var_0.d, true), Struct_1(-var_0.c.b >> (3682u % 32u), max(_wgslsmith_mod_vec2_u32(var_0.d.b, ~var_0.d.b), arg_2.yz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d.c.x, var_0.c.a.e, -924f, -1370f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1093f, var_0.d.c.x, var_0.d.e, var_0.c.d.c.x)), _wgslsmith_f_op_vec4_f32(ceil(var_0.b.c)))), !arg_3, var_0.d.c.x));
    var_0 = Struct_3(arg_2.x, var_0.d, var_0.c, var_0.d);
    let var_1 = Struct_3(~reverseBits(~4294967295u), Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-29794i, u_input.a.x, 2147483647i) >> (arg_2.xyx % vec3<u32>(32u))), u_input.a.zzy), _wgslsmith_div_vec2_u32(vec2<u32>(32946u, 4294967295u) | vec2<u32>(arg_2.x, arg_2.x), ~vec2<u32>(var_0.d.b.x, var_0.d.b.x) & _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.x, var_0.d.b.x), arg_2.xz)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.d.c) - var_0.c.d.c))), vec3<bool>(!var_0.b.d.x, false, arg_3.x), 2278f), Struct_2(Struct_1(var_0.b.a, vec2<u32>(_wgslsmith_dot_vec4_u32(arg_2, arg_2), arg_2.x << (64330u % 32u)), var_0.c.a.c, select(select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.d.d.x, false), true), arg_0.zxz, !arg_3), var_0.c.a.c.x), arg_1.x, vec2<u32>(1u, abs(0u)), var_0.c.d, min(~23968u, arg_2.x) != var_0.b.b.x), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zy, arg_1.yx), -arg_1.x, var_0.b.a, min(u_input.c.x, var_0.b.a)), u_input.c), ~min(~var_0.d.b, ~var_0.c.d.b), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(var_0.c.a.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-518f, var_0.b.c.x, var_0.b.e, -897f)), vec4<f32>(var_0.c.a.e, -1762f, -1000f, -1894f)))), !var_0.d.d, _wgslsmith_f_op_f32(286f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c.x) - 870f))));
    return 1029f;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(957f + _wgslsmith_f_op_f32(floor(904f))), 755f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f - -145f)) + _wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true), _wgslsmith_mult_vec3_i32(u_input.a.yyx, vec3<i32>(-21961i, 7180i, 8354i)), ~vec4<u32>(50345u, 53221u, 5336u, 6487u), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-911f, -313f, 629f), vec3<f32>(1109f, 765f, -305f), vec3<bool>(true, false, true))) * vec3<f32>(-1462f, -618f, -1000f)))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, -541f, -1000f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(831f, 1139f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(648f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-394f, var_0.x, -608f), vec3<f32>(560f, var_0.x, var_0.x)))))));
    let var_1 = true;
    var_0 = vec3<f32>(var_0.x, var_0.x, var_0.x);
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-632f, var_0.x, _wgslsmith_f_op_f32(sign(-274f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -445f, -2745f) + vec3<f32>(401f, var_0.x, -563f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1320f), vec3<f32>(712f, 873f, -3036f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x, 1000f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-556f, 878f, var_0.x)))))))), select(vec3<bool>(any(vec3<bool>(true, true, false)), !any(vec3<bool>(true, var_1, true)), all(select(vec3<bool>(var_1, var_1, false), vec3<bool>(false, var_1, true), false))), !select(vec3<bool>(false, var_1, true), vec3<bool>(var_1, true, var_1), !vec3<bool>(false, var_1, var_1)), select(select(vec3<bool>(true, true, var_1), !vec3<bool>(false, var_1, true), select(vec3<bool>(true, true, var_1), vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, true, var_1))), select(vec3<bool>(true, false, var_1), !vec3<bool>(var_1, false, var_1), vec3<bool>(true, var_1, true)), vec3<bool>(var_1, !var_1, all(vec2<bool>(var_1, false)))))));
    return ~20310u;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    let var_0 = vec3<bool>(true, arg_2.a.d.x | true, any(arg_2.d.d));
    var var_1 = arg_1;
    var_1 = Struct_3(max(4294967295u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2.a.b.x, 4294967295u), vec3<u32>(arg_0, arg_1.a, 39336u)), ~vec3<u32>(13569u, arg_2.d.b.x, 11414u)) % 32u), ~(1u & ~var_1.a)), Struct_1(arg_2.d.a, arg_2.d.b, var_1.b.c, vec3<bool>(!var_0.x, any(vec3<bool>(var_0.x, false, true)), !any(var_0)), 173f), var_1.c, var_1.b);
    var_1 = arg_1;
    var_1 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~max(func_1(), 0u) & 1u, Struct_3(~_wgslsmith_mult_u32(firstTrailingBit(22069u), 23676u), Struct_1(~(u_input.b ^ 1479i), ~firstTrailingBit(vec2<u32>(27018u, 4294967295u)), vec4<f32>(1f, 1f, 1f, 1f), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(503f, 523f, 418f, -1043f), Struct_1(14466i, vec2<u32>(16545u, 5394u), vec4<f32>(-1248f, 232f, 510f, -1255f), vec3<bool>(false, true, false), 1106f), -1000f, Struct_1(u_input.a.x, vec2<u32>(6277u, 26515u), vec4<f32>(1000f, 1867f, -757f, 1000f), vec3<bool>(true, true, true), -617f))))), Struct_2(Struct_1(1787i, _wgslsmith_add_vec2_u32(vec2<u32>(32689u, 0u), vec2<u32>(0u, 70250u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(180f, 479f, 2078f, 1501f))), vec3<bool>(true, false, false), -1213f), 1i, ~vec2<u32>(1u, 1u), Struct_1(_wgslsmith_div_i32(-23454i, -2147483647i), ~vec2<u32>(1u, 3969u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1969f, 1916f, -1061f, 252f)), vec3<bool>(false, false, true), -1226f), true), Struct_1(1i, ~countOneBits(vec2<u32>(0u, 6175u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-686f, 395f, -1164f, -1000f)))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(799f - -1143f))), Struct_2(Struct_1(i32(-1i) * -2147483647i, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(102993u, 19733u)), vec2<u32>(4294967295u, 1u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -170f, -279f, 254f)))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(step(2346f, 957f))), -u_input.c.x, vec2<u32>(1u, 1u), Struct_1(u_input.b & _wgslsmith_mod_i32(u_input.c.x, 1i), vec2<u32>(56041u, 4675u), _wgslsmith_f_op_vec4_f32(vec4<f32>(178f, 793f, -262f, -142f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(614f, 1938f, 895f, 653f))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-391f - -1000f), _wgslsmith_div_f32(1000f, 1716f)))), true));
    var var_1 = var_0.c;
    let var_2 = var_0.c;
    var_1 = func_4(~(~var_1.d.b.x), var_0, var_2).c;
    let var_3 = 0i;
    var_1 = var_0.c;
    let var_4 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(max(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_4.b.x, var_1.d.b.x, 64541u), vec3<u32>(40500u, 1u, var_0.d.b.x))), ~firstTrailingBit(vec3<u32>(var_0.b.b.x, 30247u, 4294967295u))), ~firstLeadingBit(countOneBits(vec3<u32>(0u, var_2.a.b.x, 1u)))), ~0u, _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.c.x, 0u, 1u), vec3<u32>(4294967295u, 1u, var_2.a.b.x), vec3<u32>(var_4.b.x, 121944u, var_0.a)), vec3<u32>(func_4(1u, Struct_3(4294967295u, var_4, Struct_2(var_2.d, var_0.d.a, vec2<u32>(var_2.a.b.x, 4294967295u), var_0.c.a, var_0.d.d.x), var_1.d), Struct_2(Struct_1(2147483647i, var_0.b.b, var_2.d.c, var_4.d, var_1.a.c.x), var_0.b.a, vec2<u32>(var_4.b.x, var_0.d.b.x), Struct_1(u_input.a.x, vec2<u32>(90685u, var_0.d.b.x), vec4<f32>(-1259f, -316f, var_0.b.e, var_2.d.c.x), vec3<bool>(true, var_1.d.d.x, true), 775f), false)).a, 41635u, 0u ^ var_1.d.b.x), min(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(var_0.b.b.x, var_0.a, 4294967295u)), vec3<u32>(var_4.b.x, 57956u, 4294967295u) | vec3<u32>(var_0.d.b.x, 0u, var_0.b.b.x))), ~(min(vec3<u32>(10937u, 7008u, var_2.a.b.x), vec3<u32>(var_2.a.b.x, var_1.d.b.x, 23580u)) | vec3<u32>(12121u, var_1.d.b.x, 0u))), -(vec2<i32>(-1i) * -u_input.a.wy), 3426u | reverseBits(~var_2.d.b.x));
}

