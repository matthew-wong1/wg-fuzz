struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = reverseBits(~(~_wgslsmith_add_u32(123081u, firstLeadingBit(u_input.b.x))));
    var var_1 = Struct_2(Struct_1(-_wgslsmith_div_i32(68682i, 35264i) | -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -47027i, 0i), vec3<i32>(0i, -1410i, 38373i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-895f, 138f, -753f, 715f) * vec4<f32>(-1462f, 321f, 1000f, -179f)))), -2147483647i), _wgslsmith_add_vec2_u32(reverseBits(select(vec2<u32>(u_input.c.x, var_0) ^ u_input.c.zz, vec2<u32>(u_input.a, var_0) & u_input.c.xx, all(vec4<bool>(false, false, true, false)))), u_input.c.xx), Struct_1(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(110f, -1479f, 796f, -1080f), vec4<f32>(180f, 1296f, -664f, 3373f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-816f, 1632f, -1430f, 687f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1694f, 939f, -1819f, -673f) + vec4<f32>(-130f, -1263f, 885f, -702f)))), firstTrailingBit(~countOneBits(34485i))));
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f * var_1.c.b.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(997f + -637f)))) >= var_1.a.b.x, all(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), false), vec2<bool>(false, var_1.c.b.x <= var_1.a.b.x), all(vec2<bool>(true, true)))));
    let var_3 = select(_wgslsmith_mult_vec4_u32(min(firstLeadingBit(vec4<u32>(4294967295u, u_input.b.x, var_0, 31930u)), ~vec4<u32>(1u, 7013u, var_1.b.x, var_0)), vec4<u32>(abs(4294967295u), firstTrailingBit(24835u), _wgslsmith_div_u32(var_0, 6510u), countOneBits(u_input.b.x))), select(vec4<u32>(u_input.a, var_1.b.x, 3921u, u_input.c.x), firstTrailingBit(vec4<u32>(var_0, 93034u, 74285u, u_input.b.x)), vec4<bool>(false, true, var_2.x, true)) ^ select(vec4<u32>(8500u, 0u, u_input.a, var_1.b.x), vec4<u32>(u_input.c.x, var_0, 57412u, var_0) ^ vec4<u32>(77292u, 4294967295u, 1u, 4294967295u), select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(false, var_2.x, var_2.x, var_2.x))), !select(select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(var_2.x, false, true, true), true), !vec4<bool>(true, var_2.x, var_2.x, true), select(vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_2.x, false, false, false), var_2.x))) & ~_wgslsmith_add_vec4_u32(vec4<u32>(49992u, ~0u, u_input.a, _wgslsmith_mod_u32(4294967295u, 1u)), ~vec4<u32>(4294967295u, var_1.b.x, u_input.b.x, u_input.a));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.b.x), _wgslsmith_f_op_f32(ceil(-1040f)), var_2.x | var_2.x)))), -833f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1289f - -344f), _wgslsmith_f_op_f32(1419f - var_1.a.b.x))))));
    return var_1.c.c;
}

