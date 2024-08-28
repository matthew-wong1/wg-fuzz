struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: f32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<i32>) -> vec3<u32> {
    var var_0 = -1i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-249f, _wgslsmith_f_op_f32(-1118f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f - 1055f))), true)));
    var_0 = 1i & _wgslsmith_div_i32(select(abs(arg_2.x), 26683i, any(vec3<bool>(arg_1, false, false))), -1i);
    return vec3<u32>(~((u_input.b | 0u) | 1u), _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(22905u, 48598u, 0u)), abs(vec3<u32>(u_input.b, 0u, u_input.b)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(22902u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, 0u))), countOneBits(u_input.b | ~u_input.b)) & _wgslsmith_add_vec3_u32(vec3<u32>(abs(~27336u), _wgslsmith_clamp_u32(u_input.b, 0u, u_input.b) << (_wgslsmith_add_u32(u_input.b, u_input.b) % 32u), _wgslsmith_mult_u32(u_input.b, u_input.b)), vec3<u32>(1u, abs(u_input.b), ~_wgslsmith_mod_u32(u_input.b, 0u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = ~(~arg_1.c);
    var var_1 = abs(arg_1.c) ^ func_3(false, arg_1.b.c.x, -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, -9728i), vec4<i32>(-20672i, 1i, -1i, 6814i), vec4<i32>(arg_1.a.b.x, -1i, arg_1.a.b.x, arg_1.a.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(31869i, 16026i, arg_1.a.d, arg_1.a.d), vec4<i32>(arg_1.a.b.x, arg_1.b.d, 5931i, arg_1.a.d)), true));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -109f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 387f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -409f)))), arg_1.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.x, 1872f, arg_0.x), var_2.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, var_2.a.x, arg_0.x) + vec3<f32>(-800f, arg_0.x, var_2.a.x)))))));
    var_3 = var_2.a;
    return var_2;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<u32>) -> vec2<bool> {
    return vec2<bool>(arg_2.b.c.x, all(vec3<bool>(arg_1.a.c.x || true, false, 4294967295u > ~arg_3.x)));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)) * _wgslsmith_f_op_f32(abs(-1377f)));
    var var_1 = var_0;
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 648f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0), false)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))))), Struct_3(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, var_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 189f))), Struct_3(Struct_1(u_input.b, vec3<i32>(0i, u_input.a, u_input.a), vec4<bool>(false, arg_1.x, arg_0, false), u_input.a), func_2(vec2<f32>(var_0, 309f), Struct_3(Struct_1(u_input.b, vec3<i32>(1389i, 1i, u_input.a), vec4<bool>(false, arg_1.x, true, true), u_input.a), Struct_1(u_input.b, vec3<i32>(-26580i, -13373i, u_input.a), vec4<bool>(arg_0, arg_1.x, arg_0, arg_1.x), 1i), vec3<u32>(u_input.b, 0u, 57135u))).b, vec3<u32>(u_input.b, u_input.b, 1u) >> (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)))).b, func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(-654f, 2175f))), Struct_3(Struct_1(5815u, vec3<i32>(53362i, 2147483647i, -195i), vec4<bool>(false, true, false, true), 6205i), Struct_1(0u, vec3<i32>(-38164i, u_input.a, 57503i), vec4<bool>(true, true, arg_0, false), 1i), vec3<u32>(36876u, 24715u, 4294967295u))).b, vec3<u32>(1u, func_2(vec2<f32>(-1949f, -825f), Struct_3(Struct_1(1u, vec3<i32>(u_input.a, 95804i, u_input.a), vec4<bool>(arg_0, arg_0, true, true), 41035i), Struct_1(0u, vec3<i32>(u_input.a, u_input.a, 84161i), vec4<bool>(arg_1.x, false, arg_0, false), u_input.a), vec3<u32>(25404u, 20844u, u_input.b))).b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 19824u, 1605u), vec3<u32>(u_input.b, 1u, 1u)) | u_input.b))).b;
    let var_3 = select(var_2.c, !vec4<bool>(true, _wgslsmith_f_op_f32(var_0 + 1215f) <= -860f, var_2.c.x, all(arg_1) | true), arg_0 && true);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1255f, -1965f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1775f, var_0), -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -489f))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1549f - _wgslsmith_div_f32(-600f, var_0)), _wgslsmith_f_op_f32(max(125f, var_4.x)), 749f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, -1198f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-301f)), var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(180f - -1000f)), _wgslsmith_f_op_f32(-1064f + var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, -1357f, var_4.x, var_0), vec4<f32>(var_0, var_4.x, -1714f, -1062f)) + vec4<f32>(433f, var_0, -1562f, 117f)) + vec4<f32>(var_0, func_2(var_4.yz, Struct_3(Struct_1(1u, var_2.b, vec4<bool>(var_2.c.x, true, arg_1.x, arg_0), var_2.b.x), Struct_1(u_input.b, vec3<i32>(1i, 57281i, -29948i), var_2.c, u_input.a), vec3<u32>(2531u, 1u, 19124u))).a.x, _wgslsmith_div_f32(203f, 1304f), _wgslsmith_f_op_f32(select(var_0, -545f, arg_1.x)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1608f)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_4.x * 505f), _wgslsmith_f_op_f32(max(130f, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_0, var_0, -728f)))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(!arg_1.b.c.x, func_4(arg_1.c.x, Struct_3(Struct_1(25941u, arg_0.a.b, arg_0.a.c, arg_0.b.b.x), Struct_1(arg_0.c.x, arg_1.a.b, arg_1.a.c, 0i), vec3<u32>(1u, u_input.b, 4294967295u)), func_2(vec2<f32>(658f, -781f), arg_0), vec3<u32>(93866u, 22793u, 57169u) & arg_0.c)))));
    var var_1 = 844f;
    let var_2 = _wgslsmith_dot_vec4_i32(select(~vec4<i32>(u_input.a, arg_0.b.b.x, arg_1.a.d ^ u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 23305i), vec3<i32>(arg_0.b.b.x, arg_1.a.b.x, u_input.a))), reverseBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 2147483647i, -18573i), vec4<i32>(24822i, -39641i, 1i, arg_1.a.b.x))), vec4<bool>(!(!arg_2.x), select(arg_1.a.c.x, any(vec2<bool>(false, arg_0.b.c.x)), var_0.x <= var_0.x), !arg_2.x, !arg_0.b.c.x & true)), _wgslsmith_div_vec4_i32(~min(vec4<i32>(arg_1.b.b.x, arg_0.b.d, arg_0.a.b.x, -2147483647i), vec4<i32>(14122i, -92546i, arg_1.a.d, u_input.a)), -(vec4<i32>(-2147483647i, arg_1.b.b.x, arg_0.b.b.x, -2147483647i) & vec4<i32>(-2147483647i, arg_1.b.d, -43403i, u_input.a))) & firstTrailingBit((vec4<i32>(-31034i, 21580i, u_input.a, arg_0.b.d) | vec4<i32>(u_input.a, arg_1.a.d, u_input.a, u_input.a)) ^ min(vec4<i32>(arg_1.a.d, arg_0.a.b.x, 0i, -31782i), vec4<i32>(u_input.a, arg_1.b.d, -43591i, arg_0.a.b.x))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_5(false, vec2<bool>(arg_2.x, false))).x + var_0.x)), var_0.x)));
    var_1 = -1674f;
    return 1000f;
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    var var_0 = -9203i;
    var_0 = (func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.zz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(666f, -147f))), Struct_3(arg_0.b, arg_0.b, ~vec3<u32>(arg_0.b.a, u_input.b, 23653u))).b.d >> (_wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(7033u, 0u, u_input.b, arg_0.b.a), vec4<u32>(1u, u_input.b, 1u, arg_0.b.a))), ~(~arg_0.b.a)) % 32u)) & -1i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, 1298f, -1252f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1507f, -271f, -355f) - vec3<f32>(-458f, -1411f, -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(8383u, vec3<i32>(u_input.a, -28636i, -2147483647i), vec4<bool>(false, true, true, true), u_input.a), Struct_1(35696u, vec3<i32>(19628i, u_input.a, -24514i), vec4<bool>(false, false, true, true), -38440i), vec3<u32>(63295u, u_input.b, u_input.b)), Struct_3(Struct_1(u_input.b, vec3<i32>(u_input.a, -36784i, -40156i), vec4<bool>(true, true, true, true), u_input.a), Struct_1(73812u, vec3<i32>(u_input.a, u_input.a, 2147483647i), vec4<bool>(false, true, false, false), 0i), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(195f)), _wgslsmith_f_op_f32(-982f + -1000f))), Struct_1(66049u, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, -1i, u_input.a)) ^ vec3<i32>(-2147483647i, u_input.a, 1i), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(true, true, true)), true), _wgslsmith_div_i32(-2147483647i, 1i))), !(false && any(vec2<bool>(false, false))) & false);
    let var_1 = select(67287i, _wgslsmith_add_i32(-(~(var_0.b.d >> (u_input.b % 32u))), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.d, 42353i) ^ vec2<i32>(-1i, u_input.a), vec2<i32>(var_0.b.d, -18691i) << (vec2<u32>(46292u, 38395u) % vec2<u32>(32u))))), any(select(func_4(_wgslsmith_add_u32(u_input.b, 1585u), Struct_3(Struct_1(69540u, vec3<i32>(-33115i, -1i, u_input.a), vec4<bool>(false, var_0.b.c.x, var_0.b.c.x, false), 39941i), Struct_1(1u, vec3<i32>(6838i, u_input.a, u_input.a), var_0.b.c, -1i), vec3<u32>(u_input.b, u_input.b, u_input.b)), func_2(var_0.a.xx, Struct_3(Struct_1(var_0.b.a, vec3<i32>(-1i, -13131i, -20119i), var_0.b.c, var_0.b.d), var_0.b, vec3<u32>(14444u, 75276u, var_0.b.a))), firstLeadingBit(vec3<u32>(0u, var_0.b.a, 1u))), func_2(_wgslsmith_f_op_vec2_f32(-var_0.a.xy), Struct_3(var_0.b, Struct_1(12547u, var_0.b.b, vec4<bool>(true, false, var_0.b.c.x, var_0.b.c.x), 1i), vec3<u32>(0u, 1u, u_input.b))).b.c.yw, var_0.b.c.x)));
    let var_2 = var_0.b.b.x;
    var_0 = func_6(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_0.a.x, -910f, var_0.a.x)), vec3<f32>(var_0.a.x, 1280f, var_0.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(660f, var_0.a.x, -1030f))), func_6(func_2(var_0.a.yz, Struct_3(Struct_1(0u, var_0.b.b, var_0.b.c, var_1), var_0.b, vec3<u32>(var_0.b.a, u_input.b, 58300u))), select(!var_0.b.c.x, var_0.a.x <= var_0.a.x, 1068f != var_0.a.x)).b), (false & all(!var_0.b.c)) | all(select(vec3<bool>(true, true, var_0.b.c.x), var_0.b.c.wzz, vec3<bool>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x))));
    var_0 = func_6(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-399f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x - -534f), -2659f)), var_0.b), select(var_0.b.c.x, 0i < (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(var_1, u_input.a, var_1, var_0.b.d)) & (var_0.b.b.x ^ 0i)), !(var_0.b.c.x && false) || true));
    let var_3 = Struct_3(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.a.zz * vec2<f32>(1247f, 328f)))), Struct_3(var_0.b, var_0.b, vec3<u32>(4294967295u, 0u, reverseBits(74233u)))).b, Struct_1(26350u, abs(~vec3<i32>(-13546i, var_0.b.b.x, var_1)), select(select(vec4<bool>(var_0.b.c.x, var_0.b.c.x, true, true), var_0.b.c, vec4<bool>(var_0.b.c.x, var_0.b.c.x, false, true)), var_0.b.c, !func_6(Struct_2(vec3<f32>(var_0.a.x, -923f, var_0.a.x), Struct_1(2762u, var_0.b.b, var_0.b.c, var_1)), false).b.c), countOneBits(_wgslsmith_mod_i32(~16412i, -2147483647i))), ~(~(vec3<u32>(u_input.b, 0u, u_input.b) ^ vec3<u32>(0u, 8188u, 64937u))) >> (vec3<u32>(~(~4294967295u), _wgslsmith_div_u32(29653u, u_input.b) >> (var_0.b.a % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(17034u, 12377u, var_0.b.a, var_0.b.a), vec4<u32>(1u, 18365u, var_0.b.a, u_input.b) << (vec4<u32>(43137u, 131457u, 4294967295u, u_input.b) % vec4<u32>(32u)))) % vec3<u32>(32u)));
    var var_4 = max(vec4<i32>(var_1, 1i, var_3.b.b.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(-2436i, var_1), 16178i)), vec4<i32>(_wgslsmith_sub_i32(1i, ~(~0i)), -_wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(-6403i, -2147483647i, -6214i)), reverseBits(~_wgslsmith_div_i32(var_0.b.b.x, var_1)), var_3.b.d));
    let var_5 = _wgslsmith_f_op_vec2_f32(var_0.a.yx * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-447f - var_0.a.x), var_0.a.x)), var_0.a.yx, func_4(_wgslsmith_clamp_u32(firstLeadingBit(var_3.a.a), func_6(Struct_2(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.b), var_3.b.c.x).b.a, abs(u_input.b)), var_3, Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(246f, -1000f, var_0.a.x))), func_6(Struct_2(vec3<f32>(var_0.a.x, var_0.a.x, -1026f), Struct_1(var_0.b.a, var_3.a.b, var_3.b.c, 0i)), true).b), ~vec3<u32>(u_input.b, u_input.b, var_3.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + -416f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) - 313f))), var_0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(972f + -1513f) - _wgslsmith_f_op_vec4_f32(func_5(var_3.b.c.x, var_3.a.c.wy)).x), var_3.a.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -707f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-295f))))), -2205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))), var_1, 4294967295u, 650f);
}

