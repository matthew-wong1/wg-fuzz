struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<bool>) -> f32 {
    return arg_1.a.a.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(747f, -282f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.a.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-157f))) - arg_3.a.d));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_3, arg_3: vec2<u32>) -> vec4<u32> {
    let var_0 = countOneBits(_wgslsmith_mod_u32(arg_2.b.a.b.x, arg_2.b.b.b.x)) & u_input.a;
    let var_1 = arg_2.b.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -1387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f + -1225f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.d - arg_2.a), _wgslsmith_f_op_f32(abs(arg_2.c)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(arg_2.a * arg_0.x)))));
    var var_3 = Struct_4(arg_2.b);
    var var_4 = Struct_2(arg_2.b.a, Struct_1(var_3.a.c.a, var_3.a.c.b | abs(arg_2.b.c.b), 13633i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(abs(var_3.a.c.d)))), arg_2.b.a);
    return _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~0u, arg_3.x, arg_3.x, var_4.b.b.x & 34477u) ^ ~arg_2.b.c.b, ~(~var_4.c.b >> (var_3.a.a.b % vec4<u32>(32u)))), ~(~select(arg_2.b.c.b, vec4<u32>(1u, var_0, 6416u, var_3.a.c.b.x), vec4<bool>(arg_1, arg_1, arg_1, arg_1))) << (vec4<u32>(_wgslsmith_mult_u32(var_3.a.c.b.x, ~67437u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(92334u, var_3.a.a.b.x), vec2<u32>(30470u, var_1.b.x)), 18952u), var_0, arg_3.x) % vec4<u32>(32u)));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = true;
    var_0 = ((_wgslsmith_f_op_f32(round(arg_0)) >= _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(exp2(arg_0)), true))) && true) || !(!any(vec3<bool>(true, true, true)));
    var var_1 = select(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(abs(-4366i), min(-2147483647i, 0i)) << (countOneBits(~arg_1.wz) % vec2<u32>(32u))), vec2<i32>(1i, 1i), true);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0)))), ~abs(arg_1), ~var_1.x, 2297f), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(320f, -452f, 1637f), vec3<f32>(468f, -1738f, arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(133f, 352f, -1005f), vec3<f32>(-288f, arg_0, arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-531f)), _wgslsmith_f_op_f32(f32(-1f) * -1512f), _wgslsmith_f_op_f32(max(126f, -1438f)))), arg_1, max(firstTrailingBit(var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(19228i, 1269i, 2147483647i, -1i), vec4<i32>(var_1.x, -1i, var_1.x, 0i))) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.x, 2147483647i, var_1.x), vec3<i32>(-15312i, var_1.x, -21644i) << (vec3<u32>(arg_1.x, arg_1.x, 4294967295u) % vec3<u32>(32u))), 377f), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(-459f, _wgslsmith_f_op_f32(func_1(arg_1.xw, Struct_2(Struct_1(vec3<f32>(arg_0, -2158f, -322f), arg_1, var_1.x, -262f), Struct_1(vec3<f32>(1161f, 581f, arg_0), arg_1, var_1.x, arg_0), Struct_1(vec3<f32>(359f, arg_0, -1235f), vec4<u32>(4294967295u, 19514u, 71303u, u_input.a), 775i, 313f)), vec2<bool>(false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1227f))), _wgslsmith_f_op_f32(round(arg_0))), arg_1, -51880i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * arg_0)));
    var var_3 = select(firstTrailingBit(var_2.b.b.zxx) >> ((~reverseBits(arg_1.wwx) ^ reverseBits(~arg_1.xyx)) % vec3<u32>(32u)), ~vec3<u32>(~0u & select(8250u, 1u, false), 4294967295u, ~abs(u_input.a)), select(vec3<bool>(false, false, true), vec3<bool>(_wgslsmith_dot_vec3_u32(var_2.a.b.zyw, vec3<u32>(20677u, 1u, arg_1.x)) > abs(u_input.a), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), ~1u >= ~arg_1.x), true));
    return ~arg_1;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: vec4<i32>) -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(1000f, arg_1, 2517f), true))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1397f, -339f, arg_1) + vec3<f32>(arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -463f) - vec3<f32>(129f, arg_1, 1360f)))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f)), func_4(_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(0u, 24843u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_2(Struct_1(vec3<f32>(arg_1, arg_1, -1000f), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), 0i, 487f), Struct_1(vec3<f32>(-144f, arg_1, -1283f), vec4<u32>(u_input.a, 15536u, u_input.a, u_input.a), arg_3.x, arg_1), Struct_1(vec3<f32>(arg_1, arg_1, 1000f), vec4<u32>(0u, 0u, 4294967295u, 34426u), arg_2, arg_1)))), true, Struct_3(796f, Struct_2(Struct_1(vec3<f32>(574f, arg_1, arg_1), vec4<u32>(u_input.a, u_input.a, 1u, 35423u), arg_0, arg_1), Struct_1(vec3<f32>(-445f, 790f, -1422f), vec4<u32>(u_input.a, u_input.a, 40815u, 20725u), arg_3.x, -212f), Struct_1(vec3<f32>(arg_1, 200f, 1442f), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), arg_3.x, arg_1)), arg_1), vec2<u32>(u_input.a, 0u) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))), -2147483647i, -985f), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(291f, arg_1, -617f), vec3<f32>(-649f, arg_1, -274f))))), ~min(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 52601u), vec4<u32>(u_input.a, u_input.a, 47379u, u_input.a))), -34819i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 72345u), vec3<u32>(u_input.a, 39210u, 54363u), vec3<u32>(u_input.a, u_input.a, 1u)), vec3<u32>(9246u, u_input.a, 1u), vec4<u32>(0u, 4294967295u, 66967u, u_input.a), Struct_2(Struct_1(vec3<f32>(arg_1, 683f, 1201f), vec4<u32>(64537u, u_input.a, u_input.a, 4294967295u), arg_3.x, -2741f), Struct_1(vec3<f32>(arg_1, arg_1, arg_1), vec4<u32>(29397u, u_input.a, 0u, 4294967295u), arg_0, 1825f), Struct_1(vec3<f32>(arg_1, arg_1, 1000f), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), 2147483647i, 743f)))).x)), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-602f, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1662f, -947f, arg_1) - vec3<f32>(arg_1, arg_1, arg_1)))))), vec4<u32>(0u, 4294967295u, u_input.a, firstTrailingBit(24655u)), _wgslsmith_dot_vec4_i32(vec4<i32>(2540i, -3763i, arg_3.x, arg_3.x), arg_3) | ~_wgslsmith_add_i32(arg_0, arg_3.x), 950f));
    var var_1 = true;
    let var_2 = _wgslsmith_div_vec2_u32(func_5(arg_1, ~(~var_0.b.b) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.b.x, 0u, var_0.b.b.x, var_0.b.b.x) & vec4<u32>(u_input.a, u_input.a, var_0.c.b.x, 19674u), vec4<u32>(1u, var_0.a.b.x, var_0.c.b.x, u_input.a))).yz, ~max(vec2<u32>(33080u, u_input.a) & var_0.b.b.yy, (var_0.b.b.yx ^ vec2<u32>(4294967295u, var_0.a.b.x)) ^ ~vec2<u32>(var_0.b.b.x, 36308u)));
    var_1 = true;
    var var_3 = vec4<u32>(~(~34583u), _wgslsmith_mult_u32(var_0.b.b.x, firstLeadingBit(4294967295u)), max(u_input.a, 11057u), ~15555u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.b.a, _wgslsmith_f_op_vec3_f32(step(var_0.b.a, vec3<f32>(-893f, arg_1, arg_1))), true))) + _wgslsmith_f_op_vec3_f32(sign(var_0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_2(2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.a, 1u), Struct_2(Struct_1(vec3<f32>(-789f, 430f, -641f), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), 1i, -150f), Struct_1(vec3<f32>(-312f, -989f, 574f), vec4<u32>(0u, 30610u, 44267u, u_input.a), -1i, -205f), Struct_1(vec3<f32>(836f, 1021f, 1481f), vec4<u32>(u_input.a, 4294967295u, 38162u, u_input.a), -20168i, -652f)), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(1198f + _wgslsmith_div_f32(314f, -505f))), -1i, vec4<i32>(-77865i, ~abs(-25487i), 26203i, -14147i))), ~(vec4<u32>(firstLeadingBit(u_input.a), u_input.a & u_input.a, ~u_input.a, 55558u) ^ (vec4<u32>(4294967295u, u_input.a, 4294967295u, 61579u) << (vec4<u32>(0u, 75886u, 12179u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_clamp_i32(-7064i, _wgslsmith_mult_i32(~(-12608i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 9689i, 54849i), vec3<i32>(1i, 2147483647i, -8777i))), -653i), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-732f, -654f))));
    var var_1 = vec2<i32>(-var_0.c, 34368i);
    let var_2 = 0i;
    let var_3 = vec2<bool>(any(vec4<bool>(select(false, true, select(true, false, true)), false, all(vec3<bool>(true, true, true)) & true, any(vec4<bool>(true, true, true, true)))), true);
    let var_4 = vec3<bool>(true, var_3.x, false);
    var_1 = vec2<i32>(max(1i, _wgslsmith_div_i32(var_2, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 2147483647i, -22661i, var_1.x) | vec4<i32>(var_2, var_1.x, var_2, var_0.c), ~vec4<i32>(var_1.x, -650i, -2147483647i, var_0.c)))), -var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(78688u, 4294967295u, 4294967295u), ~(~max(1u, _wgslsmith_add_u32(0u, var_0.b.x))), _wgslsmith_f_op_f32(-var_0.a.x));
}