fn func_2() -> bool {
    let var_0 = u_input.b ^ u_input.b;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -693f))), _wgslsmith_f_op_f32(f32(-1f) * -1465f), _wgslsmith_f_op_f32(f32(-1f) * -389f));
    let var_2 = select(~countOneBits(vec4<i32>(select(26293i, -1i, true), func_3(), ~17588i, 0i)), vec4<i32>(-1i, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-44768i, 9079i, 1i, -30801i), vec4<i32>(1804i, 1i, -1i, 50057i)), -43394i), -(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 6149i, -16836i), vec3<i32>(-65257i, -29136i, -38053i)) | 2147483647i), -(~(~(-2147483647i)))), true);
    let var_3 = 1u;
    let var_4 = Struct_2(Struct_1(var_2.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-351f * var_1.x), 359f, 557f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, var_1.x, var_1.x)))), -(~var_2.x << (_wgslsmith_sub_u32(4294967295u, var_0.x) % 32u))), var_0.zz, Struct_1(var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -606f, var_1.x, var_1.x) + vec4<f32>(904f, -1616f, var_1.x, 465f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, var_1.x, 2378f), vec4<f32>(-948f, 300f, var_1.x, var_1.x))))), var_2.x));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: f32) -> i32 {
    let var_0 = vec2<bool>(false, !func_2());
    var var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-arg_0.b), _wgslsmith_add_i32(~_wgslsmith_mod_i32(abs(arg_0.a), arg_0.c), arg_0.c));
    var_1 = Struct_1(0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1118f, -1103f, 1000f, 405f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3, arg_0.b.x, var_1.b.x, arg_0.b.x)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(arg_3, arg_0.b.x, -1026f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), -1991f, -310f, _wgslsmith_f_op_f32(-arg_0.b.x))))), var_1.a);
    var var_2 = Struct_3(Struct_2(arg_0, ~(~max(arg_2.xz, u_input.b.zz)), Struct_1(firstLeadingBit(-22815i), _wgslsmith_div_vec4_f32(vec4<f32>(516f, arg_0.b.x, 104f, arg_0.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(-626f, -524f, 771f, 1276f), arg_0.b)), max(2147483647i, var_1.a))), Struct_2(arg_0, vec2<u32>(~678u, 34360u), arg_0), vec3<bool>(any(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, true, false, var_0.x), var_0.x)) != var_0.x, false, all(select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false), !vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true)))), Struct_2(Struct_1(2147483647i, vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(floor(-1128f)), -745f, _wgslsmith_div_f32(1000f, arg_0.b.x)), 1i), abs(reverseBits(u_input.c.zx) ^ arg_2.zz), arg_0), _wgslsmith_div_i32(arg_0.c, _wgslsmith_mod_i32(~abs(28463i), arg_0.a)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2214f, var_2.d.a.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.x)))));
    return firstLeadingBit(firstLeadingBit(arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = Struct_1(_wgslsmith_sub_i32(-(~1i), 2147483647i) >> (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.xx)) % 32u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1436f, -1008f, -876f, 104f), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 526f, 394f, -1000f), vec4<f32>(-243f, -360f, 1000f, 2320f)), all(vec4<bool>(true, false, false, false))))))), 1i);
    var var_2 = vec2<i32>(func_1(Struct_1(var_1.a, vec4<f32>(-131f, var_1.b.x, var_1.b.x, _wgslsmith_f_op_f32(trunc(var_1.b.x))), _wgslsmith_mult_i32(0i, var_1.a) | var_1.c), u_input.c.x, vec3<u32>(u_input.c.x, _wgslsmith_mod_u32(1u, max(42651u, 65033u)), u_input.b.x), -1139f), ~(-_wgslsmith_add_i32(func_1(Struct_1(var_1.a, vec4<f32>(var_1.b.x, var_1.b.x, 224f, 1841f), 2147483647i), 0u, u_input.b, -1193f), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 34438i, -37098i, 0i), vec4<i32>(0i, var_1.a, var_1.c, -21366i)))));
    var_2 = -((reverseBits(vec2<i32>(-1i, -56698i)) | countOneBits(-vec2<i32>(var_1.a, var_2.x))) >> (_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.c.x, u_input.c.x)), u_input.b.xx) % vec2<u32>(32u)));
    var_0 = u_input.a;
    var_0 = abs(min(_wgslsmith_div_u32(27833u | (u_input.b.x << (10410u % 32u)), _wgslsmith_clamp_u32(firstTrailingBit(0u), 74121u | u_input.a, reverseBits(u_input.b.x))), ~15811u));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(reverseBits(u_input.b.x), _wgslsmith_sub_u32(0u, u_input.a)), 4294967295u), ~1u | (reverseBits(u_input.c.x) ^ u_input.a), _wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(select(43627u, 1u, false), u_input.a))), _wgslsmith_clamp_vec3_u32(reverseBits(~min(u_input.b, u_input.c)), (~u_input.c & ~u_input.c) >> (~(~u_input.b) % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_u32(u_input.c, u_input.b ^ vec3<u32>(u_input.c.x, 0u, 4294967295u)), ~(~u_input.b), _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x) == var_1.b.x)));
    var var_4 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-2147483647i), _wgslsmith_mult_i32(var_1.c, func_3() | select(var_1.c, var_2.x, false)), var_2.x, var_1.c), min(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, -46019i, var_1.a), abs(vec3<i32>(0i, var_2.x, -2147483647i))), max(~vec3<i32>(3878i, var_2.x, 0i), vec3<i32>(6559i, var_1.a, -1i) & vec3<i32>(-18604i, 629i, var_1.a))), 8983i), _wgslsmith_f_op_vec3_f32(exp2(var_1.b.yww)), _wgslsmith_f_op_f32(var_1.b.x * 180f));
}

