struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(11720i, 0i, -20706i, 10854i), vec4<i32>(64084i, 19535i, 1i, 2147483647i), vec4<i32>(1i, -19972i, 2147483647i, -27223i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(2147483647i, 26826i, -11859i, 35522i), vec4<i32>(0i, -12899i, 0i, -49942i), vec4<i32>(-1i, 0i, 31590i, 32426i), vec4<i32>(-2074i, -8067i, 0i, 1i), vec4<i32>(2147483647i, 4924i, 2147483647i, -35169i), vec4<i32>(2147483647i, -6251i, 2147483647i, 1i), vec4<i32>(-21344i, 22524i, 1196i, 28042i), vec4<i32>(-3941i, -57075i, 2147483647i, i32(-2147483648)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<f32> {
    var var_0 = !vec2<bool>(all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true)), select(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true));
    var var_1 = 60729i | ~(arg_0.b.x | 56464i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), -288f, -2345f, _wgslsmith_f_op_f32(f32(-1f) * -328f)))), ~arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(arg_0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.a.x, arg_0.a.x, arg_0.c.x) - vec4<f32>(arg_0.c.x, 323f, arg_0.a.x, arg_0.c.x))), arg_0.c))));
    let var_3 = var_2;
    let var_4 = vec3<u32>(reverseBits((u_input.a << (~arg_1.x % 32u)) | _wgslsmith_sub_u32(reverseBits(1u), arg_1.x)), min(u_input.a, _wgslsmith_clamp_u32(~60765u, ~_wgslsmith_mod_u32(56728u, arg_1.x), ~4294967295u)), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(~50239u, ~1u, abs(28098u)), min(firstLeadingBit(0u), ~arg_1.x)));
    return vec4<f32>(-1000f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1113f), _wgslsmith_f_op_f32(select(arg_0.c.x, var_3.a.x, all(!select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, false, true, true), var_0.x)))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = countOneBits(~(-25878i));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1138f);
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1337f, -1000f, -1963f, _wgslsmith_f_op_f32(460f - 393f))), firstTrailingBit(~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(2147483647i, var_0))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(104f, -1110f, -587f, 1477f), vec4<f32>(2548f, 269f, 569f, 229f), vec4<bool>(true, false, arg_0.x, true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1674f, -1149f, 962f, 1180f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(910f, 1189f, 721f, -1440f), vec2<i32>(-30208i, var_0), vec4<f32>(256f, -237f, -1017f, -725f)), vec2<u32>(4294967295u, 37424u))))), !(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x))))), vec4<i32>(~var_0, i32(-1i) * -var_0, _wgslsmith_add_i32(8248i, var_0 & 27969i), _wgslsmith_clamp_i32(var_0, min(var_0, var_0), -var_0)) & -vec4<i32>(i32(-1i) * -2307i, select(var_0, var_0, arg_0.x), var_0 | var_0, var_0));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = arg_1.a;
    let var_1 = var_0.b;
    let var_2 = Struct_3(vec2<i32>(1i, select(55568i, 22124i, ~arg_2.x < firstTrailingBit(58784u))), select(vec4<bool>(_wgslsmith_sub_i32(1i, 1i) <= select(arg_1.b.x, -47345i, false), true, true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false))), vec4<bool>(arg_1.a.a.x <= _wgslsmith_f_op_f32(-206f - -374f), false != select(false, true, true), !any(vec4<bool>(false, true, true, true)), false), max(u_input.a, 66737u) >= _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 19212u, arg_0.x), vec4<u32>(u_input.a, 0u, 2485u, u_input.a), vec4<u32>(arg_2.x, 1u, u_input.a, 43514u)), min(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(58840u, u_input.a, arg_2.x, arg_2.x)))), func_2(vec2<bool>(false, true)).a, arg_1.a.c, _wgslsmith_f_op_vec4_f32(-arg_1.a.c));
    global0 = array<vec4<i32>, 12>();
    var var_3 = arg_1;
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> vec2<bool> {
    return select(arg_3.xz, vec2<bool>(any(vec4<bool>(true, false, u_input.a >= 25035u, false || arg_3.x)), !(arg_3.x == arg_3.x)), arg_3.yw);
}

