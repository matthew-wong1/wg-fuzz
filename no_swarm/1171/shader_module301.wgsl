struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    var var_0 = 1f;
    var var_1 = Struct_3(~(~firstTrailingBit(4294967295u)) ^ ~4294967295u, -(u_input.e ^ 1i));
    global0 = var_1.a;
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(~vec2<u32>(23136u, 1u), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a, 52217u), vec2<u32>(var_1.a, var_1.a)), vec2<u32>(var_1.a, 4294967295u)), true), ~(~vec2<u32>(var_1.a, 4294967295u)) | (~vec2<u32>(var_1.a, var_1.a) & _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_1.a), vec2<u32>(var_1.a, var_1.a)))), ~reverseBits(select(vec2<u32>(var_1.a, var_1.a), vec2<u32>(var_1.a, var_1.a), vec2<bool>(false, true))) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(13059u, var_1.a), vec2<u32>(1u, var_1.a) & vec2<u32>(79534u, 42959u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 39141u), vec2<u32>(0u, 15501u))));
    let var_2 = Struct_2(Struct_1(vec4<i32>(-(0i | u_input.d.x), var_1.b, _wgslsmith_mult_i32(countOneBits(var_1.b), firstTrailingBit(2147483647i)), -2147483647i), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1685f - 600f), _wgslsmith_f_op_f32(min(1510f, 243f)), _wgslsmith_f_op_f32(sign(893f)), _wgslsmith_f_op_f32(612f * 536f)), vec4<f32>(_wgslsmith_f_op_f32(235f - 1750f), 1066f, _wgslsmith_f_op_f32(step(-482f, 230f)), 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(373f, 1118f, 484f, 1583f), vec4<f32>(1168f, 1000f, 712f, -1616f), false)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1929f, 1000f, 2082f, 473f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1573f, 263f, -1250f, -1078f), vec4<f32>(-397f, -433f, -867f, -1673f))))), ~max(vec3<u32>(var_1.a, var_1.a, 59025u), reverseBits(vec3<u32>(44420u, var_1.a, var_1.a))), ~reverseBits(12198u >> (var_1.a % 32u))), Struct_1(u_input.a & _wgslsmith_div_vec4_i32(min(vec4<i32>(0i, -2191i, var_1.b, 71494i), vec4<i32>(15606i, -12412i, 38046i, -40157i)), ~u_input.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(-829f - 909f), _wgslsmith_f_op_f32(select(-112f, -241f, false)), _wgslsmith_f_op_f32(229f - -721f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(435f, 869f, 1214f, 376f)), vec4<f32>(505f, -682f, -1099f, -933f), true)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-370f - 1750f) - _wgslsmith_f_op_f32(f32(-1f) * -1852f)), -1089f, _wgslsmith_f_op_f32(select(-2376f, -823f, any(vec2<bool>(false, true)))), _wgslsmith_div_f32(-298f, -619f)), ~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 61416u, 4294967295u), abs(vec3<u32>(0u, 27516u, var_1.a))), abs(~var_1.a)));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.b.x) - var_2.a.c.x), 1f, var_2.a.c.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -3676i, arg_2), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.xw, u_input.d.xz) << (4294967295u % 32u), -2976i), -arg_2, 330i), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1123f + -1664f)), arg_3.x, arg_3.x), vec4<f32>(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -478f)), _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x * 252f), -422f))), 416f), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(4294967295u, 24134u, 119355u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(3003u, 2074u, 4294967295u), vec3<u32>(23323u, 15572u, 15350u), vec3<u32>(46935u, 18677u, 1u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(24426u, 4294967295u, 1u), vec3<u32>(1u, 0u, 1u), vec3<bool>(arg_1, false, true)), ~vec3<u32>(4294967295u, 41286u, 0u))), _wgslsmith_div_u32(~(~1u), ~_wgslsmith_div_u32(0u, 1u)));
    global0 = max(var_0.d.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.e, var_0.d.x, var_0.d.x), firstTrailingBit(vec3<u32>(1u, var_0.e, 31295u))) ^ _wgslsmith_clamp_vec3_u32(~var_0.d, var_0.d, max(var_0.d, vec3<u32>(1u, var_0.e, 12682u))), ~(~var_0.d)));
    let var_1 = ~1u;
    var var_2 = Struct_3(~var_1, 0i);
    var var_3 = select(!(!(!(!vec2<bool>(true, arg_1)))), vec2<bool>(any(vec2<bool>(arg_1 & false, !arg_1)), any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), !vec2<bool>(arg_1, true)))), any(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), arg_1))));
    return ~20021u;
}

