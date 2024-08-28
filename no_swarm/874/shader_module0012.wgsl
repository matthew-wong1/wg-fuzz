struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(!vec2<bool>(!any(vec4<bool>(true, true, true, false)), select(true, true, true)), Struct_2(Struct_1(-vec3<i32>(1i, 1i, 1i), vec3<f32>(_wgslsmith_f_op_f32(-1086f + 745f), -894f, -993f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1784f, -578f, -810f, 318f)))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3135f, -407f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-3005f, -681f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1778f, 428f, -845f, 1211f) - vec4<f32>(2354f, -2699f, -1759f, 558f)))))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false))), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2141f, 987f, -154f) * vec3<f32>(217f, -789f, -1219f)) - vec3<f32>(1715f, -309f, 1000f))), Struct_1(countOneBits(countOneBits(vec3<i32>(2147483647i, -62665i, 11277i))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1086f, 530f, -812f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, -1731f, 525f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-258f)), _wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(trunc(-1081f)), 645f), any(vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(-975f + 146f), 1521f))), Struct_2(Struct_1(select(firstTrailingBit(vec3<i32>(30704i, 0i, -4067i)), vec3<i32>(1i, 1i, 1i), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(479f, -142f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(min(624f, 1042f)), _wgslsmith_f_op_f32(-1000f * -128f), _wgslsmith_f_op_f32(f32(-1f) * -1804f), _wgslsmith_f_op_f32(-469f * -390f)), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(385f, -267f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1234f, -1000f, -1106f, 282f))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-474f, 1489f, 1538f))))) - vec3<f32>(_wgslsmith_f_op_f32(-1000f - -135f), -1209f, -774f)), Struct_1(firstLeadingBit(vec3<i32>(2147483647i, -36096i, 2147483647i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-399f, -473f, -375f) - vec3<f32>(-587f, 1698f, 428f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1308f, 271f, 801f) + vec4<f32>(620f, -1188f, -446f, 475f))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(981f, 1657f), vec2<f32>(1000f, -892f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 508f) * vec2<f32>(201f, 791f))))), select(!vec2<bool>(any(vec3<bool>(false, false, true)), true), vec2<bool>(all(vec2<bool>(true, true)), select(false, select(false, false, false), true)), vec2<bool>(true, true)), abs(vec2<u32>(89704u, _wgslsmith_dot_vec3_u32(vec3<u32>(10962u, 35951u, u_input.a), vec3<u32>(22341u, u_input.a, u_input.a))) & ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(0u, 78851u), vec2<u32>(u_input.a, u_input.a))));
    global0 = var_0.b.a.b.x;
    var var_1 = Struct_2(Struct_1(var_0.c.e.a | reverseBits(firstLeadingBit(var_0.c.e.a)), vec3<f32>(var_0.c.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.d.x), var_0.c.b.x), var_0.c.e.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-359f, 1504f, -179f, var_0.b.d.x), var_0.c.b))) - _wgslsmith_f_op_vec4_f32(max(var_0.c.e.c, var_0.c.e.c))), all(!vec4<bool>(var_0.d.x, false, true, var_0.b.c.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(var_0.b.b.xy, var_0.b.d.yy))))), var_0.b.a.c, vec4<bool>(var_0.d.x, false, !var_0.c.a.d, !(_wgslsmith_f_op_f32(sign(var_0.b.a.c.x)) < -863f)), var_0.c.b.xzx, var_0.c.e);
    let var_2 = var_0;
    var_1 = Struct_2(var_0.b.a, vec4<f32>(var_0.c.e.e.x, -105f, _wgslsmith_f_op_f32(select(var_1.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-816f - 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -858f)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1.e.c.x)), _wgslsmith_f_op_f32(var_2.c.d.x * 1991f))) - _wgslsmith_f_op_f32(abs(-1000f)))), vec4<bool>(-553f >= _wgslsmith_f_op_f32(var_0.b.d.x - _wgslsmith_f_op_f32(sign(-269f))), any(select(var_0.b.c.yyx, var_2.b.c.xyx, var_2.b.a.d)), true, var_1.a.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.e.b))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 426f, var_1.e.c.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(2090f, var_1.e.b.x), _wgslsmith_div_f32(var_1.b.x, var_1.e.b.x), _wgslsmith_f_op_f32(max(var_1.e.e.x, var_0.b.d.x))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.e.c.x, var_0.c.e.c.x, -578f), var_2.b.a.c.xxw))))), var_1.e);
    return _wgslsmith_f_op_f32(min(var_0.b.e.c.x, -1677f));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(func_3()));
    global0 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_0));
    let var_0 = abs(4294967295u);
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), -299f));
    return Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(-arg_2.c.wyy), arg_2.c, arg_2.d, arg_2.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(step(arg_2.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(347f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(507f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-403f, _wgslsmith_f_op_f32(floor(-1557f)))), -983f, true)))));
    let var_0 = !(any(select(vec3<bool>(arg_2.d.d, arg_1.c.e.d, arg_0.d), !arg_1.c.c.yyz, all(vec4<bool>(arg_1.a.x, arg_1.c.e.d, false, false)))) && true);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.x)) + _wgslsmith_f_op_f32(select(-582f, _wgslsmith_f_op_f32(round(arg_3.x)), var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) - -207f));
    let var_1 = _wgslsmith_f_op_f32(-arg_3.x);
    let var_2 = arg_2;
    return Struct_3(vec2<bool>(var_2.c <= arg_0.a.x, !(-1833f > _wgslsmith_f_op_f32(-arg_1.b.a.c.x))), Struct_2(arg_0, vec4<f32>(var_2.d.e.x, _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_div_f32(-482f, -1000f))), 717f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1.c.d.x))))), !vec4<bool>(true, true, all(vec3<bool>(arg_2.d.d, var_0, true)), arg_1.c.c.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.c.x, 313f, arg_3.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-502f, arg_2.d.e.x, -554f) * arg_2.d.c.yyy), vec3<bool>(-1421f != var_1, var_2.c <= arg_1.b.a.a.x, any(arg_1.c.c.wzx)))), func_2(arg_3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d.e)), func_2(_wgslsmith_f_op_f32(arg_3.x * var_1), _wgslsmith_f_op_vec2_f32(-arg_0.e), Struct_1(vec3<i32>(44738i, var_2.d.a.x, arg_2.d.a.x), arg_1.c.b.wzy, vec4<f32>(572f, arg_0.b.x, -805f, 308f), var_0, arg_0.e)))), arg_1.b, !vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -514f) < _wgslsmith_f_op_f32(floor(arg_0.e.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(var_2.a.zx, var_2.a.xz)), ~2212u), _wgslsmith_add_vec2_u32(min(arg_1.e, var_2.a.yy) | vec2<u32>(arg_2.a.x, 42569u), vec2<u32>(var_2.a.x, arg_2.a.x) & vec2<u32>(arg_1.e.x, 63253u)), vec2<u32>(_wgslsmith_mult_u32(~1u, arg_1.e.x ^ 24544u), ~1u)));
}