fn func_1() -> vec3<u32> {
    let var_0 = 1u;
    var var_1 = vec4<u32>(max(~max(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(17553u, 2509u), vec2<u32>(11233u, u_input.a))), 11220u), 19130u, max(0u, var_0), 0u << (_wgslsmith_mod_u32(var_0 & 1u, _wgslsmith_sub_u32(max(0u, var_0), u_input.a)) % 32u));
    var var_2 = !select(func_5(28459u, func_4(var_1.yx, func_2(vec2<bool>(true, false)), abs(vec3<u32>(u_input.a, var_1.x, 1u))), -689f, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)))), vec2<bool>(true, !func_5(u_input.a, Struct_2(Struct_1(vec4<f32>(130f, -1014f, 197f, -286f), vec2<i32>(-2147483647i, 58607i), vec4<f32>(373f, -759f, 1969f, 1610f)), vec4<i32>(22555i, -2147483647i, -69757i, 2147483647i)), 954f, vec4<bool>(false, true, false, true)).x), false);
    var var_3 = Struct_3(vec2<i32>(abs(1i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(func_2(vec2<bool>(true, var_2.x)).a.b.x, -26588i), ~firstLeadingBit(6121i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-12765i, -2147483647i, 0i, -16213i), vec4<i32>(1i, 1i, 0i, 0i)), i32(-1i) * -10883i))), !(!(!vec4<bool>(true, var_2.x, false, var_2.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(-416f, -2837f, !var_2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-475f, 506f))), _wgslsmith_f_op_f32(-523f * func_4(var_1.zy, Struct_2(Struct_1(vec4<f32>(-688f, 321f, -518f, 913f), vec2<i32>(0i, -1i), vec4<f32>(-685f, -1008f, -1479f, 1789f)), vec4<i32>(67270i, 2147483647i, 0i, -2147483647i)), vec3<u32>(var_0, var_0, 10361u)).a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f))), max(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1546i, 2147483647i), vec2<i32>(-35787i, -12367i), vec2<i32>(322i, -22274i)) << (vec2<u32>(var_1.x, var_0) % vec2<u32>(32u)), vec2<i32>(1i, ~17651i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1226f * 751f) + _wgslsmith_div_f32(1709f, -1619f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -1116f))), -393f, _wgslsmith_f_op_f32(sign(-679f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(720f + -2061f), _wgslsmith_f_op_f32(max(-1376f, -260f)))), 1234f, 775f, -1156f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1226f) * _wgslsmith_f_op_f32(ceil(1059f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-914f, -897f) + _wgslsmith_f_op_f32(select(383f, -1000f, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(904f, -722f))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.e));
    return var_1.yzw;
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(vec4<f32>(-1148f, -289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) + arg_3.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) * _wgslsmith_f_op_f32(max(arg_2.c.x, arg_3.c.a.x))) * 1126f)), ~_wgslsmith_mod_vec2_i32(~arg_2.b, arg_2.b), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_2.a.x)), 838f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(805f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_2.c.x)), _wgslsmith_f_op_f32(-arg_2.c.x), true)), arg_3.c.a.x), func_4(vec2<u32>(29680u & u_input.a, 39086u), Struct_2(arg_2, vec4<i32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x)), arg_0).a.a));
    var var_1 = ~select(~vec4<u32>(firstLeadingBit(23193u), _wgslsmith_mod_u32(u_input.a, 41464u), abs(18327u), ~4294967295u), ~(min(vec4<u32>(143549u, u_input.a, arg_0.x, arg_0.x), vec4<u32>(1u, 4294967295u, arg_0.x, 0u)) ^ reverseBits(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))), vec4<bool>(all(arg_3.b), true, true, var_0.b.x > 1i));
    var_0 = arg_2;
    var var_2 = arg_0.x;
    var var_3 = Struct_2(arg_2, global0[_wgslsmith_index_u32(4294967295u, 12u)]);
    return Struct_3(arg_2.b, select(arg_3.b, arg_3.b, true), func_4(~(~reverseBits(arg_0.xx)), Struct_2(arg_3.c, _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.b.x, var_0.b.x, var_0.b.x, -1i), _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(1u, 12u)], vec4<i32>(arg_3.c.b.x, arg_3.c.b.x, arg_3.c.b.x, arg_3.c.b.x)))), firstLeadingBit(~(~arg_0))).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, var_3.a.c.x, 306f, 169f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1213f, arg_3.d.x, -1009f, -743f))))) - var_0.a), var_3.a.a);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec4<i32>, 12>();
    var var_0 = func_6(vec3<u32>(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(2540u, u_input.a), vec2<u32>(1u, u_input.a), arg_1.b.x), ~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(29089u, 123741u), u_input.a | u_input.a, u_input.a), 3306u, 13450u), _wgslsmith_mult_u32(u_input.a, ~select(0u, 18568u, arg_1.b.x))), func_6(~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(52318u, u_input.a, 0u)), func_6(vec3<u32>(max(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(95786u, 35526u), vec2<u32>(u_input.a, u_input.a)), 1u), !func_5(1u, Struct_2(arg_0.c, vec4<i32>(-4611i, arg_3.a.b.x, 1i, 2147483647i)), arg_2.a.a.x, vec4<bool>(true, true, arg_0.b.x, arg_0.b.x)), func_4(~vec2<u32>(102905u, 56979u), func_2(arg_1.b.zx), vec3<u32>(1240u, u_input.a, u_input.a)).a, func_6(~vec3<u32>(u_input.a, 4294967295u, u_input.a), arg_1.b.zy, arg_3.a, arg_0)).b.yx, func_2(select(arg_0.b.xz, arg_1.b.wz, arg_0.b.x)).a, func_6((vec3<u32>(4294967295u, 1u, 0u) >> (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))) | ~vec3<u32>(1u, 4294967295u, u_input.a), !vec2<bool>(arg_1.b.x, arg_0.b.x), arg_2.a, func_6(select(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 33228u), true), vec2<bool>(false, arg_0.b.x), Struct_1(arg_0.c.c, vec2<i32>(arg_0.c.b.x, 2147483647i), arg_2.a.a), arg_1))).b.wy, Struct_1(vec4<f32>(arg_3.a.a.x, _wgslsmith_f_op_f32(arg_1.c.c.x * arg_0.d.x), -1072f, -733f), _wgslsmith_mult_vec2_i32(firstTrailingBit(arg_2.a.b), arg_2.a.b), arg_2.a.a), Struct_3(vec2<i32>(arg_2.a.b.x, ~2217i), !select(func_6(vec3<u32>(u_input.a, 25459u, 4294967295u), vec2<bool>(arg_0.b.x, true), Struct_1(vec4<f32>(799f, 657f, arg_1.e.x, arg_3.a.c.x), arg_1.c.b, vec4<f32>(arg_2.a.a.x, -783f, -387f, -1000f)), arg_1).b, arg_0.b, vec4<bool>(arg_0.b.x, arg_1.b.x, false, false)), arg_2.a, arg_1.e, _wgslsmith_f_op_vec4_f32(-func_2(arg_0.b.yx).a.c)));
    let var_1 = !var_0.b.wyz;
    var_0 = func_6(~(~(vec3<u32>(63760u, 51185u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 112065u) % vec3<u32>(32u)))) | ~(countOneBits(vec3<u32>(u_input.a, 32769u, 81425u)) ^ reverseBits(vec3<u32>(u_input.a, 4294967295u, u_input.a))), select(arg_0.b.xz, !select(!vec2<bool>(false, arg_0.b.x), !vec2<bool>(var_0.b.x, false), func_5(0u, arg_3, arg_0.c.a.x, vec4<bool>(false, var_1.x, var_1.x, true))), !arg_1.b.xz), func_6(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(4294967295u, u_input.a, 4294967295u) ^ vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(21011u, u_input.a, 4294967295u, u_input.a)), 56841u ^ u_input.a, 4294967295u), countOneBits(vec3<u32>(4294967295u, 79644u, 0u))), select(arg_0.b.yw, var_0.b.wz, _wgslsmith_f_op_f32(458f * arg_3.a.c.x) != arg_3.a.c.x), func_4(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 9604u)), max(vec2<u32>(4294967295u, 66446u), vec2<u32>(31375u, 76778u)), ~vec2<u32>(4294967295u, 25865u)), func_2(vec2<bool>(false, false)), abs(select(vec3<u32>(u_input.a, 20042u, 95939u), vec3<u32>(u_input.a, 10348u, 48524u), true))).a, func_6(~vec3<u32>(0u, u_input.a, u_input.a), arg_0.b.yz, arg_0.c, func_6(vec3<u32>(40179u, 1u, 5007u), select(var_1.xy, vec2<bool>(var_0.b.x, true), arg_1.b.wz), Struct_1(arg_3.a.a, arg_1.c.b, vec4<f32>(arg_0.d.x, arg_1.d.x, arg_3.a.c.x, -524f)), Struct_3(vec2<i32>(0i, -1i), vec4<bool>(true, var_0.b.x, false, arg_1.b.x), arg_2.a, arg_3.a.c, vec4<f32>(arg_1.c.a.x, -1690f, arg_3.a.c.x, 1000f))))).c, Struct_3(~(~_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.b.x, var_0.a.x), arg_0.c.b)), select(vec4<bool>(select(var_1.x, arg_0.b.x, false), arg_1.b.x, !arg_1.b.x, any(vec2<bool>(var_0.b.x, var_1.x))), arg_0.b, select(arg_1.b, arg_0.b, arg_1.b)), func_6((vec3<u32>(39620u, 1u, u_input.a) ^ vec3<u32>(u_input.a, 0u, u_input.a)) | vec3<u32>(1687u, 79971u, u_input.a), func_5(_wgslsmith_mod_u32(1u, 1u), Struct_2(arg_3.a, arg_3.b), _wgslsmith_f_op_f32(-arg_2.a.a.x), arg_0.b), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, -270f, arg_2.a.c.x, -634f)), abs(vec2<i32>(arg_3.a.b.x, arg_2.b.x)), vec4<f32>(var_0.c.a.x, 280f, -3138f, arg_0.e.x)), func_6(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(110442u, u_input.a, u_input.a) % vec3<u32>(32u)), !vec2<bool>(var_0.b.x, arg_1.b.x), arg_3.a, Struct_3(vec2<i32>(-14641i, arg_2.a.b.x), arg_0.b, arg_3.a, var_0.d, vec4<f32>(166f, 1797f, 151f, arg_0.e.x)))).c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.c.x - -279f), _wgslsmith_f_op_f32(-arg_0.d.x), var_0.c.a.x, _wgslsmith_f_op_f32(arg_3.a.c.x * 167f)) + var_0.e), vec4<f32>(1716f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-217f + arg_3.a.a.x) + var_0.d.x), _wgslsmith_f_op_f32(-arg_3.a.c.x), 780f)));
    var_0 = func_6(_wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(139127u, u_input.a, 1u) >> (~vec3<u32>(u_input.a, 39982u, u_input.a) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a, 99218u, 32170u), _wgslsmith_mult_vec3_u32(vec3<u32>(15791u, 29570u, u_input.a), vec3<u32>(u_input.a, u_input.a, 12391u)), var_1), abs(vec3<u32>(1615u, 4294967295u, 15936u)) << (firstTrailingBit(vec3<u32>(75004u, 7754u, u_input.a)) % vec3<u32>(32u)))), !arg_1.b.zz, func_6(~(~(~vec3<u32>(u_input.a, 4294967295u, 6633u))), select(var_1.yz, vec2<bool>(false, false), select(var_0.b.x, arg_1.b.x, true)), arg_2.a, arg_1).c, func_6(firstLeadingBit(vec3<u32>(147u << (0u % 32u), 36403u, ~487u)), var_0.b.zy, arg_3.a, Struct_3(vec2<i32>(func_6(vec3<u32>(0u, 375u, 25609u), vec2<bool>(var_0.b.x, arg_0.b.x), Struct_1(arg_0.d, arg_2.b.yx, arg_1.c.a), arg_0).c.b.x, abs(1i)), vec4<bool>(arg_0.b.x, true, !var_1.x, select(false, true, var_1.x)), arg_1.c, arg_0.c.a, vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.c.x), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_3.a.a, var_0.a, vec4<f32>(-704f, arg_2.a.c.x, 323f, 1374f)), vec2<u32>(u_input.a, 40256u))).x, 329f, 1585f))));
    return arg_1.c;
}