fn func_2(arg_0: f32) -> bool {
    global0 = func_4(countOneBits(~abs(u_input.a.yy | u_input.a.zx)), true, 1i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1303f, 122f, arg_0) * vec3<f32>(arg_0, -133f, -997f)))))));
    global0 = ~(_wgslsmith_add_u32(_wgslsmith_sub_u32(84624u, 0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 30094u), vec3<u32>(10821u, 21029u, 4294967295u))) << (~(~0u) % 32u));
    var var_0 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(1u, 1u)), select(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mult_u32(1u, ~1u), ~_wgslsmith_mult_u32(0u, 4294967295u)), !(_wgslsmith_div_f32(1396f, 614f) != _wgslsmith_f_op_f32(trunc(-1062f)))), vec2<u32>(1u, 1u));
    global0 = var_0.x;
    let var_1 = false;
    return any(vec4<bool>(select(true & var_1, var_1, true), var_1, true, (_wgslsmith_div_i32(-24194i, u_input.d.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 10820u, var_0.x, 1u), vec4<u32>(var_0.x, var_0.x, var_0.x, 51547u)) % 32u)) <= ~u_input.d.x));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = select(!vec2<bool>(false, select(true, false, true)), vec2<bool>(!func_2(_wgslsmith_f_op_f32(553f - -1398f)), true), true);
    global0 = ~arg_0.x;
    var var_1 = Struct_1(-u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-117f + -1939f), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1014f)) * 1000f), _wgslsmith_f_op_f32(1393f * _wgslsmith_div_f32(-1348f, -418f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, -712f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(222f, 1049f, -1312f, -1311f)) + vec4<f32>(_wgslsmith_f_op_f32(784f + 236f), _wgslsmith_f_op_f32(max(1205f, 937f)), 1f, _wgslsmith_f_op_f32(-462f + 116f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-540f, -240f, -114f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-1947f)), 1000f, _wgslsmith_f_op_f32(-1741f + 234f), -722f)))), ~(~arg_0.xzy | _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), arg_0.ywy)), arg_0.x >> (1u % 32u));
    var var_2 = arg_0.yz;
    var var_3 = ~countOneBits(select(firstLeadingBit(var_1.a.yxx), vec3<i32>(var_1.a.x, _wgslsmith_add_i32(u_input.b, u_input.c), ~var_1.a.x), vec3<bool>(any(vec4<bool>(false, var_0.x, false, var_0.x)), false, !var_0.x)));
    return _wgslsmith_mult_i32(-21815i, var_3.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = ~(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(43768u, 4294967295u, arg_1.x, 4294967295u), vec4<u32>(6769u, 6207u, 1u, arg_1.x)), ~vec4<u32>(arg_1.x, 0u, 0u, arg_1.x)) << ((~(arg_1.x & 4294967295u) & _wgslsmith_mult_u32(~arg_1.x, 1u)) % 32u));
    let var_0 = vec4<i32>(-2147483647i, arg_0.x, _wgslsmith_mod_i32(-2147483647i, -30064i), abs(-_wgslsmith_mult_i32(~arg_0.x, _wgslsmith_mult_i32(u_input.c, arg_0.x))));
    global0 = arg_1.x;
    let var_1 = Struct_3(reverseBits(~(20945u << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 15274u, arg_1.x, 1u), vec4<u32>(arg_1.x, 76168u, arg_1.x, arg_1.x)) % 32u))), u_input.e);
    global0 = ~min(0u ^ var_1.a, ~arg_1.x);
    return Struct_1(-vec4<i32>(1i, -28402i << (~arg_1.x % 32u), var_1.b, 9032i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-849f, -1267f, _wgslsmith_f_op_f32(-1629f - -391f), _wgslsmith_f_op_f32(1425f - -624f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1452f, -676f, -308f), vec4<f32>(-462f, 618f, -686f, 1206f)) + vec4<f32>(650f, 336f, -1000f, -2388f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(540f, -1254f, -1000f, -620f))))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(-1185f, _wgslsmith_f_op_f32(sign(637f)))), -580f, -573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(493f)))))), vec3<u32>(~reverseBits(~1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 33191u, arg_1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x), vec4<u32>(117300u, var_1.a, var_1.a, var_1.a)) & ~vec4<u32>(1u, 1u, arg_1.x, 0u)), _wgslsmith_sub_u32(firstLeadingBit(545u), ~arg_1.x)), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, _wgslsmith_add_i32(0i, u_input.e), func_1(vec4<u32>(1u, 10693u, 76090u, 4294967295u)), -1i), firstLeadingBit(~u_input.a)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(4307u, 1u), ~4294967295u, 1u), select(reverseBits(~vec3<u32>(18426u, 38180u, 4294967295u)), ~vec3<u32>(1u, 1u, 1u), false), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 18651u, 4294967295u))));
    global0 = _wgslsmith_mult_u32(var_0.e, max(747u, firstTrailingBit(_wgslsmith_add_u32(4294967295u, var_0.d.x)) | ~(var_0.d.x >> (11962u % 32u))));
    global0 = var_0.e;
    var var_1 = vec4<u32>(26021u, ~abs(var_0.d.x), 19347u, var_0.e);
    let var_2 = 1069f;
    var_1 = vec4<u32>(~(~var_0.d.x), ~30715u, select(_wgslsmith_mult_u32(_wgslsmith_mult_u32(29012u, var_0.d.x), abs(var_0.d.x)), _wgslsmith_add_u32(0u, var_1.x), true), reverseBits(var_1.x)) ^ ~max(~(~vec4<u32>(var_0.e, var_1.x, 1u, 130809u)), select(vec4<u32>(var_1.x, var_0.d.x, var_0.e, var_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.d.x, 4294967295u, 0u), vec4<u32>(var_0.e, var_0.d.x, var_0.d.x, var_1.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(4294967295u, 1u, var_0.d.x, 1u | _wgslsmith_div_u32(var_1.x, 75960u))), _wgslsmith_dot_vec3_u32(var_0.d, var_1.yxx), -138f);
}

