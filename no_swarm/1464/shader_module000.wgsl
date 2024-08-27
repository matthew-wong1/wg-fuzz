struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = Struct_1(10768i, u_input.d, -782f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(526f, -252f, -317f, -1308f), vec4<f32>(1441f, -754f, -116f, -1237f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1352f, -2316f, 1285f, -1000f), vec4<f32>(-133f, -758f, 172f, 758f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(664f, 583f, -1767f, -972f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1028f)), _wgslsmith_f_op_f32(floor(373f)), _wgslsmith_f_op_f32(min(-2648f, -597f)), _wgslsmith_f_op_f32(227f * -2658f)) - vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1055f, _wgslsmith_f_op_f32(1000f - -565f)))), 541f, _wgslsmith_f_op_f32(581f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1686f))))), -1519f));
    let var_1 = var_0.d.wz;
    let var_2 = var_0.d.x;
    var var_3 = var_0;
    var var_4 = Struct_1(abs(_wgslsmith_div_i32(var_3.a, abs(1i))), 1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f * 581f) - 1331f), var_0.d.x, -845f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_1.x)))), vec4<f32>(var_3.d.x, -1722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(805f))), _wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(var_0.e))))));
    return !(!(!(var_3.c < _wgslsmith_f_op_f32(min(1089f, -225f)))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(104f, 487f, var_0.d.x), vec3<f32>(118f, arg_2.d.x, -763f), true)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d.x, arg_2.e.x, -713f) * var_0.d.zwy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(897f, -1000f, _wgslsmith_f_op_f32(arg_0 * arg_0))))));
    var var_2 = !func_3();
    var_0 = arg_2;
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-459f)))), !func_3())) > arg_0;
    return 13453i;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(func_2(_wgslsmith_f_op_f32(arg_3.c - _wgslsmith_f_op_f32(f32(-1f) * -2455f)), -u_input.d & 0i, arg_3, vec3<u32>(u_input.a, 4294967295u, arg_2)), ~(~func_2(arg_1.d.x, u_input.b.x, Struct_1(1i, -2147483647i, 1086f, vec4<f32>(arg_1.c, -1865f, arg_1.e.x, arg_1.e.x), vec4<f32>(-760f, arg_1.c, arg_1.d.x, arg_1.c)), vec3<u32>(20408u, u_input.a, 4294967295u)))), arg_3.a, arg_1.d.x, arg_3.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_3.c)))));
    let var_1 = vec4<bool>(!func_3() || false, all(select(vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(44585i <= arg_1.a, true, select(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), all(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_2 = -1174f;
    var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~3662i, 1i), i32(-1i) * -19036i), -u_input.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -490f))), vec4<f32>(-814f, 1215f, arg_1.e.x, -536f), _wgslsmith_f_op_vec4_f32(round(arg_1.e)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.d + vec4<f32>(-937f, -1870f, arg_3.c, -966f)) * vec4<f32>(var_0.e.x, arg_1.e.x, 1720f, 1394f)))));
    return Struct_1(firstLeadingBit(~1i) ^ (u_input.c.x >> ((abs(7135u) ^ ~arg_0.x) % 32u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(~28012i, -63746i), u_input.c.xw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1310f * arg_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f - -479f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-626f, 966f) * -496f) * _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(abs(arg_1.d.x)), -326f), _wgslsmith_f_op_vec4_f32(var_0.e - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_0.c - 1335f), _wgslsmith_f_op_f32(1000f + 1346f), arg_3.d.x), var_0.e)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = select(vec3<bool>(true, false, -44787i != u_input.c.x), vec3<bool>(select(true, true, !func_3()), !any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), false), func_3());
    let var_1 = _wgslsmith_div_u32(u_input.a, arg_2.x);
    let var_2 = func_1(vec2<u32>(max(56071u, abs(u_input.a & arg_2.x)), ~4897u), Struct_1(func_1(~arg_2.zw, func_1(countOneBits(vec2<u32>(74758u, 4294967295u)), func_1(arg_2.wy, arg_1, u_input.a, Struct_1(4780i, arg_3.a, arg_1.c, vec4<f32>(-900f, arg_3.e.x, 165f, arg_0.c), vec4<f32>(arg_1.d.x, arg_3.d.x, -631f, arg_1.d.x))), ~4294967295u, Struct_1(u_input.c.x, 37178i, 118f, vec4<f32>(arg_3.c, arg_0.e.x, -1540f, 319f), arg_3.d)), 26856u, Struct_1(u_input.c.x & 0i, ~(-31771i), _wgslsmith_f_op_f32(arg_0.d.x - 1107f), _wgslsmith_f_op_vec4_f32(min(arg_0.d, vec4<f32>(arg_1.c, arg_0.d.x, arg_0.c, arg_0.c))), vec4<f32>(1273f, arg_0.d.x, -1258f, arg_3.e.x))).a, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.c.yyz, firstLeadingBit(vec3<i32>(arg_0.a, arg_0.a, -1i))), -countOneBits(26003i)), _wgslsmith_f_op_f32(floor(-1274f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 794f, arg_3.d.x, 561f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1164f, arg_3.d.x, arg_3.c, 301f), arg_0.e, vec4<bool>(false, var_0.x, true, var_0.x)))))), ~max(4294967295u, ~arg_2.x & ~u_input.a), func_1(_wgslsmith_div_vec2_u32(~(~arg_2.xx), countOneBits(vec2<u32>(u_input.a, var_1))), func_1(_wgslsmith_div_vec2_u32(arg_2.yx, arg_2.xx), func_1(countOneBits(vec2<u32>(1u, var_1)), func_1(arg_2.zx, arg_3, 19537u, Struct_1(u_input.b.x, arg_0.a, arg_3.e.x, arg_3.d, arg_1.d)), 1u, Struct_1(arg_1.b, arg_0.a, -415f, arg_1.e, vec4<f32>(624f, arg_3.e.x, -1000f, arg_0.e.x))), ~36470u, func_1(arg_2.zy | vec2<u32>(13113u, arg_2.x), arg_3, ~21960u, Struct_1(37802i, arg_1.b, arg_1.e.x, vec4<f32>(-264f, arg_1.e.x, arg_3.d.x, arg_3.c), arg_0.d))), u_input.a, Struct_1(-47826i, -2147483647i, arg_1.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-550f, arg_3.c, 104f, 304f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1.d)) - vec4<f32>(arg_0.e.x, arg_3.e.x, 1288f, arg_3.e.x)))));
    let var_3 = arg_0;
    var var_4 = 166f;
    return _wgslsmith_div_vec4_f32(var_2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), 441f, _wgslsmith_f_op_f32(247f - 1525f), _wgslsmith_f_op_f32(abs(var_2.e.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(u_input.b.x, u_input.c.x)), u_input.b), -1364i, -706f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(928f, -959f, 2110f, -1286f)))), _wgslsmith_f_op_vec4_f32(func_4(func_1(vec2<u32>(u_input.a, u_input.a), Struct_1(u_input.b.x, u_input.b.x, 555f, vec4<f32>(320f, 1906f, -751f, -240f), vec4<f32>(-749f, -391f, 737f, -369f)), u_input.a, Struct_1(u_input.b.x, u_input.c.x, -429f, vec4<f32>(311f, -1364f, -663f, -1349f), vec4<f32>(-133f, 875f, -725f, -833f))), Struct_1(u_input.d, -2147483647i, 1000f, vec4<f32>(-368f, -1264f, -2220f, -1590f), vec4<f32>(211f, -1481f, -820f, 391f)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(17098i, -44755i, -1883f, vec4<f32>(691f, 508f, -236f, -1307f), vec4<f32>(-1739f, -834f, 117f, 215f)))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, false, true, true), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-391f, 1000f, -2109f, 709f)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(814f, 375f, -550f, 1589f)))) * vec4<f32>(-279f, _wgslsmith_f_op_f32(573f * -1475f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1357f) * -943f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1069f + -296f), -1910f))));
    var var_1 = func_1(firstLeadingBit(max(select(~vec2<u32>(11614u, 91503u), vec2<u32>(0u, u_input.a), false), countOneBits(firstTrailingBit(vec2<u32>(0u, u_input.a))))), func_1(~reverseBits(~vec2<u32>(u_input.a, u_input.a)), func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u) | vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(13195u, 43429u), vec2<u32>(4294967295u, 29160u), false), vec2<u32>(u_input.a, 1u) >> (vec2<u32>(53434u, 44927u) % vec2<u32>(32u))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.c.x, u_input.c.x), vec3<i32>(-2147483647i, var_0.b, var_0.b)), -4411i, _wgslsmith_f_op_f32(-var_0.c), vec4<f32>(var_0.c, var_0.e.x, var_0.e.x, var_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-162f, -825f, -1000f, 1909f))), max(~u_input.a, ~u_input.a), Struct_1(var_0.a, -33601i, var_0.d.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(1629f, var_0.d.x, var_0.e.x, -164f) * vec4<f32>(var_0.e.x, var_0.e.x, 1445f, -232f)), vec4<f32>(-423f, 1328f, 342f, var_0.e.x))), ~(~u_input.a) << (~u_input.a % 32u), Struct_1(-var_0.b, firstLeadingBit(-23655i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.d.x + -2994f))), func_1(vec2<u32>(34546u, 25948u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), Struct_1(1i, var_0.b, var_0.c, vec4<f32>(-115f, -1098f, -833f, var_0.c), vec4<f32>(165f, var_0.d.x, -276f, -1849f)), u_input.a, Struct_1(u_input.b.x, 45669i, var_0.d.x, vec4<f32>(915f, var_0.d.x, var_0.c, var_0.e.x), var_0.e)).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)))), u_input.a, func_1(abs(max(~vec2<u32>(8721u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, 1u)))), Struct_1(-2147483647i, 1i, _wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_vec4_f32(-var_0.e), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(var_0.e, var_0.e)))), u_input.a, Struct_1(max(var_0.a, 2147483647i), i32(-1i) * -47284i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, var_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1215f, var_0.c, 868f, 511f), var_0.e)) + func_1(vec2<u32>(14219u, u_input.a), Struct_1(var_0.a, var_0.b, var_0.d.x, vec4<f32>(-280f, -364f, 1754f, var_0.e.x), var_0.e), u_input.a, Struct_1(var_0.b, 0i, var_0.e.x, vec4<f32>(var_0.c, 1625f, 558f, var_0.e.x), vec4<f32>(854f, -455f, var_0.c, 670f))).d), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(var_0.e.x, var_0.d.x, var_0.e.x, var_0.d.x)))))));
    var var_2 = ~_wgslsmith_sub_i32(52414i, ~var_1.b);
    var_0 = Struct_1(func_1(max(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 45982u), ~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 4294967295u & u_input.a)), func_1(~firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 39188u), vec2<u32>(u_input.a, 35411u)), Struct_1(13817i, 28852i, 1144f, var_0.d, var_1.d), reverseBits(u_input.a), func_1(vec2<u32>(u_input.a, u_input.a), Struct_1(0i, var_1.b, var_0.c, vec4<f32>(var_0.e.x, var_1.e.x, var_0.d.x, 366f), var_0.d), 0u, Struct_1(var_1.a, 31792i, var_1.e.x, var_1.d, vec4<f32>(399f, 655f, var_1.d.x, 1000f)))), u_input.a, func_1(select(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a), true), func_1(vec2<u32>(4294967295u, u_input.a), Struct_1(-48623i, -18078i, var_0.e.x, var_1.e, vec4<f32>(var_0.d.x, var_0.c, var_1.d.x, var_1.e.x)), 0u, Struct_1(u_input.b.x, var_1.b, -322f, vec4<f32>(var_0.e.x, 1182f, var_1.d.x, 214f), vec4<f32>(401f, 561f, 295f, 393f))), select(109247u, 4294967295u, true), Struct_1(-32586i, var_1.b, var_0.d.x, var_1.d, var_0.e))), _wgslsmith_sub_u32(u_input.a, 1u), Struct_1(-2147483647i >> (u_input.a % 32u), var_1.a << (u_input.a % 32u), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(abs(-1733f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-653f, -124f, var_0.c, 108f), var_1.d))), _wgslsmith_f_op_vec4_f32(-var_0.e))).b, u_input.d, _wgslsmith_f_op_f32(-807f + _wgslsmith_f_op_f32(abs(func_1(vec2<u32>(u_input.a, u_input.a), func_1(vec2<u32>(u_input.a, u_input.a), Struct_1(var_1.a, var_1.a, var_1.e.x, var_1.e, vec4<f32>(460f, var_1.d.x, var_1.c, var_1.c)), 0u, Struct_1(u_input.b.x, 0i, var_0.c, vec4<f32>(var_0.e.x, var_0.d.x, -443f, 1273f), var_0.e)), countOneBits(u_input.a), Struct_1(u_input.b.x, var_1.a, 795f, var_0.d, var_1.e)).e.x))), _wgslsmith_f_op_vec4_f32(var_0.d + var_0.d), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e.x, 200f) - var_1.d.x), var_1.e.x, _wgslsmith_f_op_f32(min(-910f, 1044f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-204f)) + var_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d.x))), var_0.c))));
    let var_3 = func_1(select(select(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 23602u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, ~46307u), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true)), select(vec2<u32>(u_input.a, u_input.a) | ~vec2<u32>(1u, u_input.a), vec2<u32>(0u, u_input.a), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), func_1(~(~vec2<u32>(u_input.a, u_input.a)), func_1(abs(vec2<u32>(1u, u_input.a)), Struct_1(u_input.c.x << (u_input.a % 32u), 2147483647i, _wgslsmith_f_op_f32(step(1334f, var_0.e.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-204f, var_1.d.x, var_0.e.x, -427f), var_1.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(233f, -291f, 2336f, var_0.d.x) * var_1.d)), _wgslsmith_mod_u32(firstTrailingBit(35820u), 41656u), Struct_1(-u_input.c.x, 21900i << (u_input.a % 32u), -326f, var_0.e, vec4<f32>(var_0.e.x, 756f, -113f, -885f))), ~u_input.a, func_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(23714u, u_input.a), ~vec2<u32>(u_input.a, 4294967295u)), func_1(vec2<u32>(23032u, 5037u), func_1(vec2<u32>(4294967295u, u_input.a), Struct_1(var_0.a, u_input.c.x, var_1.c, vec4<f32>(var_1.e.x, var_0.d.x, 287f, var_1.e.x), var_1.d), 18190u, Struct_1(var_1.b, u_input.c.x, var_0.d.x, var_0.e, vec4<f32>(-243f, 2115f, -1354f, 867f))), _wgslsmith_sub_u32(1u, u_input.a), func_1(vec2<u32>(20628u, u_input.a), Struct_1(38978i, 2147483647i, var_0.d.x, vec4<f32>(-883f, 1189f, var_1.c, 165f), vec4<f32>(207f, var_1.c, var_0.e.x, var_0.d.x)), u_input.a, Struct_1(-22768i, var_0.a, var_1.c, vec4<f32>(742f, var_1.e.x, var_0.e.x, 809f), var_0.e))), reverseBits(u_input.a), func_1(~vec2<u32>(u_input.a, u_input.a), Struct_1(-45640i, -55537i, var_1.c, var_0.e, var_0.d), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(42569u, 4294967295u)), func_1(vec2<u32>(u_input.a, 33883u), Struct_1(u_input.d, -22113i, var_1.d.x, var_0.d, var_1.e), 32906u, Struct_1(var_1.a, var_0.a, var_1.d.x, var_1.e, vec4<f32>(var_1.c, var_1.d.x, var_0.e.x, var_0.d.x)))))), _wgslsmith_dot_vec3_u32(min(~(~vec3<u32>(8798u, 74305u, 0u)), vec3<u32>(u_input.a, 4294967295u, ~95450u)), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(5932u, 71504u, 12705u), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~(~11771u))), Struct_1(min(min(u_input.d, -1i), select(~(-14207i), _wgslsmith_mult_i32(var_0.b, 114i), true)), -var_1.b, -606f, vec4<f32>(-105f, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(840f - var_1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, -842f, var_1.c, var_1.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.yyx, vec2<u32>(4294967295u, 1u), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(15764u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), max(vec4<u32>(22910u, 1u, 41356u, u_input.a), vec4<u32>(24064u, u_input.a, u_input.a, u_input.a))), ~_wgslsmith_mod_u32(~0u, ~1u)), ~u_input.a & ~0u, vec3<i32>(~_wgslsmith_sub_i32(var_3.b, 21738i), var_1.b << ((u_input.a ^ 4294967295u) % 32u), func_2(1000f, var_1.a, var_3, ~vec3<u32>(u_input.a, 0u, 0u))));
}

