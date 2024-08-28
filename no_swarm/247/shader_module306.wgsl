struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -560f), -1855f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1233f, -530f), vec2<f32>(791f, 367f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1526f, 1666f))))), _wgslsmith_div_vec2_f32(vec2<f32>(1170f, 943f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-476f, -401f))), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)))));
    let var_1 = Struct_2(Struct_1(-2147483647i, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a, 12112u), abs(u_input.b.x), 89185u, ~4294967295u), _wgslsmith_mod_vec4_u32(~vec4<u32>(78866u, 18451u, u_input.d, 12682u), vec4<u32>(0u, u_input.c.x, u_input.d, 15598u) ^ vec4<u32>(1u, u_input.c.x, 27170u, 0u)), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(1u, u_input.a, 58588u, u_input.a)), ~vec4<u32>(4294967295u, 13866u, 0u, 23359u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1949f + var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x))))), -27635i, ~u_input.a), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return select(!(!(!(!vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)))), !(!vec4<bool>(var_1.b.x, var_0.x < var_1.a.c, false, false | var_1.b.x)), select(!vec4<bool>(all(var_1.b.yz), any(var_1.b.zx), true, var_1.a.a != u_input.e), select(select(!vec4<bool>(false, true, false, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true), true), select(select(vec4<bool>(true, var_1.b.x, var_1.b.x, true), vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(true, true, var_1.b.x, true)), vec4<bool>(false, var_1.b.x, false, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true)), select(!vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x), !vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), !vec4<bool>(var_1.b.x, true, false, false))), true));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>((arg_2.x & u_input.d) <= ~23120u, false, select(true, true, true), true), true), func_3(abs(-(~(-17467i)))), true);
    var var_1 = -1861f;
    let var_2 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_clamp_i32(countOneBits(arg_1.x), arg_1.x, ~arg_1.x)), arg_0.b << (vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.d), ~arg_0.e, ~36213u, 0u) % vec4<u32>(32u)), arg_0.c, _wgslsmith_clamp_i32(max(arg_1.x, -70993i), _wgslsmith_div_i32(_wgslsmith_mod_i32(-17950i, 33409i), arg_0.d), 2147483647i), _wgslsmith_mod_u32(~34744u, _wgslsmith_dot_vec4_u32(vec4<u32>(8268u, arg_0.e, 1u, arg_2.x), arg_0.b) >> (~arg_2.x % 32u))), var_0.yyy);
    var var_3 = Struct_1(arg_1.x, vec4<u32>(min(77153u, 8521u), arg_0.b.x, 81341u, _wgslsmith_mult_u32(~(~1u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_2.x, u_input.b.x), arg_2.x ^ u_input.b.x, abs(1u)))), 2315f, _wgslsmith_dot_vec3_i32(~max(vec3<i32>(arg_0.d, var_2.a.d, -1i), vec3<i32>(u_input.e, var_2.a.a, 34820i)), min(-_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_2.a.d, 2147483647i), vec3<i32>(arg_1.x, arg_1.x, arg_1.x)), -vec3<i32>(u_input.e, 1i, var_2.a.a))), arg_0.b.x);
    let var_4 = -var_2.a.a;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-407f, 459f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c, -376f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-621f, var_3.c), vec2<f32>(arg_0.c, -444f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2500f, var_3.c)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c, arg_0.c), vec2<f32>(-1402f, var_2.a.c), vec2<bool>(var_2.b.x, true))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(821f, arg_0.c), vec2<f32>(var_3.c, -1196f)))))))));
}

