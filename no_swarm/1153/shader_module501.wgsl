struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    var var_0 = 0u;
    var var_1 = min(vec2<i32>(4074i, _wgslsmith_dot_vec3_i32(-u_input.d.wyw ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-48654i, arg_1.x, u_input.e), vec3<i32>(-2147483647i, u_input.e, 83376i), u_input.a.xwx), countOneBits(u_input.d.ywy))), vec2<i32>(7879i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_2.c, -100997i) << (countOneBits(47521u) % 32u), -_wgslsmith_sub_i32(arg_1.x, arg_2.c))));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -124f), -131f, arg_3) + _wgslsmith_f_op_vec4_f32(vec4<f32>(350f, arg_2.a.x, _wgslsmith_f_op_f32(sign(415f)), -755f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, 309f, -881f, arg_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, arg_0.x, arg_2.a.x, arg_2.a.x)))))));
    let var_3 = vec4<u32>(min(u_input.b, countOneBits(_wgslsmith_div_u32(u_input.b >> (u_input.c.x % 32u), 1u))), firstLeadingBit(u_input.c.x), 1u, countOneBits(_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(~u_input.b, 1u))));
    var var_4 = vec2<u32>(36492u << (~(~(0u | u_input.b)) % 32u), firstLeadingBit(countOneBits(_wgslsmith_mult_u32(4294967295u ^ u_input.b, _wgslsmith_dot_vec4_u32(var_3, vec4<u32>(var_3.x, 18242u, 0u, u_input.b))))));
    return vec3<bool>(_wgslsmith_div_i32(min(_wgslsmith_div_i32(-2147483647i, 28703i), 1i), ~abs(arg_2.c)) > _wgslsmith_dot_vec2_i32(abs(u_input.d.yx), vec2<i32>(-2147483647i, max(arg_1.x, arg_1.x))), arg_2.b.x, arg_2.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = vec4<bool>(!((u_input.c.x << (firstLeadingBit(u_input.b) % 32u)) <= 0u), false, arg_2.b.x || arg_2.b.x, any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0.c, arg_3.c), u_input.d.zx | ~select(vec2<i32>(arg_3.c, arg_0.c), u_input.d.zx, false), !arg_3.b.x), reverseBits(vec2<i32>(~arg_0.c, abs(reverseBits(arg_0.c)))));
    let var_2 = (firstLeadingBit(vec4<u32>(4294967295u, u_input.c.x, u_input.b, 53077u) ^ firstLeadingBit(vec4<u32>(u_input.c.x, 1u, 4294967295u, 4294967295u))) | ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) | vec4<u32>(0u, 1877u, 41503u, u_input.c.x), select(vec4<u32>(u_input.b, 63407u, u_input.c.x, 7320u), vec4<u32>(4686u, 36019u, 41176u, u_input.b), vec4<bool>(true, true, true, false)))) & vec4<u32>(~u_input.b, select(4294967295u ^ u_input.c.x, u_input.c.x, true), ~18520u, reverseBits(abs(u_input.b >> (25574u % 32u))));
    let var_3 = !(!any(vec2<bool>(arg_3.a.x >= arg_2.a.x, true)));
    let var_4 = arg_2.b.x;
    return vec2<f32>(arg_2.a.x, _wgslsmith_div_f32(1308f, arg_1));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(f32(-1f) * -146f)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -43649i), _wgslsmith_f_op_f32(-709f * -1840f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-845f, -1379f))), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-517f, -536f) - vec2<f32>(-1625f, 512f)), ~vec2<i32>(u_input.d.x, u_input.a.x), Struct_1(vec2<f32>(-234f, 1175f), vec3<bool>(false, true, true), 19406i), _wgslsmith_f_op_f32(f32(-1f) * -140f)), _wgslsmith_sub_i32(u_input.d.x, -40710i) >> (1u % 32u)), Struct_1(vec2<f32>(_wgslsmith_div_f32(439f, -1073f), _wgslsmith_f_op_f32(-1000f - -387f)), vec3<bool>(true, true, true), reverseBits(52474i) | firstTrailingBit(-2147483647i)))), select(vec3<bool>(true, true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(u_input.b <= 55144u, true, false)), any(vec4<bool>(true, true, true, true))), _wgslsmith_add_i32(-15693i, reverseBits(-u_input.a.x)));
    return _wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(39919i, u_input.d.x) << (u_input.c.xx % vec2<u32>(32u)), vec2<i32>(var_0.c, -20094i)), u_input.e), vec3<i32>(1i, ~(~u_input.e), -u_input.d.x)), _wgslsmith_clamp_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-31980i, var_0.c, u_input.a.x), u_input.d.wwy), ~(-vec3<i32>(u_input.e, -21441i, u_input.d.x)), true), vec3<i32>(abs(u_input.e), u_input.a.x, -57367i), -vec3<i32>(max(3017i, var_0.c), min(var_0.c, u_input.a.x), var_0.c)));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), !(!vec3<bool>(true, arg_1 == arg_1, true)), (_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 23636i, u_input.a.x, u_input.e), _wgslsmith_mult_vec4_i32(u_input.a, u_input.a)) & (u_input.d.x ^ ~u_input.d.x)) & 0i);
    var var_1 = u_input.d.x;
    var_1 = countOneBits(-func_2());
    let var_2 = var_0.a;
    let var_3 = vec4<u32>(abs(10541u | abs(arg_0.x)), reverseBits(23172u), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.x, 4294967295u), u_input.b ^ 12043u) >> (57387u % 32u), min(~4294967295u, 71496u << (u_input.b % 32u)) & ~abs(1u)) | vec4<u32>(~(~(~u_input.c.x)), _wgslsmith_mult_u32(5964u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.c.x), arg_0.yy)), 26936u, 0u);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1210f, -467f)), _wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(0u, u_input.b, 27588u), _wgslsmith_f_op_f32(270f * 1257f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1572f)), _wgslsmith_f_op_f32(sign(1953f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(1u, u_input.b, u_input.c.x), 569f))))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(379f, -1233f) * vec2<f32>(-153f, 574f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(934f, -733f))))), vec2<i32>(1i, u_input.d.x), Struct_1(vec2<f32>(_wgslsmith_div_f32(-1497f, 354f), _wgslsmith_f_op_f32(trunc(1319f))), select(func_3(vec2<f32>(321f, 173f), vec2<i32>(u_input.e, -3967i), Struct_1(vec2<f32>(1133f, -611f), vec3<bool>(true, false, false), 19042i), 556f), func_3(vec2<f32>(383f, 242f), vec2<i32>(18987i, -2147483647i), Struct_1(vec2<f32>(1261f, 498f), vec3<bool>(false, true, true), 1i), -361f), vec3<bool>(true, true, true)), u_input.e), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1100f)), _wgslsmith_f_op_f32(-1000f * 1000f))))), firstLeadingBit(~abs(_wgslsmith_div_i32(-2510i, -8629i))));
    let var_1 = vec3<u32>(23943u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(27522u, _wgslsmith_clamp_u32(~1u, 4294967295u, ~0u)), ~select(1u, u_input.c.x, func_3(vec2<f32>(-451f, 1187f), vec2<i32>(var_0.c, u_input.a.x), Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), vec3<bool>(false, var_0.b.x, var_0.b.x), var_0.c), var_0.a.x).x)), ~(~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b) >> (1u % 32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1444f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2280f, var_0.a.x)) + _wgslsmith_f_op_f32(-var_0.a.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x))) + var_0.a.x) + _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(floor(1557f)))));
    var var_3 = -1000f != _wgslsmith_f_op_f32(-var_0.a.x);
    var var_4 = var_0;
    let var_5 = var_0;
    var_3 = true;
    let var_6 = var_0.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-307f, -1157f, var_4.a.x) * vec3<f32>(-325f, var_5.a.x, var_5.a.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1034f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-956f)))), var_5.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_4.a.x)), _wgslsmith_div_f32(var_5.a.x, _wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_dot_vec3_u32(~select(var_1, vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<bool>(false, false, true)), vec3<u32>(u_input.c.x | u_input.c.x, 1u, 4294967295u)) >> (u_input.b % 32u), min(-select(u_input.d, u_input.a, !vec4<bool>(true, var_0.b.x, false, false)), vec4<i32>(var_5.c, select(_wgslsmith_sub_i32(3902i, var_4.c), -5433i, var_5.b.x), -(~1i), -var_5.c)), (_wgslsmith_dot_vec3_u32(var_1, u_input.c) ^ 0u) >> (18438u % 32u));
}

