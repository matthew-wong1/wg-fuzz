struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
    d: i32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> vec4<f32> {
    let var_0 = arg_0.c.d;
    var var_1 = -51020i;
    global0 = any(select(select(!select(arg_0.a.b, vec3<bool>(false, arg_0.b.b.x, true), false), !var_0.b, arg_0.a.a.x == _wgslsmith_dot_vec4_i32(var_0.a, u_input.b)), arg_0.c.d.b, arg_0.a.b.x));
    let var_2 = Struct_5(arg_0.b, arg_0.c.d, Struct_3(Struct_2(~_wgslsmith_div_vec3_i32(arg_0.d.a, vec3<i32>(u_input.b.x, arg_0.b.a.x, u_input.a)), ~(vec4<i32>(12948i, -24008i, var_0.a.x, u_input.b.x) | var_0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c * 1611f), _wgslsmith_div_f32(var_0.c, arg_0.a.e.x))), !all(arg_0.a.b)), -1321f, _wgslsmith_f_op_f32(-arg_0.a.c), var_0), Struct_2(abs(firstTrailingBit(u_input.b.wzx)), u_input.b, -334f, !(!var_0.d.x)));
    var_1 = var_0.a.x;
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + _wgslsmith_div_f32(var_2.a.e.x, -153f))), 740f, var_2.d.c)));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(147f, -1932f, 382f, 255f) + vec4<f32>(-259f, 1627f, 1138f, 793f))))), _wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_1(u_input.b, vec3<bool>(true, false, true), -1076f, vec2<bool>(true, false), vec3<f32>(-436f, 2160f, 1625f)), Struct_1(vec4<i32>(-2147483647i, u_input.d, 6852i, -27514i), vec3<bool>(false, false, false), 652f, vec2<bool>(true, false), vec3<f32>(1025f, -560f, 191f)), Struct_3(Struct_2(u_input.b.xzz, vec4<i32>(-9034i, u_input.c, 1i, 0i), -1818f, false), -293f, -883f, Struct_1(vec4<i32>(-2147483647i, -1i, 1i, u_input.b.x), vec3<bool>(true, true, false), -352f, vec2<bool>(false, false), vec3<f32>(-2242f, 825f, -1160f))), Struct_2(vec3<i32>(u_input.b.x, u_input.c, 15802i), vec4<i32>(42265i, 54216i, 17473i, 15397i), 783f, false)), false))))));
    global0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-var_0.xyw);
    let var_2 = Struct_5(Struct_1(u_input.b, vec3<bool>(true, -u_input.a > _wgslsmith_dot_vec3_i32(u_input.b.wyw, vec3<i32>(u_input.d, -12351i, 1i)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(var_0.x - -1000f))), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 638f) * var_1))) + _wgslsmith_f_op_vec3_f32(var_0.xxz + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.x, var_0.x) + vec3<f32>(-235f, var_1.x, 345f))))), Struct_1(u_input.b, !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_1(u_input.b, vec3<bool>(false, true, true), var_1.x, vec2<bool>(false, true), vec3<f32>(var_0.x, var_1.x, var_1.x)), Struct_1(vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.b.x), vec3<bool>(true, false, false), var_1.x, vec2<bool>(true, false), var_1), Struct_3(Struct_2(vec3<i32>(-2147483647i, u_input.b.x, -34038i), u_input.b, -314f, true), var_1.x, var_0.x, Struct_1(vec4<i32>(-25541i, 0i, -61507i, -15563i), vec3<bool>(true, false, false), var_1.x, vec2<bool>(true, true), var_0.ywx)), Struct_2(u_input.b.wxy, u_input.b, -842f, false)), false)).x))), vec2<bool>(min(u_input.d, 1i) <= _wgslsmith_dot_vec3_i32(u_input.b.wxw, u_input.b.yyx), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.zxw, var_0.yxz))))), Struct_3(Struct_2(-(u_input.b.zzy & vec3<i32>(8756i, -1i, u_input.a)), _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(2147483647i, u_input.b.x, 1878i, 63848i)), -187f, all(vec3<bool>(true, true, true))), -383f, var_0.x, Struct_1(-u_input.b ^ u_input.b, !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2031f + var_0.x))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1), _wgslsmith_f_op_vec3_f32(trunc(var_1)), vec3<bool>(false, false, false))))), Struct_2(reverseBits(firstTrailingBit(u_input.b.wyz) | vec3<i32>(u_input.d, u_input.b.x, 36348i)), u_input.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-960f - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(377f))))), any(vec2<bool>(true, arg_0 < 0u))));
    global1 = array<vec2<f32>, 10>();
    return _wgslsmith_mult_vec3_i32(~select(select(abs(vec3<i32>(u_input.d, u_input.c, u_input.b.x)), vec3<i32>(-1i, -25538i, u_input.a), vec3<bool>(false, false, false)), vec3<i32>(7867i, _wgslsmith_dot_vec3_i32(var_2.c.d.a.wyy, vec3<i32>(82043i, 35620i, var_2.b.a.x)), countOneBits(var_2.a.a.x)), !vec3<bool>(var_2.a.b.x, false, true)), vec3<i32>(10267i, 1i, -10321i));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(firstLeadingBit(func_2(~1u)), abs(firstTrailingBit(firstLeadingBit(~vec4<i32>(0i, -1i, 2147483647i, 21172i)))), _wgslsmith_f_op_f32(831f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-999f - _wgslsmith_f_op_f32(ceil(-1273f))), _wgslsmith_f_op_f32(sign(-399f)), true))), ~52020i >= (func_2(_wgslsmith_mult_u32(14895u, 43269u)).x >> (1u % 32u)));
    global1 = array<vec2<f32>, 10>();
    var var_1 = _wgslsmith_clamp_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 46806u), vec2<u32>(38240u, 13006u)) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), reverseBits(select(vec2<u32>(1u, 4294967295u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(46904u, 49742u, 20172u, 18058u), vec4<u32>(4294967295u, 0u, 1u, 1u)), _wgslsmith_mod_u32(4294967295u, 25080u)), true)), ~(select(vec2<u32>(1u, 1u), select(vec2<u32>(7692u, 0u), vec2<u32>(1u, 0u), var_0.d), true) & ~firstTrailingBit(vec2<u32>(1u, 1u))));
    global0 = true;
    var_1 = ~vec2<u32>(firstLeadingBit(var_1.x), var_1.x);
    return Struct_4(_wgslsmith_mod_vec3_u32(select(vec3<u32>(var_1.x, ~28376u, var_1.x), vec3<u32>(var_1.x, var_1.x, _wgslsmith_div_u32(var_1.x, var_1.x)), var_1.x != ~var_1.x), vec3<u32>(1u >> (1u % 32u), 35356u, ~(var_1.x << (var_1.x % 32u)))), 41070u <= var_1.x, var_0, firstLeadingBit(~_wgslsmith_clamp_i32(firstTrailingBit(u_input.b.x), ~u_input.c, 14742i)), vec4<bool>(any(vec4<bool>(true, var_0.d, true, false)), (~var_1.x >= var_1.x) != false, true, true || var_0.d));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_4) -> vec2<u32> {
    global0 = (1i >> (~_wgslsmith_clamp_u32(reverseBits(4294967295u), arg_2.a.x, ~32390u) % 32u)) <= 2147483647i;
    global0 = arg_2.c.d;
    var var_0 = Struct_4(vec3<u32>(~(arg_2.a.x ^ select(arg_2.a.x, arg_2.a.x, arg_0)), 58322u, arg_2.a.x | arg_2.a.x), !(!arg_2.c.d), Struct_2(u_input.b.yxx, -abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.c, -1i, -15217i), vec4<i32>(-1i, u_input.b.x, 1i, 2147483647i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -786f), -182f)))), arg_0), arg_1, func_1().e);
    global1 = array<vec2<f32>, 10>();
    global1 = array<vec2<f32>, 10>();
    return abs(vec2<u32>(_wgslsmith_add_u32(arg_2.a.x, ~_wgslsmith_dot_vec3_u32(arg_2.a, arg_2.a)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(max(~1u, _wgslsmith_dot_vec2_u32(func_4(true, ~5058i, func_1()), vec2<u32>(abs(4294967295u), ~0u))), _wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-49150i, 1i, -42967i, 49553i), u_input.b), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), _wgslsmith_f_op_f32(-1336f - -824f), vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-561f, -1363f, 234f) * vec3<f32>(-487f, -1483f, -1416f))), Struct_1(vec4<i32>(-4119i, u_input.b.x, u_input.b.x, 1i), vec3<bool>(true, true, true), -1443f, vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(498f, -642f, -2290f) - vec3<f32>(-999f, -2347f, 1295f))), Struct_3(Struct_2(u_input.b.yxy, vec4<i32>(30571i, 16898i, u_input.a, u_input.d), -160f, true), -848f, _wgslsmith_f_op_f32(max(-446f, 1776f)), Struct_1(vec4<i32>(0i, 38923i, -17225i, u_input.b.x), vec3<bool>(false, false, false), -1189f, vec2<bool>(true, true), vec3<f32>(371f, 193f, 1766f))), Struct_2(select(vec3<i32>(-35502i, -2147483647i, -2147483647i), u_input.b.zzy, false), ~u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1791f), true)), true)).wxy);
}

