struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(602f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1752f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(697f * -1000f), 313f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1109f * -1640f)), _wgslsmith_f_op_f32(f32(-1f) * -953f)), 1f), 1u);
    var var_1 = u_input.b >> (~(~max(u_input.c.x, u_input.c.x) | 86347u) % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.a.zx);
    var_1 = countOneBits(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(~(-1i), u_input.d), _wgslsmith_mod_i32(~(-14993i & arg_0.x), 1i), u_input.a.x | 19922i));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2126f))), 978f, var_0.a.x, _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-429f, var_0.a.x, -1124f, var_2.x), var_0.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(391f, var_2.x, -1007f, var_0.a.x), vec4<f32>(627f, -479f, -318f, 862f), vec4<bool>(true, true, false, false))), true))), 1u);
    return var_0.a;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(u_input.d, u_input.a.x, u_input.d, u_input.a.x)))), 70001u), ~(~vec3<i32>(~7648i, -u_input.d, abs(1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x - 425f), _wgslsmith_f_op_f32(arg_0.a.x - -116f), _wgslsmith_f_op_f32(876f + arg_0.a.x)), vec4<f32>(arg_0.a.x, arg_0.a.x, -790f, _wgslsmith_f_op_f32(-arg_0.a.x)))));
    var var_1 = var_0.a;
    var_0 = Struct_2(arg_0, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-3092f - arg_0.a.x), var_0.a.a.x, -1404f, _wgslsmith_f_op_f32(f32(-1f) * -726f)), firstLeadingBit(var_1.b)), u_input.a, var_0.a.a);
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.a * vec4<f32>(var_1.a.x, -307f, var_0.d.x, var_1.a.x))))), 1u);
    let var_2 = Struct_2(arg_0, var_0.b, u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(920f - 1143f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-115f - -575f), var_0.a.a.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(var_0.c.x, -2147483647i, u_input.a.x, -16227i))).x)) * arg_0.a));
    return false;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: u32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(165f, -1284f, 356f, -729f), vec4<f32>(-140f, -151f, 725f, -825f), arg_0)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -936f, -1513f, 1346f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1170f)) - _wgslsmith_f_op_f32(abs(-426f))), -334f, -2235f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-353f)) - _wgslsmith_f_op_f32(f32(-1f) * -405f))))), 1u);
    let var_1 = Struct_2(var_0, var_0, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, u_input.d), vec3<i32>(78401i, -48420i, 0i)), -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.b, -74338i), ~vec4<i32>(1i, u_input.b, u_input.d, 1i))), u_input.a.x, u_input.d), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b, -2147483647i, u_input.d, u_input.a.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, 43110i, u_input.a.x)), u_input.b <= -28453i), max(min(vec4<i32>(1449i, 0i, -25204i, 2147483647i), vec4<i32>(u_input.d, u_input.a.x, 2147483647i, 2147483647i)), vec4<i32>(-2734i, -13871i, u_input.a.x, 50429i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(3558i, -22769i, -32905i, -15136i)) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, u_input.d, u_input.d), vec4<i32>(1i, -17259i, -1i, u_input.d))))));
    var var_2 = any(!(!vec4<bool>(arg_0, arg_0, true, arg_0)));
    var var_3 = firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(u_input.d, u_input.a.x), u_input.d, reverseBits(select(var_1.c.x & u_input.b, min(var_1.c.x, 1i), all(vec2<bool>(arg_0, false)))), u_input.d ^ (-1i >> (1u % 32u))));
    var_2 = true;
    return true;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 970f;
    var var_1 = arg_0.b.a;
    var_1 = arg_0.d;
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.d))));
    let var_2 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true)) == func_4((79774i < _wgslsmith_sub_i32(-2147483647i, arg_0.c.x)) && select(func_2(Struct_1(arg_0.d, arg_0.b.b)), true, true), u_input.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(2669u, 4294967295u, 1u), vec3<u32>(arg_0.a.b, arg_0.b.b, 56437u)) << (~11071u % 32u));
    return arg_0;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = arg_1.a;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1747f, _wgslsmith_div_f32(arg_1.b.a.x, _wgslsmith_f_op_f32(1073f * 1196f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -559f) * arg_3.b.a), _wgslsmith_add_u32(arg_3.a.b, arg_3.a.b));
    var_1 = arg_3.a;
    let var_2 = arg_3;
    let var_3 = _wgslsmith_add_vec2_i32(firstTrailingBit(u_input.a.yx), vec2<i32>(-30641i, _wgslsmith_add_i32(1i, arg_3.c.x)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~(-13191i)), _wgslsmith_add_i32(u_input.a.x, u_input.d), abs(select(~(~vec4<u32>(u_input.c.x, u_input.c.x, 68449u, u_input.c.x)), vec4<u32>(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, 60441u)), 1u, _wgslsmith_div_u32(u_input.c.x, u_input.c.x)), any(vec4<bool>(true, true, true, true)))), min(func_5(u_input.a.yy, func_1(Struct_2(Struct_1(vec4<f32>(728f, 2407f, 216f, 109f), u_input.c.x), Struct_1(vec4<f32>(381f, -142f, 995f, -312f), 4294967295u), u_input.a, vec4<f32>(890f, 620f, 1286f, -1736f))), true, Struct_2(Struct_1(vec4<f32>(-262f, -936f, 1485f, 1345f), 1u), func_1(Struct_2(Struct_1(vec4<f32>(224f, -1742f, 526f, 191f), u_input.c.x), Struct_1(vec4<f32>(3724f, 118f, 758f, -265f), 4294967295u), vec3<i32>(0i, u_input.b, -1i), vec4<f32>(1089f, -177f, 127f, -1413f))).b, u_input.a ^ vec3<i32>(u_input.b, 63256i, -2147483647i), vec4<f32>(-1601f, 577f, -365f, -1046f))), u_input.c.x), ~(~_wgslsmith_mod_u32(~u_input.c.x, select(18758u, 4294967295u, true))));
}