fn func_8(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    global0 = array<vec4<i32>, 12>();
    var var_0 = arg_0;
    let var_1 = _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(74052u & countOneBits(min(u_input.a, arg_1 & u_input.a)), 12u)], vec4<i32>(-(~(var_0.b.x | -68403i)), select(min(countOneBits(var_0.b.x), ~(-36469i)), max(arg_0.b.x, arg_0.b.x), true), 1i, _wgslsmith_dot_vec2_i32(var_0.b, var_0.b)));
    let var_2 = arg_0;
    var var_3 = func_1().x;
    return vec4<bool>(var_1 >= ~1i, !all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))) | true, !(!any(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(-var_2.a.x) == var_0.a.x);
}

fn func_9(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-829f - 535f), func_4(~(~vec2<u32>(u_input.a, 90109u)), arg_1, abs(abs(~vec3<u32>(47577u, u_input.a, 76847u)))).a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_6(~vec3<u32>(u_input.a, 4294967295u, u_input.a), !vec2<bool>(arg_0.x, arg_0.x), func_4(vec2<u32>(1u, 18809u), Struct_2(arg_1.a, arg_1.b), vec3<u32>(63154u, 4294967295u, u_input.a)).a, Struct_3(arg_1.a.b, arg_0, Struct_1(vec4<f32>(arg_1.a.a.x, -1351f, -1105f, arg_1.a.c.x), vec2<i32>(arg_1.b.x, arg_2), arg_1.a.c), arg_1.a.c, arg_1.a.a)).d.x) + arg_1.a.a.x));
    global0 = array<vec4<i32>, 12>();
    return func_4(~(~(~vec2<u32>(u_input.a, u_input.a))), Struct_2(arg_1.a, vec4<i32>(select(2147483647i, arg_2, arg_0.x), arg_1.a.b.x, -2147483647i, func_6(vec3<u32>(u_input.a, 0u, u_input.a), vec2<bool>(arg_0.x, true), arg_1.a, Struct_3(arg_1.a.b, vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), Struct_1(arg_1.a.a, arg_1.a.b, arg_1.a.c), vec4<f32>(-1524f, arg_1.a.a.x, -1084f, -426f), arg_1.a.c)).c.b.x) | func_2(!vec2<bool>(false, arg_0.x)).b), vec3<u32>(u_input.a, u_input.a, 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(func_8(func_7(func_6(func_1(), select(vec2<bool>(true, false), vec2<bool>(false, false), true), Struct_1(vec4<f32>(636f, 152f, -224f, 126f), vec2<i32>(-47282i, -26143i), vec4<f32>(968f, 1147f, -465f, 1529f)), Struct_3(vec2<i32>(3332i, -1i), vec4<bool>(true, true, true, false), Struct_1(vec4<f32>(421f, -755f, 396f, -305f), vec2<i32>(-41582i, -15129i), vec4<f32>(330f, -295f, -260f, 735f)), vec4<f32>(-319f, -778f, -384f, 1608f), vec4<f32>(668f, -3289f, -1068f, -1174f))), Struct_3(vec2<i32>(0i, 40930i), vec4<bool>(true, true, true, true), func_4(vec2<u32>(0u, u_input.a), Struct_2(Struct_1(vec4<f32>(-2222f, -771f, 1000f, -496f), vec2<i32>(-2147483647i, 51131i), vec4<f32>(940f, 735f, -1203f, -887f)), vec4<i32>(-1i, -1i, -1i, 2147483647i)), vec3<u32>(u_input.a, 4294967295u, u_input.a)).a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-470f, -2120f, 1000f, 576f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(828f, 1423f, -161f, 159f)))), func_2(vec2<bool>(false, true)), func_4(vec2<u32>(7100u, u_input.a) >> (vec2<u32>(48342u, 46916u) % vec2<u32>(32u)), func_4(vec2<u32>(u_input.a, 0u), Struct_2(Struct_1(vec4<f32>(533f, -784f, -620f, 723f), vec2<i32>(0i, -2147483647i), vec4<f32>(238f, -736f, -646f, -851f)), global0[_wgslsmith_index_u32(52906u, 12u)]), vec3<u32>(1u, 9739u, 29804u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(4294967295u, u_input.a, u_input.a)))), u_input.a), func_2(!vec2<bool>(all(vec2<bool>(false, true)), func_5(u_input.a, Struct_2(Struct_1(vec4<f32>(872f, 1000f, 1000f, 1390f), vec2<i32>(-1i, -28150i), vec4<f32>(-1000f, -1072f, 690f, 1293f)), global0[_wgslsmith_index_u32(u_input.a, 12u)]), -195f, vec4<bool>(true, true, false, false)).x)), -807i);
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    let var_1 = func_6(vec3<u32>(u_input.a, abs(~(~1u)), u_input.a), vec2<bool>(!any(vec4<bool>(true, true, true, true)), false), var_0.a, Struct_3(var_0.b.yz, select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, false, true, false)), func_6(~vec3<u32>(u_input.a, 33203u, 30811u), vec2<bool>(true, false), Struct_1(vec4<f32>(-648f, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec2<i32>(var_0.a.b.x, -19025i), vec4<f32>(var_0.a.a.x, var_0.a.c.x, 608f, 176f)), Struct_3(vec2<i32>(1i, 1i), vec4<bool>(true, true, true, false), var_0.a, var_0.a.c, var_0.a.c)).b, true), var_0.a, var_0.a.a, func_6(min(vec3<u32>(0u, 2272u, 27388u), vec3<u32>(u_input.a, 22759u, 0u)), vec2<bool>(true, all(vec3<bool>(false, true, true))), func_2(vec2<bool>(true, true)).a, func_6(vec3<u32>(1351u, u_input.a, 1u), vec2<bool>(true, true), func_2(vec2<bool>(true, false)).a, Struct_3(var_0.a.b, vec4<bool>(true, true, false, false), var_0.a, vec4<f32>(var_0.a.c.x, -1645f, -532f, var_0.a.c.x), vec4<f32>(var_0.a.c.x, var_0.a.c.x, 428f, var_0.a.a.x)))).e));
    global0 = array<vec4<i32>, 12>();
    let var_2 = func_6(~select(vec3<u32>(16967u, 4294967295u, 0u), select(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(1u, 28407u, u_input.a), vec3<bool>(true, var_1.b.x, true)), true) ^ vec3<u32>(~44446u, 257u, 59883u), vec2<bool>(~_wgslsmith_mod_i32(1i, var_1.c.b.x) != (max(var_1.a.x, var_1.a.x) ^ var_0.b.x), (func_8(var_1.c, 1u).x || true) || true), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_1.c.c.x, var_0.a.c.x, -1737f))), vec4<f32>(_wgslsmith_f_op_f32(-335f * var_0.a.a.x), 225f, var_1.e.x, -2201f))), var_1.a | vec2<i32>(~0i, -19717i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d + vec4<f32>(1033f, -1195f, 1252f, var_1.d.x)) + var_1.e))), func_6(vec3<u32>(~(~u_input.a), ~u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 17737u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), !func_8(func_6(vec3<u32>(u_input.a, u_input.a, 1u), vec2<bool>(true, true), Struct_1(var_0.a.a, var_0.a.b, var_0.a.c), var_1).c, _wgslsmith_div_u32(1u, 4294967295u)).yy, var_1.c, var_1));
    var var_3 = func_2(!var_2.b.wx).a.c.x;
    var var_4 = Struct_3(max(_wgslsmith_mod_vec2_i32(vec2<i32>(~1i, _wgslsmith_mod_i32(var_0.b.x, var_2.a.x)), var_0.b.zw), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_2.c.b.x, -29418i), 1i), _wgslsmith_sub_i32(var_2.c.b.x << (32225u % 32u), 1i))), var_1.b, func_9(select(vec4<bool>(!var_1.b.x, false, false, var_1.b.x), !var_1.b, var_2.b), func_2(var_1.b.xy), abs(var_2.a.x)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(var_0.a.c, vec4<f32>(var_2.d.x, var_2.d.x, 291f, var_0.a.c.x))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) - _wgslsmith_f_op_f32(var_1.d.x * -1139f))), -1266f, func_6(vec3<u32>(firstLeadingBit(u_input.a), u_input.a, 40169u), !var_2.b.yz, Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1899f, -1821f, 1113f, 245f), vec4<f32>(var_2.e.x, var_0.a.a.x, var_1.d.x, -463f))), _wgslsmith_sub_vec2_i32(vec2<i32>(-16783i, var_0.b.x), var_1.c.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(536f, -2552f, -1305f, 1000f) * var_2.c.c)), Struct_3(var_1.a, var_1.b, var_1.c, vec4<f32>(var_1.e.x, -237f, -579f, -386f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, var_2.e.x, 278f, var_2.c.c.x)))).e.x, var_1.e.x));
    var var_5 = 30467i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.e.x, var_0.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.a.x, var_4.c.c.x))) * -899f), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.a, 1u, u_input.a) & vec4<u32>(1u, 25201u, u_input.a, 1u), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 7578u)), vec4<u32>(u_input.a, _wgslsmith_sub_u32(89619u | u_input.a, reverseBits(4294967295u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(10340u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), max(4294967295u, ~0u))), var_2.a.x ^ var_1.c.b.x, u_input.a ^ ~u_input.a);
}

