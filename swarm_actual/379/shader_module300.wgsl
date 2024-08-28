struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> vec4<u32> {
    var var_0 = min(_wgslsmith_dot_vec4_u32(~max(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 63495u, 0u), vec4<u32>(u_input.a, 19363u, 31083u, 74491u)), min(vec4<u32>(15667u, u_input.a, u_input.a, 87340u), vec4<u32>(17928u, u_input.a, 4294967295u, 0u))), vec4<u32>(~(~u_input.a), 71958u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)), 4294967295u), abs(68625u) >> (u_input.a % 32u))), u_input.a);
    var var_1 = Struct_1(vec2<bool>(false, any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), any(vec3<bool>(true, false, false))))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(57i, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.a, 28771u, u_input.a) % vec3<u32>(32u)), u_input.b.zyx)), select(vec3<i32>(-2147483647i, ~u_input.b.x, firstLeadingBit(-5116i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 67671i, u_input.b.x), u_input.b.xxw), u_input.b.yxy | u_input.b.yyz), vec3<bool>(true, all(vec2<bool>(false, true)), true))), ~(countOneBits(5203u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 328u))) >= u_input.a);
    let var_2 = vec4<u32>(u_input.a, u_input.a, (32690u & _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 16526u, 1u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(70203u, 0u, 15715u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))) ^ u_input.a, 10443u);
    return ~max(~(~var_2) << (vec4<u32>(reverseBits(60607u), ~0u, ~4294967295u, u_input.a) % vec4<u32>(32u)), countOneBits(~abs(var_2)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_1(arg_1.xz, _wgslsmith_mult_vec3_i32(u_input.b.xyy, vec3<i32>(9107i, _wgslsmith_mod_i32(46262i, u_input.b.x) | ~u_input.b.x, 20079i)), any(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_1.x, true, false), arg_1.x)));
    let var_1 = all(arg_1.xy);
    var var_2 = _wgslsmith_mult_vec4_i32(countOneBits(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-26521i, var_0.b.x, 2147483647i, 32420i), vec4<i32>(1i, u_input.b.x, u_input.b.x, 0i)), -vec4<i32>(var_0.b.x, 15650i, u_input.b.x, -34011i), vec4<bool>(true, true, true, true))) << (~(~func_3(-869f, vec4<f32>(1000f, -1870f, -533f, 288f))) % vec4<u32>(32u)), u_input.b);
    let var_3 = vec4<u32>(~(abs(0u) >> (arg_0.x % 32u)), _wgslsmith_add_u32(4294967295u, abs(arg_0.x)), ~arg_0.x, _wgslsmith_mod_u32(99683u, _wgslsmith_dot_vec2_u32(~arg_0, vec2<u32>(arg_0.x, arg_0.x)))) << ((_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.a, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.x, arg_0.x, 3360u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a))), ~firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, 19375u, arg_0.x))) ^ (min(vec4<u32>(16116u, u_input.a, u_input.a, u_input.a), select(vec4<u32>(1u, 1u, u_input.a, 0u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 49865u), vec4<bool>(true, false, var_0.c, arg_1.x))) << ((vec4<u32>(38748u, u_input.a, u_input.a, arg_0.x) & vec4<u32>(u_input.a, arg_0.x, 1u, 1u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var_2 = _wgslsmith_mult_vec4_i32(u_input.b, ~vec4<i32>(var_2.x, u_input.b.x, -2147483647i, u_input.b.x));
    return -_wgslsmith_add_i32(~(~var_2.x), 22056i & u_input.b.x) > firstTrailingBit(_wgslsmith_mult_i32((var_0.b.x >> (16828u % 32u)) >> (reverseBits(1u) % 32u), 1i));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = vec4<bool>(select(true, arg_0.x, select(true, func_2(~vec2<u32>(13178u, 1u), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true)), false)), arg_0.x, (0u >> ((29899u & u_input.a) % 32u)) >= u_input.a, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(18421u, u_input.a, 4294967295u, u_input.a), vec4<u32>(32101u, u_input.a, u_input.a, u_input.a))) < u_input.a);
    let var_1 = u_input.a;
    var_0 = !select(vec4<bool>(true, (-1i & u_input.b.x) >= firstLeadingBit(-3730i), func_2(select(vec2<u32>(31845u, 0u), vec2<u32>(u_input.a, 20622u), var_0.xx), arg_0), true), vec4<bool>(false && select(arg_0.x, var_0.x, true), false, !(false == arg_0.x), all(!arg_0)), select(!vec4<bool>(false, arg_0.x, arg_0.x, true), !vec4<bool>(var_0.x, arg_0.x, true, var_0.x), var_0.x));
    let var_2 = Struct_2(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x), min(vec4<i32>(u_input.b.x, -2147483647i, 0i, 1i), u_input.b)), u_input.b), abs(-_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.b.x, 0i)), min(u_input.b.zzz, vec3<i32>(-2147483647i, 2147483647i, -1i)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1646f)) + _wgslsmith_f_op_f32(1000f * -322f))), 1517f, -1040f));
    let var_3 = vec4<u32>(_wgslsmith_mult_u32(abs(31251u), min(_wgslsmith_add_u32(max(var_1, 1u), var_1 << (u_input.a % 32u)), func_3(var_2.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(232f, arg_1.x, arg_1.x, arg_1.x) + vec4<f32>(737f, -1349f, 1000f, arg_1.x))).x)), _wgslsmith_clamp_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1, 4294967295u, u_input.a), vec4<u32>(var_1, var_1, 32472u, 1u)), max(0u, 1u)), ~4294967295u, _wgslsmith_clamp_u32(firstLeadingBit(18430u), var_1, 0u)) >> (0u % 32u), 1u, 12950u);
    return vec3<bool>(false, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ((abs(u_input.a) ^ 4294967295u) << (_wgslsmith_div_u32(abs(u_input.a) | 1u, 71300u) % 32u)) ^ u_input.a;
    var_1 = abs(69378u);
    var var_2 = !(!vec2<bool>(~84827u == u_input.a, any(vec4<bool>(true, true, true, true))));
    var var_3 = func_1(vec3<bool>(all(select(vec4<bool>(var_2.x, false, var_2.x, true), select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, false), false), true)), false, true), vec3<f32>(1f, -1454f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1029f, -1251f) + _wgslsmith_f_op_f32(-258f - 615f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(411f * 849f)))))));
    var_1 = abs(select(4294967295u, _wgslsmith_div_u32(abs(38625u), u_input.a) >> (u_input.a % 32u), false));
    let var_4 = Struct_2(u_input.b.x << (u_input.a % 32u), u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-895f, 1854f, -1000f) + vec3<f32>(394f, -1000f, -1293f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1293f, -753f, -840f), vec3<f32>(2041f, 1215f, 1159f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 758f, -731f)))));
    var var_5 = abs(_wgslsmith_add_vec4_i32(~u_input.b, u_input.b) >> (max(vec4<u32>(~4294967295u, 25390u, ~9699u, _wgslsmith_mod_u32(0u, u_input.a)), ~_wgslsmith_div_vec4_u32(vec4<u32>(58485u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 22729u, 0u, u_input.a))) % vec4<u32>(32u)));
    var_1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x, u_input.a, ~u_input.b, _wgslsmith_sub_vec3_u32((abs(vec3<u32>(u_input.a, 13795u, u_input.a)) ^ vec3<u32>(u_input.a, 33731u, u_input.a)) | (~vec3<u32>(4294967295u, u_input.a, 52195u) >> (abs(vec3<u32>(1u, u_input.a, u_input.a)) % vec3<u32>(32u))), ~select(_wgslsmith_div_vec3_u32(vec3<u32>(7628u, 28542u, 67007u), vec3<u32>(u_input.a, u_input.a, u_input.a)), abs(vec3<u32>(u_input.a, u_input.a, 4294967295u)), !var_2.x)));
}