fn func_1() -> i32 {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(704f, 322f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f - -591f) + _wgslsmith_f_op_f32(f32(-1f) * -1056f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1150f, 1432f))))), Struct_1(~countOneBits(vec3<i32>(20394i, -1i, 20552i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-619f, 1968f, -2624f) - vec3<f32>(-1034f, -159f, 628f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-252f, 1000f, 691f, -637f) - vec4<f32>(200f, -951f, 1000f, 645f))), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(737f, 1735f), vec2<f32>(-206f, 415f), vec2<bool>(true, true))))), Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(~vec3<i32>(-24804i, 1i, 4153i), vec3<f32>(-1567f, 411f, -127f), vec4<f32>(1203f, -1650f, -1386f, 252f), true, _wgslsmith_div_vec2_f32(vec2<f32>(379f, 656f), vec2<f32>(-926f, 1729f))), vec4<f32>(-119f, _wgslsmith_f_op_f32(233f + -836f), _wgslsmith_div_f32(676f, -669f), _wgslsmith_f_op_f32(abs(-210f))), vec4<bool>(true, true, true, true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1087f - 356f)), Struct_1(~vec3<i32>(-1i, -31342i, 19905i), vec3<f32>(1574f, 264f, -1011f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(279f, -434f, -1098f, -485f)), true, vec2<f32>(916f, -1372f))), Struct_2(Struct_1(vec3<i32>(2147483647i, 17398i, -1i), vec3<f32>(-494f, 291f, 690f), vec4<f32>(-309f, 934f, 472f, -1146f), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-446f, 855f) - vec2<f32>(-300f, 556f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(139f, -1080f, 947f, 1000f) * vec4<f32>(-803f, 515f, 1292f, -117f)))), vec4<bool>(true, all(vec2<bool>(true, true)), 72590u != u_input.a, true), vec3<f32>(func_2(1546f, vec2<f32>(-1000f, -186f), Struct_1(vec3<i32>(31125i, -33389i, 1i), vec3<f32>(-2154f, -493f, -1000f), vec4<f32>(137f, -1050f, 1091f, 111f), true, vec2<f32>(-2001f, 1627f))).b.x, _wgslsmith_f_op_f32(f32(-1f) * -2036f), _wgslsmith_f_op_f32(step(130f, 605f))), Struct_1(firstTrailingBit(vec3<i32>(-16059i, 1i, 6637i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1881f, 1676f, -162f)), func_2(451f, vec2<f32>(-1446f, 290f), Struct_1(vec3<i32>(-79743i, -51558i, -2147483647i), vec3<f32>(-408f, 1822f, -669f), vec4<f32>(570f, 247f, 1000f, -926f), true, vec2<f32>(121f, 1152f))).c, select(false, false, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(178f, -513f)))), vec2<bool>(true, select(true, true, true)), reverseBits(~(~vec2<u32>(u_input.a, 4294967295u)))), Struct_4(_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(23184u, u_input.a, u_input.a)), ~vec3<u32>(0u, u_input.a, u_input.a))), ~_wgslsmith_div_u32(5980u, 88341u >> (u_input.a % 32u)), ~1i, Struct_1(vec3<i32>(1i, abs(1392i), 7014i << (0u % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(655f, 335f, 442f)), vec3<f32>(827f, -1129f, -1751f), vec3<bool>(true, false, false))), func_2(_wgslsmith_f_op_f32(1000f + 351f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(378f, 818f)), Struct_1(vec3<i32>(-2147483647i, 1i, 2147483647i), vec3<f32>(-2093f, -705f, -147f), vec4<f32>(190f, 206f, -1990f, -315f), false, vec2<f32>(950f, -1566f))).c, true, vec2<f32>(-292f, _wgslsmith_f_op_f32(-973f - -827f)))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-114f, -399f)))));
    var_0 = func_4(func_2(_wgslsmith_f_op_f32(-749f + func_4(Struct_1(vec3<i32>(2147483647i, var_0.b.e.a.x, var_0.b.e.a.x), var_0.c.b.zzz, var_0.b.e.c, var_0.d.x, var_0.c.d.xy), Struct_3(var_0.c.c.wy, var_0.b, Struct_2(var_0.b.a, vec4<f32>(var_0.b.b.x, 811f, -667f, -1008f), var_0.b.c, var_0.c.e.b, var_0.c.e), var_0.a, vec2<u32>(u_input.a, 8580u)), Struct_4(vec3<u32>(u_input.a, 44936u, var_0.e.x), 1u, var_0.b.e.a.x, Struct_1(vec3<i32>(0i, -1i, 42421i), vec3<f32>(-448f, -891f, var_0.c.b.x), vec4<f32>(var_0.c.d.x, -260f, var_0.c.a.b.x, -1222f), var_0.a.x, var_0.b.e.c.xx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b.x, var_0.c.a.c.x))).b.e.c.x), var_0.c.d.xz, func_4(func_4(var_0.c.a, func_4(var_0.b.e, Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec3<i32>(var_0.b.a.a.x, var_0.b.e.a.x, var_0.b.e.a.x), var_0.b.a.b, vec4<f32>(var_0.b.b.x, var_0.c.d.x, -427f, var_0.c.d.x), false, var_0.c.e.c.zz), vec4<f32>(1489f, 293f, var_0.b.d.x, 733f), vec4<bool>(false, true, false, true), vec3<f32>(384f, -950f, 178f), Struct_1(vec3<i32>(3775i, -4414i, 1i), vec3<f32>(var_0.c.d.x, var_0.c.d.x, var_0.b.b.x), vec4<f32>(var_0.b.a.b.x, var_0.c.a.e.x, 905f, 1629f), true, var_0.c.d.yx)), Struct_2(var_0.b.a, vec4<f32>(832f, var_0.b.e.c.x, -279f, 211f), vec4<bool>(var_0.a.x, var_0.c.e.d, false, var_0.a.x), var_0.b.e.c.yzw, Struct_1(vec3<i32>(var_0.c.a.a.x, var_0.c.e.a.x, var_0.b.a.a.x), vec3<f32>(var_0.b.d.x, var_0.b.a.c.x, var_0.c.a.e.x), vec4<f32>(-1439f, -488f, 1000f, var_0.c.a.b.x), false, vec2<f32>(var_0.b.a.e.x, var_0.c.e.c.x))), var_0.d, var_0.e), Struct_4(vec3<u32>(4294967295u, u_input.a, var_0.e.x), u_input.a, var_0.b.e.a.x, Struct_1(vec3<i32>(1i, 1i, var_0.c.e.a.x), var_0.b.b.wxz, vec4<f32>(-255f, var_0.c.b.x, var_0.b.a.c.x, -438f), false, var_0.c.a.e)), var_0.b.e.c.zx), Struct_4(vec3<u32>(4294967295u, u_input.a, 26830u), 57723u, 1i, var_0.c.a), vec2<f32>(var_0.c.a.c.x, 1000f)).c.e, func_4(func_4(var_0.b.e, Struct_3(vec2<bool>(false, var_0.a.x), var_0.b, Struct_2(Struct_1(vec3<i32>(1i, var_0.c.e.a.x, 1i), vec3<f32>(var_0.c.e.e.x, 731f, -1168f), vec4<f32>(var_0.b.a.c.x, 104f, var_0.c.e.e.x, -856f), var_0.a.x, vec2<f32>(var_0.b.d.x, -291f)), vec4<f32>(var_0.b.a.b.x, 898f, 902f, var_0.b.d.x), var_0.c.c, vec3<f32>(203f, var_0.c.a.c.x, -327f), Struct_1(var_0.c.e.a, vec3<f32>(var_0.b.e.c.x, 3179f, var_0.b.d.x), var_0.c.a.c, true, var_0.b.d.xx)), var_0.c.c.yy, vec2<u32>(34648u, 4294967295u)), Struct_4(vec3<u32>(var_0.e.x, u_input.a, var_0.e.x), 27863u, var_0.b.a.a.x, var_0.c.e), var_0.c.a.c.wy).b.e, Struct_3(vec2<bool>(false, var_0.a.x), Struct_2(Struct_1(var_0.c.e.a, var_0.b.e.c.zzx, var_0.c.b, var_0.a.x, vec2<f32>(var_0.c.b.x, var_0.b.a.c.x)), vec4<f32>(483f, 660f, var_0.c.b.x, -772f), vec4<bool>(true, false, var_0.a.x, var_0.c.c.x), vec3<f32>(-471f, var_0.c.b.x, 569f), var_0.b.e), var_0.c, vec2<bool>(true, true), vec2<u32>(var_0.e.x, var_0.e.x)), Struct_4(vec3<u32>(var_0.e.x, u_input.a, 55099u), var_0.e.x, -1i, Struct_1(var_0.b.e.a, var_0.c.a.c.xyy, vec4<f32>(var_0.c.b.x, var_0.b.d.x, var_0.b.a.e.x, var_0.c.a.b.x), var_0.c.a.d, vec2<f32>(var_0.c.b.x, -192f))), _wgslsmith_f_op_vec2_f32(select(var_0.b.a.e, vec2<f32>(928f, -1000f), var_0.b.e.d))), Struct_4(vec3<u32>(var_0.e.x, u_input.a, 9839u) ^ vec3<u32>(4294967295u, 18069u, 1u), 27976u, func_4(var_0.b.e, Struct_3(vec2<bool>(var_0.d.x, true), var_0.b, Struct_2(var_0.b.e, vec4<f32>(var_0.b.e.e.x, 1428f, var_0.b.b.x, -860f), vec4<bool>(true, true, true, var_0.b.e.d), var_0.c.a.c.zzw, Struct_1(var_0.b.a.a, vec3<f32>(var_0.c.d.x, var_0.c.a.b.x, 125f), vec4<f32>(276f, var_0.c.b.x, var_0.b.e.b.x, -429f), false, var_0.c.b.xz)), var_0.d, var_0.e), Struct_4(vec3<u32>(u_input.a, 0u, u_input.a), 9561u, -57550i, Struct_1(var_0.b.e.a, var_0.c.d, var_0.c.b, false, vec2<f32>(var_0.b.d.x, -204f))), var_0.c.a.b.zz).b.e.a.x, var_0.c.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.a.e), _wgslsmith_f_op_vec2_f32(var_0.c.a.c.xw - vec2<f32>(var_0.b.d.x, var_0.b.b.x)))).c.a), func_4(func_2(func_4(func_4(Struct_1(var_0.b.e.a, vec3<f32>(var_0.c.b.x, 677f, var_0.c.e.e.x), var_0.b.a.c, true, vec2<f32>(var_0.c.d.x, 1120f)), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(var_0.c.e.a, var_0.c.d, var_0.b.e.c, true, vec2<f32>(1275f, var_0.b.e.c.x)), vec4<f32>(var_0.c.e.b.x, var_0.b.b.x, -896f, -2036f), var_0.b.c, var_0.b.e.c.yxz, Struct_1(var_0.c.a.a, var_0.c.b.wxz, vec4<f32>(var_0.b.a.b.x, var_0.c.d.x, 672f, var_0.c.e.e.x), true, var_0.b.e.b.zy)), var_0.c, var_0.a, var_0.e), Struct_4(vec3<u32>(4294967295u, var_0.e.x, var_0.e.x), 0u, var_0.c.a.a.x, var_0.c.e), var_0.b.b.yz).b.e, Struct_3(vec2<bool>(var_0.c.a.d, var_0.b.e.d), var_0.b, Struct_2(Struct_1(var_0.c.e.a, var_0.b.d, vec4<f32>(830f, 461f, var_0.b.e.e.x, var_0.b.a.b.x), var_0.b.c.x, var_0.b.b.wx), var_0.b.b, var_0.b.c, vec3<f32>(var_0.c.e.b.x, var_0.c.b.x, -887f), Struct_1(vec3<i32>(-2147483647i, var_0.c.e.a.x, var_0.b.a.a.x), var_0.b.a.c.zxy, vec4<f32>(-668f, 1773f, 1780f, 1324f), var_0.b.e.d, var_0.b.b.xw)), vec2<bool>(var_0.c.a.d, var_0.c.e.d), var_0.e), Struct_4(vec3<u32>(u_input.a, 97800u, 72100u), 0u, var_0.b.e.a.x, var_0.b.a), var_0.b.b.xz).b.a.e.x, var_0.c.a.b.yz, Struct_1(vec3<i32>(var_0.c.e.a.x, -2147483647i, var_0.c.e.a.x), var_0.b.e.b, vec4<f32>(var_0.c.d.x, 1000f, 1230f, var_0.b.e.b.x), func_4(Struct_1(var_0.b.e.a, vec3<f32>(-421f, -1000f, 262f), vec4<f32>(var_0.c.b.x, 1000f, var_0.b.a.c.x, var_0.c.b.x), var_0.c.c.x, vec2<f32>(-1119f, 195f)), Struct_3(var_0.d, var_0.c, Struct_2(Struct_1(var_0.c.e.a, vec3<f32>(111f, var_0.b.d.x, -1000f), var_0.b.e.c, var_0.b.c.x, vec2<f32>(var_0.b.e.c.x, 1530f)), vec4<f32>(var_0.b.e.b.x, var_0.c.d.x, var_0.c.d.x, var_0.c.e.c.x), vec4<bool>(var_0.c.c.x, var_0.a.x, false, var_0.c.c.x), var_0.c.a.b, var_0.b.e), var_0.a, var_0.e), Struct_4(vec3<u32>(u_input.a, var_0.e.x, var_0.e.x), 0u, var_0.b.e.a.x, var_0.b.a), vec2<f32>(var_0.c.a.b.x, var_0.c.e.b.x)).c.a.d, _wgslsmith_f_op_vec2_f32(step(var_0.b.b.yx, vec2<f32>(var_0.b.a.e.x, 645f))))), func_4(func_2(1166f, var_0.c.b.wy, var_0.c.a), Struct_3(vec2<bool>(var_0.c.a.d, false), func_4(Struct_1(vec3<i32>(var_0.c.e.a.x, var_0.c.e.a.x, var_0.c.e.a.x), vec3<f32>(var_0.b.a.b.x, -1534f, -541f), vec4<f32>(680f, var_0.b.a.c.x, var_0.b.d.x, 501f), var_0.c.c.x, vec2<f32>(var_0.b.b.x, var_0.c.b.x)), Struct_3(vec2<bool>(var_0.c.a.d, var_0.c.c.x), Struct_2(Struct_1(vec3<i32>(var_0.c.a.a.x, var_0.c.e.a.x, var_0.c.e.a.x), vec3<f32>(-902f, 708f, var_0.c.e.b.x), vec4<f32>(var_0.b.e.c.x, var_0.c.a.c.x, -575f, var_0.c.d.x), var_0.b.a.d, vec2<f32>(var_0.c.d.x, var_0.b.e.e.x)), var_0.c.b, vec4<bool>(var_0.d.x, true, true, var_0.b.a.d), var_0.b.e.b, Struct_1(vec3<i32>(20584i, var_0.b.e.a.x, 1i), vec3<f32>(var_0.b.a.e.x, -153f, 897f), vec4<f32>(857f, -1167f, var_0.c.d.x, var_0.b.d.x), false, var_0.b.b.ww)), var_0.b, var_0.d, var_0.e), Struct_4(vec3<u32>(1u, u_input.a, var_0.e.x), u_input.a, 39637i, var_0.b.e), var_0.b.d.xy).b, Struct_2(Struct_1(var_0.b.a.a, vec3<f32>(var_0.c.e.b.x, -288f, -447f), var_0.c.b, false, var_0.b.e.c.xz), vec4<f32>(var_0.b.e.e.x, -733f, 102f, 1289f), vec4<bool>(var_0.b.e.d, true, var_0.b.e.d, var_0.d.x), vec3<f32>(-774f, 647f, var_0.c.a.b.x), Struct_1(vec3<i32>(var_0.c.e.a.x, var_0.c.e.a.x, var_0.b.e.a.x), var_0.c.d, var_0.b.a.c, true, var_0.c.d.yz)), var_0.d, var_0.e), Struct_4(~vec3<u32>(var_0.e.x, u_input.a, 1u), _wgslsmith_div_u32(u_input.a, var_0.e.x), 1i, func_2(var_0.c.e.c.x, vec2<f32>(var_0.c.b.x, var_0.c.e.e.x), var_0.b.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.d.zx - vec2<f32>(1922f, -1585f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(406f, -205f))))), Struct_4(~(~vec3<u32>(u_input.a, 3401u, var_0.e.x)), var_0.e.x, var_0.b.e.a.x, Struct_1(_wgslsmith_mod_vec3_i32(var_0.c.e.a, var_0.c.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.c.x, var_0.c.b.x, var_0.b.a.c.x)), vec4<f32>(var_0.c.e.c.x, var_0.c.d.x, 1187f, 163f), any(var_0.b.c.zww), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1525f, -379f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f * -679f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.e.e.x) - -444f))), Struct_4(_wgslsmith_add_vec3_u32(vec3<u32>(max(u_input.a, u_input.a), ~u_input.a, var_0.e.x), select(~vec3<u32>(70032u, 0u, var_0.e.x), _wgslsmith_mult_vec3_u32(vec3<u32>(33480u, var_0.e.x, u_input.a), vec3<u32>(0u, 0u, var_0.e.x)), var_0.b.c.zwx)), ~(~(~4294967295u)), ~(-1i), func_2(var_0.b.a.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.d.x, -1000f)), func_2(_wgslsmith_f_op_f32(-973f * -308f), _wgslsmith_f_op_vec2_f32(-var_0.b.a.e), func_2(var_0.b.e.b.x, var_0.c.e.e, Struct_1(var_0.c.e.a, var_0.b.b.zxw, var_0.c.e.c, var_0.c.a.d, vec2<f32>(500f, -149f)))))), var_0.b.d.yz);
    var var_1 = ~var_0.e;
    var var_2 = _wgslsmith_f_op_vec4_f32(var_0.b.a.c * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, 1353f, -425f, 163f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.e.b.x, 282f, 1000f, -588f))) - vec4<f32>(_wgslsmith_f_op_f32(floor(717f)), var_0.b.a.b.x, var_0.b.d.x, _wgslsmith_f_op_f32(ceil(var_0.b.a.b.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.a.c))));
    var_1 = ~(~select(~var_0.e, select(~vec2<u32>(111856u, var_1.x), var_0.e | vec2<u32>(4294967295u, 17787u), var_0.d), !vec2<bool>(var_0.b.e.d, true)));
    return var_0.c.a.a.x;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_add_i32(-15668i, -21821i);
    let var_1 = Struct_3(select(vec2<bool>(u_input.a >= 3541u, !(!arg_1)), func_4(Struct_1(vec3<i32>(-1i, arg_0, -2147483647i) >> (vec3<u32>(1u, 0u, u_input.a) % vec3<u32>(32u)), vec3<f32>(-177f, -1487f, 1313f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(191f, 875f, -857f, 404f)), true, vec2<f32>(564f, -510f)), func_4(Struct_1(vec3<i32>(1i, arg_0, -25062i), vec3<f32>(632f, 469f, 909f), vec4<f32>(-1352f, -642f, -216f, 1000f), arg_1, vec2<f32>(-1165f, -489f)), Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(vec3<i32>(-2031i, 2147483647i, -42192i), vec3<f32>(-213f, 806f, -373f), vec4<f32>(-1000f, 1000f, 156f, -1307f), arg_1, vec2<f32>(1094f, -1006f)), vec4<f32>(1255f, 249f, -179f, -208f), vec4<bool>(arg_1, false, arg_1, arg_1), vec3<f32>(-1000f, 690f, 494f), Struct_1(vec3<i32>(arg_0, 1i, -12488i), vec3<f32>(-1000f, 1827f, -2282f), vec4<f32>(1013f, -1000f, 309f, 1204f), true, vec2<f32>(979f, -1038f))), Struct_2(Struct_1(vec3<i32>(1i, arg_0, 35014i), vec3<f32>(-1000f, -477f, 667f), vec4<f32>(-764f, 1270f, -1000f, 1213f), false, vec2<f32>(-202f, 596f)), vec4<f32>(532f, -228f, -1000f, 2130f), vec4<bool>(true, arg_1, true, arg_1), vec3<f32>(-290f, -879f, 1477f), Struct_1(vec3<i32>(arg_0, arg_0, arg_0), vec3<f32>(368f, -1091f, -775f), vec4<f32>(-177f, 561f, 1921f, -2144f), arg_1, vec2<f32>(-451f, -854f))), vec2<bool>(false, true), vec2<u32>(1u, 0u)), Struct_4(arg_2.yxz, 31962u, -2147483647i, Struct_1(vec3<i32>(arg_0, 27039i, 1i), vec3<f32>(790f, -851f, -422f), vec4<f32>(-505f, 788f, -988f, -224f), true, vec2<f32>(173f, -1204f))), func_2(-296f, vec2<f32>(-673f, -882f), Struct_1(vec3<i32>(8421i, arg_0, arg_0), vec3<f32>(-1192f, -174f, 1000f), vec4<f32>(-595f, 236f, -557f, 1520f), false, vec2<f32>(-591f, -855f))).c.zy), Struct_4(arg_2.wzw, arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -11067i, arg_0, 29749i), vec4<i32>(-29431i, arg_0, 2147483647i, arg_0)), Struct_1(vec3<i32>(arg_0, 43863i, arg_0), vec3<f32>(-136f, -281f, 1284f), vec4<f32>(277f, -127f, 214f, -656f), false, vec2<f32>(-659f, -1553f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-844f, -122f) - vec2<f32>(-677f, 108f))).a, select(vec2<bool>(true, select(false, arg_1, true)), !(!vec2<bool>(false, arg_1)), vec2<bool>(arg_1, func_2(-558f, vec2<f32>(-1304f, 982f), Struct_1(vec3<i32>(arg_0, 0i, arg_0), vec3<f32>(1000f, -892f, 622f), vec4<f32>(-1602f, 993f, 1167f, 1000f), arg_1, vec2<f32>(1273f, 134f))).d))), Struct_2(func_2(1f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-475f, -1780f), vec2<f32>(1000f, -441f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1043f, 1404f))), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(arg_0, -2147483647i, arg_0)), vec3<f32>(696f, 1000f, 2381f), _wgslsmith_f_op_vec4_f32(vec4<f32>(474f, -449f, 2414f, -584f) - vec4<f32>(543f, 552f, -601f, -564f)), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-648f, -2558f) - vec2<f32>(699f, 528f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(245f, 464f, 126f, -388f), vec4<f32>(-1026f, 542f, -536f, -1260f)) + vec4<f32>(494f, -1671f, -736f, -495f))), !select(vec4<bool>(false, arg_1, false, arg_1), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), all(vec2<bool>(false, arg_1))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(576f, 282f, -2293f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1741f, -153f, 468f) * vec3<f32>(1114f, -850f, -1000f))))), Struct_1(countOneBits(vec3<i32>(arg_0, -1i, 86238i) & vec3<i32>(2147483647i, 19997i, -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(select(299f, -1000f, arg_1)), _wgslsmith_f_op_f32(322f * -200f), func_4(Struct_1(vec3<i32>(-45550i, arg_0, -6261i), vec3<f32>(-987f, -634f, 850f), vec4<f32>(-118f, 1018f, 933f, -1045f), false, vec2<f32>(-979f, 864f)), Struct_3(vec2<bool>(false, arg_1), Struct_2(Struct_1(vec3<i32>(arg_0, arg_0, arg_0), vec3<f32>(669f, 703f, 1115f), vec4<f32>(-813f, 1000f, 1353f, -333f), arg_1, vec2<f32>(-130f, -385f)), vec4<f32>(-372f, -580f, -2120f, 1346f), vec4<bool>(false, arg_1, arg_1, true), vec3<f32>(-559f, 1025f, 844f), Struct_1(vec3<i32>(699i, -1i, 0i), vec3<f32>(108f, 786f, -120f), vec4<f32>(894f, -567f, -263f, 614f), arg_1, vec2<f32>(-2683f, -662f))), Struct_2(Struct_1(vec3<i32>(arg_0, arg_0, arg_0), vec3<f32>(316f, 457f, 982f), vec4<f32>(-654f, 478f, 620f, -1055f), arg_1, vec2<f32>(1527f, 311f)), vec4<f32>(581f, -987f, 509f, 864f), vec4<bool>(arg_1, true, false, arg_1), vec3<f32>(664f, 183f, -640f), Struct_1(vec3<i32>(arg_0, -2519i, 7738i), vec3<f32>(-970f, 1618f, -1282f), vec4<f32>(269f, 1283f, 1000f, -980f), arg_1, vec2<f32>(-415f, 1338f))), vec2<bool>(arg_1, false), vec2<u32>(arg_2.x, u_input.a)), Struct_4(arg_2.zzz, u_input.a, 17825i, Struct_1(vec3<i32>(-26168i, arg_0, arg_0), vec3<f32>(-1011f, -336f, -1242f), vec4<f32>(-741f, -922f, 1828f, 775f), false, vec2<f32>(829f, -1000f))), vec2<f32>(2372f, -439f)).c.e.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-237f, -313f, 1903f, 893f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-279f, -2082f, -660f, -1051f) - vec4<f32>(1079f, -1000f, -142f, -192f))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-675f, 671f))))), func_4(func_2(_wgslsmith_f_op_f32(-1903f - _wgslsmith_f_op_f32(1597f * -712f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-691f, -836f), vec2<f32>(152f, 198f))), vec2<f32>(1500f, 1000f)), Struct_1(select(vec3<i32>(-1i, -1i, 45246i), vec3<i32>(arg_0, arg_0, arg_0), vec3<bool>(arg_1, arg_1, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 766f, 919f) + vec3<f32>(-144f, 317f, -108f)), vec4<f32>(-714f, -2540f, 1916f, -1081f), !arg_1, vec2<f32>(754f, 2292f))), Struct_3(select(vec2<bool>(false, true), vec2<bool>(true, arg_1), vec2<bool>(true, true)), func_4(Struct_1(vec3<i32>(0i, -5926i, arg_0), vec3<f32>(-1123f, -290f, 1792f), vec4<f32>(2181f, -279f, -488f, 2043f), true, vec2<f32>(1970f, 756f)), func_4(Struct_1(vec3<i32>(arg_0, arg_0, 1i), vec3<f32>(621f, 178f, -197f), vec4<f32>(314f, -1000f, -2049f, 1043f), arg_1, vec2<f32>(-172f, -615f)), Struct_3(vec2<bool>(arg_1, false), Struct_2(Struct_1(vec3<i32>(arg_0, -2147483647i, arg_0), vec3<f32>(255f, -1122f, -305f), vec4<f32>(1140f, -1350f, 636f, -1000f), true, vec2<f32>(-2303f, 172f)), vec4<f32>(304f, 1625f, 1000f, -572f), vec4<bool>(arg_1, arg_1, true, arg_1), vec3<f32>(1249f, 1971f, -446f), Struct_1(vec3<i32>(18173i, -1i, -8756i), vec3<f32>(892f, -428f, 917f), vec4<f32>(1036f, -1000f, -321f, -1063f), true, vec2<f32>(-837f, -990f))), Struct_2(Struct_1(vec3<i32>(-77899i, 2147483647i, -2147483647i), vec3<f32>(1000f, -2155f, 1791f), vec4<f32>(-783f, 2608f, 172f, -2006f), false, vec2<f32>(1607f, -854f)), vec4<f32>(-1264f, 764f, 1162f, -266f), vec4<bool>(true, arg_1, true, arg_1), vec3<f32>(-427f, -1354f, -1502f), Struct_1(vec3<i32>(0i, 1i, arg_0), vec3<f32>(335f, 1342f, 182f), vec4<f32>(-1618f, -201f, -714f, 211f), arg_1, vec2<f32>(720f, -1018f))), vec2<bool>(arg_1, arg_1), vec2<u32>(0u, 19344u)), Struct_4(vec3<u32>(arg_2.x, u_input.a, u_input.a), 4294967295u, 41556i, Struct_1(vec3<i32>(1i, 13154i, arg_0), vec3<f32>(2006f, -1000f, 1528f), vec4<f32>(-272f, 1237f, 1060f, 1058f), true, vec2<f32>(-1000f, 1389f))), vec2<f32>(1198f, 810f)), Struct_4(arg_2.zww, arg_2.x, arg_0, Struct_1(vec3<i32>(arg_0, 54457i, -2147483647i), vec3<f32>(826f, -782f, 597f), vec4<f32>(1410f, 129f, 1161f, 1902f), true, vec2<f32>(-615f, 420f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-668f, 693f) - vec2<f32>(-174f, 2135f))).b, Struct_2(func_2(582f, vec2<f32>(181f, 751f), Struct_1(vec3<i32>(arg_0, arg_0, -2147483647i), vec3<f32>(-1528f, -2393f, 316f), vec4<f32>(1163f, 670f, 1542f, 382f), arg_1, vec2<f32>(-742f, -1280f))), _wgslsmith_div_vec4_f32(vec4<f32>(1242f, 418f, 127f, -1000f), vec4<f32>(-1000f, -1158f, 292f, 188f)), vec4<bool>(true, arg_1, false, arg_1), vec3<f32>(763f, -841f, 293f), Struct_1(vec3<i32>(2147483647i, -509i, 867i), vec3<f32>(618f, 736f, -168f), vec4<f32>(655f, 117f, -418f, -339f), arg_1, vec2<f32>(-785f, -118f))), !select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 4294967295u), arg_2.ww, vec2<u32>(arg_2.x, 10368u))), Struct_4(arg_2.yyx, firstLeadingBit(u_input.a), arg_0, func_2(_wgslsmith_f_op_f32(sign(-2323f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(683f, -1644f), vec2<f32>(-327f, 1306f))), func_2(-720f, vec2<f32>(506f, -1144f), Struct_1(vec3<i32>(arg_0, -22286i, arg_0), vec3<f32>(-1151f, 488f, -354f), vec4<f32>(252f, 1000f, 787f, -505f), false, vec2<f32>(-1695f, 1000f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 644f)))))).b, vec2<bool>(!(any(vec2<bool>(true, true)) == arg_1), false & !any(vec2<bool>(arg_1, false))), arg_2.yw);
    var var_2 = var_1.c.a.a;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + -639f))))), 1246f);
    var_0 = min(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, firstTrailingBit(-2147483647i << (u_input.a % 32u))), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, (var_2.x ^ -18887i) >> (_wgslsmith_mult_u32(u_input.a, 1u) % 32u))), -7382i);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec3<u32>(~min(62034u, 10973u) << (func_5(func_1(), false, vec4<u32>(15012u, u_input.a, u_input.a, 11821u)) % 32u), firstLeadingBit(~firstTrailingBit(u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(4294967295u), countOneBits(0u)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, u_input.a)) & ~vec2<u32>(u_input.a, u_input.a))), 30909u << (u_input.a % 32u), 1i, Struct_1(abs(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(28147i, 1619i, -1i), vec3<i32>(14902i, 2147483647i, -28127i)), abs(1383i), ~1i)), _wgslsmith_div_vec3_f32(func_2(1f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-437f, -119f))), func_2(1796f, vec2<f32>(1022f, -434f), Struct_1(vec3<i32>(-5701i, 23887i, -2147483647i), vec3<f32>(-321f, 1305f, -187f), vec4<f32>(-1670f, -582f, -1084f, 713f), false, vec2<f32>(118f, 1000f)))).b, vec3<f32>(_wgslsmith_f_op_f32(244f * -392f), -1675f, -880f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1470f, -448f, -357f, -596f), vec4<f32>(-1110f, 1938f, -202f, 414f)))))), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-func_2(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-603f, 678f)), Struct_1(vec3<i32>(23135i, -2147483647i, 1i), vec3<f32>(2214f, 584f, 1842f), vec4<f32>(-928f, -1017f, -1589f, 578f), true, vec2<f32>(142f, 939f))).c.ww)));
    var var_1 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(634f)), 1972f) - var_0.d.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1817f)), ~select(func_4(Struct_1(var_0.d.a, vec3<f32>(var_0.d.c.x, -777f, var_0.d.e.x), var_0.d.c, var_0.d.d, var_0.d.e), func_4(var_0.d, Struct_3(vec2<bool>(var_0.d.d, var_0.d.d), Struct_2(Struct_1(var_0.d.a, vec3<f32>(1032f, var_0.d.b.x, var_0.d.c.x), vec4<f32>(141f, -1028f, 1152f, -979f), true, vec2<f32>(var_0.d.b.x, 479f)), var_0.d.c, vec4<bool>(var_0.d.d, var_0.d.d, true, var_0.d.d), vec3<f32>(var_0.d.b.x, -937f, var_0.d.e.x), Struct_1(vec3<i32>(-2147483647i, var_0.c, var_0.d.a.x), vec3<f32>(var_0.d.e.x, var_0.d.c.x, -489f), vec4<f32>(var_0.d.e.x, var_0.d.c.x, -567f, var_0.d.c.x), var_0.d.d, vec2<f32>(var_0.d.b.x, 919f))), Struct_2(Struct_1(vec3<i32>(-1i, var_0.d.a.x, var_0.c), var_0.d.b, vec4<f32>(var_0.d.b.x, 1436f, 120f, var_0.d.c.x), var_0.d.d, vec2<f32>(var_0.d.e.x, -851f)), vec4<f32>(var_0.d.e.x, var_0.d.e.x, -1337f, var_0.d.c.x), vec4<bool>(true, var_0.d.d, true, var_0.d.d), vec3<f32>(var_0.d.c.x, -2024f, var_0.d.e.x), Struct_1(var_0.d.a, vec3<f32>(var_0.d.e.x, -1897f, 1584f), vec4<f32>(1000f, -753f, -126f, -848f), var_0.d.d, var_0.d.c.yy)), vec2<bool>(var_0.d.d, var_0.d.d), vec2<u32>(var_0.a.x, 1u)), Struct_4(vec3<u32>(25892u, u_input.a, 3563u), var_0.b, 19423i, Struct_1(vec3<i32>(2147483647i, -2147483647i, var_0.d.a.x), vec3<f32>(var_0.d.c.x, -733f, 173f), vec4<f32>(570f, var_0.d.b.x, var_0.d.c.x, var_0.d.b.x), var_0.d.d, vec2<f32>(-463f, var_0.d.c.x))), vec2<f32>(1031f, -1000f)), Struct_4(var_0.a, var_0.a.x, var_0.d.a.x, var_0.d), var_0.d.c.zw).c.a.a.zx, var_0.d.a.yy, any(func_4(var_0.d, Struct_3(vec2<bool>(false, var_0.d.d), Struct_2(var_0.d, vec4<f32>(-1297f, var_0.d.b.x, 885f, var_0.d.b.x), vec4<bool>(false, var_0.d.d, var_0.d.d, true), var_0.d.c.xzz, var_0.d), Struct_2(Struct_1(vec3<i32>(14317i, -23002i, -15570i), vec3<f32>(var_0.d.b.x, var_0.d.b.x, var_0.d.e.x), vec4<f32>(var_0.d.e.x, 460f, var_0.d.b.x, 1256f), var_0.d.d, vec2<f32>(-1171f, -707f)), var_0.d.c, vec4<bool>(var_0.d.d, true, var_0.d.d, true), var_0.d.c.www, var_0.d), vec2<bool>(true, false), vec2<u32>(0u, var_0.b)), Struct_4(vec3<u32>(var_0.a.x, 1u, var_0.b), var_0.b, var_0.d.a.x, var_0.d), var_0.d.e).b.c.yy)));
}

