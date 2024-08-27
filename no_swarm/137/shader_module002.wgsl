struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_5, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>) -> u32 {
    global1 = array<Struct_5, 31>();
    let var_0 = Struct_2(317i, Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 825f, 587f, arg_0.x), vec4<f32>(-3256f, 652f, -438f, 403f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-271f, arg_0.x, -537f, arg_0.x) * vec4<f32>(-242f, arg_0.x, 395f, -1385f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1844f, 495f, arg_0.x))))), ~1u);
    let var_1 = abs(vec2<u32>(select(u_input.c, u_input.c | 79718u, all(arg_1.ww)) & 22289u, ~_wgslsmith_div_u32(80362u, var_0.c)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.a.x)))), _wgslsmith_f_op_f32(-1080f * -927f)));
    global1 = array<Struct_5, 31>();
    return ~firstLeadingBit(var_1.x);
}

fn func_2() -> bool {
    global0 = -635f;
    var var_0 = Struct_2(-u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(249f, 542f, 1000f, 152f))))) * vec4<f32>(-421f, _wgslsmith_f_op_f32(min(628f, 1958f)), _wgslsmith_f_op_f32(1747f + 1040f), _wgslsmith_div_f32(-1031f, -473f)))), func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1284f, -565f, _wgslsmith_f_op_f32(f32(-1f) * -183f)))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false))));
    let var_1 = var_0.b.a.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(177f)) + 272f);
    global1 = array<Struct_5, 31>();
    return false;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_2 {
    global1 = array<Struct_5, 31>();
    let var_0 = select(arg_2, arg_2, arg_2.x);
    var var_1 = _wgslsmith_add_i32(~firstLeadingBit(-1i) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c, 1u, 6465u, arg_1.c)), min(vec4<u32>(arg_1.c, arg_1.c, 17142u, 3524u), vec4<u32>(21157u, u_input.c, 21977u, arg_1.c))) % 32u), arg_1.a) | 2147483647i;
    let var_2 = arg_1.b;
    var var_3 = Struct_3(i32(-1i) * -2147483647i, arg_1, i32(-1i) * -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(8612i, arg_3.x, -1i)));
    return Struct_2(_wgslsmith_clamp_i32(arg_0, 1i, 23296i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_3.b.b.a)))), u_input.c);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(arg_1.b.a.x));
    let var_1 = arg_0.a > arg_1.a;
    let var_2 = Struct_3(min(arg_0.a, -17109i), arg_0, ~_wgslsmith_sub_i32(firstTrailingBit(~arg_0.a), -2147483647i));
    global0 = _wgslsmith_f_op_f32(1000f * arg_1.b.a.x);
    var var_3 = 3821u;
    return func_4(1i, arg_1, !vec4<bool>(func_2() || any(vec2<bool>(false, var_1)), var_1, !any(vec4<bool>(true, var_1, var_1, true)), var_1), vec3<i32>(1i, _wgslsmith_add_i32(var_2.a | arg_1.a, min(arg_1.a, _wgslsmith_add_i32(11706i, 25177i))), _wgslsmith_div_i32(firstLeadingBit(reverseBits(18020i)), ~var_2.c)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.b;
    var var_1 = func_1(arg_0, func_1(Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-38461i, u_input.a.x, -2147483647i, -20025i), vec4<i32>(-1i, -4512i, u_input.b, 0i)) | ~arg_0.a, func_1(arg_0, arg_0, -1000f, 1u).b, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(14747u, 39904u, arg_0.c), vec3<u32>(40128u, 4396u, 1u)))), Struct_2(u_input.b >> (firstLeadingBit(arg_0.c) % 32u), var_0, ~(~arg_0.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a.x, arg_0.b.a.x))), u_input.c), arg_0.b.a.x, arg_0.c | _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c, 1u) & u_input.c, select(min(arg_0.c, u_input.c), ~arg_0.c, all(vec2<bool>(false, true))))).c;
    let var_2 = arg_0.b.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.a.x)))));
    var_1 = 0u;
    return arg_0.b;
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_2.b.b.a.wzz), vec3<f32>(1000f, -162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.b.a.x) - arg_1)))));
    let var_1 = ~vec2<u32>(4294967295u, abs(arg_0.b.c));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1))))) + var_0.x);
    var var_3 = !select(true, !(select(false, true, true) & true), any(vec4<bool>(true, false, true, true)));
    let var_4 = vec2<u32>(arg_0.b.c, u_input.c);
    return vec2<bool>(any(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_3(select(min(-1i, 0i), reverseBits(_wgslsmith_sub_i32(u_input.b, u_input.b)), false), Struct_2(-1i, func_5(func_1(Struct_2(-19530i, Struct_1(vec4<f32>(1603f, -837f, 1190f, 1003f)), u_input.c), Struct_2(21885i, Struct_1(vec4<f32>(202f, 563f, -273f, -112f)), u_input.c), -1237f, u_input.c)), func_1(func_4(u_input.b, Struct_2(-32523i, Struct_1(vec4<f32>(-133f, -1412f, 1133f, 1528f)), 1473u), vec4<bool>(false, false, false, false), vec3<i32>(5972i, u_input.a.x, u_input.b)), Struct_2(u_input.a.x, Struct_1(vec4<f32>(597f, -1000f, 445f, 113f)), 19425u), -2018f, u_input.c).c), 0i), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(211f, 1020f))), Struct_3(firstLeadingBit(abs(u_input.b)), func_4(_wgslsmith_add_i32(-9718i, ~1681i), func_4(firstTrailingBit(5594i), Struct_2(0i, Struct_1(vec4<f32>(698f, 426f, -1721f, -446f)), 11681u), vec4<bool>(true, true, true, true), vec3<i32>(u_input.a.x, -1662i, 0i)), vec4<bool>(true, true, true, select(false, true, true)), abs(vec3<i32>(u_input.a.x, -8570i, u_input.a.x))), _wgslsmith_mod_i32(-67605i, u_input.a.x)));
    var var_1 = 16489i;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1418f) + _wgslsmith_f_op_f32(219f + _wgslsmith_f_op_f32(-447f + -519f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-889f * -1164f)))));
    var var_2 = func_1(func_1(func_4(u_input.a.x, Struct_2(u_input.b, func_1(Struct_2(-2147483647i, Struct_1(vec4<f32>(612f, 1949f, -1589f, -129f)), u_input.c), Struct_2(u_input.b, Struct_1(vec4<f32>(-1962f, -1228f, -966f, -1368f)), 7865u), 1000f, u_input.c).b, select(32252u, 0u, true)), select(vec4<bool>(false, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false)), true), vec3<i32>(11918i, u_input.a.x, u_input.b) & _wgslsmith_add_vec3_i32(vec3<i32>(38651i, u_input.b, u_input.a.x), u_input.a)), Struct_2(_wgslsmith_dot_vec2_i32(abs(u_input.a.zx), -vec2<i32>(0i, u_input.b)), Struct_1(vec4<f32>(-1957f, 2057f, 212f, 2856f)), ~_wgslsmith_add_u32(u_input.c, 58056u)), _wgslsmith_div_f32(214f, _wgslsmith_div_f32(func_5(Struct_2(u_input.b, Struct_1(vec4<f32>(-2111f, 523f, -539f, 949f)), 0u)).a.x, _wgslsmith_f_op_f32(-404f + 2037f))), ~(~(0u << (u_input.c % 32u)))), Struct_2(_wgslsmith_dot_vec2_i32(select(u_input.a.xz, vec2<i32>(u_input.a.x, u_input.a.x), var_0.x), u_input.a.zz) ^ u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(545f, -1347f, -1000f, 898f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-562f, 1849f, -430f, 741f), vec4<f32>(-1591f, -1000f, -269f, -417f))))), func_1(Struct_2(u_input.b >> (u_input.c % 32u), func_1(Struct_2(u_input.b, Struct_1(vec4<f32>(578f, -1080f, 805f, 1007f)), u_input.c), Struct_2(u_input.a.x, Struct_1(vec4<f32>(1000f, 197f, 1477f, 634f)), u_input.c), -619f, u_input.c).b, 4294967295u), func_1(func_4(-50378i, Struct_2(-34765i, Struct_1(vec4<f32>(-1000f, -162f, -1351f, 1663f)), 72623u), vec4<bool>(var_0.x, false, var_0.x, true), vec3<i32>(-41683i, 1i, u_input.a.x)), func_1(Struct_2(51928i, Struct_1(vec4<f32>(-1316f, 842f, -961f, 315f)), u_input.c), Struct_2(u_input.b, Struct_1(vec4<f32>(-1482f, 141f, 1961f, -840f)), u_input.c), -401f, u_input.c), _wgslsmith_f_op_f32(-358f * 689f), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(0u, 45157u, 6436u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1439f, -101f)) + _wgslsmith_f_op_f32(1563f * 604f)), ~u_input.c ^ 27581u).c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(520f - -1000f), 1037f, func_2())))))), 4294967295u << (~u_input.c % 32u));
    let var_3 = Struct_3(i32(-1i) * -(2147483647i << (func_1(Struct_2(-5721i, var_2.b, 66258u), Struct_2(u_input.a.x, Struct_1(var_2.b.a), 0u), var_2.b.a.x, 98502u).c % 32u)), Struct_2(-54925i, Struct_1(_wgslsmith_f_op_vec4_f32(var_2.b.a - _wgslsmith_f_op_vec4_f32(-var_2.b.a))), ~_wgslsmith_sub_u32(~24019u, 53286u)), 0i);
    let var_4 = Struct_2(-2147483647i, var_3.b.b, var_2.c | var_3.b.c);
    let var_5 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~select(vec4<u32>(var_3.b.c, var_2.c, 4294967295u, 44062u) << (vec4<u32>(var_5, 1u, 61689u, 0u) % vec4<u32>(32u)), vec4<u32>(var_2.c, 1u, var_5, u_input.c), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(var_4.a, var_4.a, 1255i)), u_input.a), _wgslsmith_f_op_vec4_f32(-var_4.b.a), 1i);
}