fn func_1() -> vec3<f32> {
    let var_0 = vec2<u32>(select(~u_input.b.x, _wgslsmith_add_u32(u_input.d, 86874u), select(true, false, true)), u_input.b.x >> (~u_input.a % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-798f, 824f), -1000f)), _wgslsmith_f_op_f32(ceil(-1450f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1460f, 1008f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_1(29332i, vec4<u32>(4294967295u, 27108u, var_0.x, u_input.c.x), 452f, 26474i, 1u), vec2<i32>(-1i, u_input.e), vec3<u32>(u_input.a, var_0.x, 4294967295u)))), true & select(true, false, false)))), vec2<bool>(!(!any(vec2<bool>(false, true))), true)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.x, var_1.x))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false))))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -158f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_div_f32(var_1.x, var_1.x), any(vec2<bool>(true, true)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_1()).x;
    var_0 = -2248f;
    let var_1 = Struct_1(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-16881i, -15631i, u_input.e), vec3<i32>(arg_2, 0i, u_input.e)), firstLeadingBit(vec3<i32>(u_input.e, 51933i, 0i)) >> (u_input.b % vec3<u32>(32u)))), abs(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 1u, 62430u), vec4<u32>(u_input.d, u_input.a, u_input.d, u_input.b.x)), vec4<u32>(1u, 1u, u_input.b.x, 4053u)), u_input.d, ~u_input.d)), 1317f, -reverseBits(-arg_2), ~(0u & _wgslsmith_clamp_u32(u_input.a, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 24082u, 4294967295u), vec4<u32>(9296u, u_input.d, 0u, u_input.d)))));
    let var_2 = Struct_2(Struct_1(-33932i, ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(10367u, u_input.c.x, var_1.b.x, 4294967295u), vec4<u32>(var_1.e, 4294967295u, 0u, var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)))), firstTrailingBit(~(6487i >> (u_input.b.x % 32u))), var_1.b.x), !select(!func_3(arg_2).xwz, vec3<bool>(false, true, u_input.d >= 99726u), all(vec3<bool>(true, true, true))));
    var var_3 = Struct_2(var_2.a, vec3<bool>(!(!var_2.b.x), any(select(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x), var_2.b, !var_2.b.x)), func_3(abs(1i)).x));
    return Struct_1(var_2.a.a, ~vec4<u32>(39193u, 1u, _wgslsmith_add_u32(var_3.a.b.x >> (u_input.c.x % 32u), ~4294967295u), firstLeadingBit(~var_1.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-172f)) * -2176f)), 1766f)), 2147483647i, ~(50821u >> (firstTrailingBit(~0u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(0u, ~firstTrailingBit(u_input.b.x));
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1181f, -1379f, -287f), vec3<f32>(2475f, 828f, 523f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()))), 1432f, -countOneBits(u_input.e | 0i)), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, true, true, true)) && false, all(vec4<bool>(true, true, false, true))), select(vec3<bool>(u_input.e < u_input.e, true, u_input.b.x <= 0u), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)))));
    var var_2 = min(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.d, _wgslsmith_mult_i32(15307i, var_1.a.a) & -2147483647i, 2147483647i, 17338i), vec4<i32>(~42541i, _wgslsmith_sub_i32(-10460i, 26287i), countOneBits(u_input.e), 1i) | ~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -16729i, -2147483647i, -12646i), vec4<i32>(u_input.e, var_1.a.a, 1i, u_input.e))), ~(vec4<i32>(u_input.e, u_input.e, u_input.e, countOneBits(var_1.a.d)) << ((vec4<u32>(u_input.a, 4294967295u, 59038u, var_1.a.e) << (vec4<u32>(u_input.a, var_1.a.b.x, u_input.a, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.c)));
    var var_4 = Struct_2(func_4(vec3<f32>(var_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(var_1.a, var_2.ww, var_1.a.b.wxz)).x * _wgslsmith_f_op_f32(f32(-1f) * -2184f)), _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_1.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.c * 2136f), _wgslsmith_f_op_f32(sign(var_1.a.c))))), _wgslsmith_clamp_i32(-var_1.a.a & (-2147483647i << (var_1.a.e % 32u)), abs(-1i), 5100i)), select(vec3<bool>(u_input.e >= _wgslsmith_div_i32(var_2.x, u_input.e), true, false), var_1.b, var_1.b));
    var_4 = var_1;
    let var_5 = 74785u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.c, _wgslsmith_f_op_f32(max(var_1.a.c, -268f)), reverseBits(abs(~(-var_2.www))), _wgslsmith_sub_i32(firstTrailingBit(24325i) >> (_wgslsmith_clamp_u32(34478u, 77470u, 4294967295u) % 32u), 1i) & _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.a.d, var_4.a.d), var_2.wx), _wgslsmith_add_vec4_u32(~var_1.a.b, ~abs(func_4(vec3<f32>(-186f, 220f, var_4.a.c), -1036f, var_2.x).b)));
}

