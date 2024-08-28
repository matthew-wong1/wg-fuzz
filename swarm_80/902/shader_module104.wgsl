struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(11417u, false, -162f, 1u), vec2<bool>(true, false), true, Struct_1(5092u, true, -1000f, 4294967295u), true), Struct_2(Struct_1(2455u, true, -1728f, 34029u), vec2<bool>(true, true), false, Struct_1(4294967295u, true, 1160f, 4294967295u), false), Struct_2(Struct_1(15352u, true, 466f, 0u), vec2<bool>(false, true), false, Struct_1(29265u, false, -686f, 0u), true), Struct_2(Struct_1(43978u, false, -610f, 26024u), vec2<bool>(false, true), true, Struct_1(4294967295u, false, -1373f, 1u), true), Struct_2(Struct_1(4934u, false, -1000f, 13172u), vec2<bool>(false, false), true, Struct_1(4294967295u, false, -663f, 32556u), true), Struct_2(Struct_1(0u, false, 445f, 1u), vec2<bool>(false, false), true, Struct_1(31386u, false, 223f, 4294967295u), false), Struct_2(Struct_1(83610u, false, 800f, 19296u), vec2<bool>(false, true), true, Struct_1(4294967295u, false, -985f, 0u), true), Struct_2(Struct_1(75107u, true, -1222f, 30567u), vec2<bool>(false, true), false, Struct_1(11416u, true, 311f, 1u), true), Struct_2(Struct_1(866u, true, -648f, 0u), vec2<bool>(true, false), true, Struct_1(73756u, false, 1085f, 4294967295u), false), Struct_2(Struct_1(51815u, true, 208f, 27131u), vec2<bool>(false, false), false, Struct_1(0u, false, 1000f, 0u), false), Struct_2(Struct_1(1u, false, 957f, 46684u), vec2<bool>(true, false), false, Struct_1(0u, false, -1507f, 52815u), true), Struct_2(Struct_1(34834u, false, -466f, 89276u), vec2<bool>(true, true), true, Struct_1(5672u, false, -809f, 4294967295u), true), Struct_2(Struct_1(57707u, false, -660f, 36874u), vec2<bool>(false, true), false, Struct_1(125610u, true, -703f, 24304u), true), Struct_2(Struct_1(69766u, false, -271f, 4294967295u), vec2<bool>(false, false), true, Struct_1(4294967295u, true, 2299f, 4294967295u), false), Struct_2(Struct_1(0u, false, 552f, 4294967295u), vec2<bool>(true, false), true, Struct_1(0u, true, -526f, 4294967295u), true), Struct_2(Struct_1(1u, true, -611f, 4294967295u), vec2<bool>(true, false), false, Struct_1(1u, true, -158f, 1u), true), Struct_2(Struct_1(49502u, false, -913f, 53661u), vec2<bool>(true, true), false, Struct_1(0u, false, -1833f, 4294967295u), false), Struct_2(Struct_1(4294967295u, false, 334f, 58362u), vec2<bool>(false, true), true, Struct_1(75855u, true, -332f, 27853u), true), Struct_2(Struct_1(1u, false, -1805f, 4294967295u), vec2<bool>(false, true), false, Struct_1(51705u, true, 505f, 21092u), false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_4 {
    global0 = array<Struct_2, 19>();
    var var_0 = vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1070f)) - arg_2.x), _wgslsmith_f_op_f32(-arg_2.x));
    let var_1 = u_input.a.x;
    global0 = array<Struct_2, 19>();
    var var_2 = vec3<u32>(~39473u, arg_0.x, _wgslsmith_add_u32(0u, 8167u));
    return Struct_4(~1u);
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = 12412u;
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, var_0, 4294967295u, 21643u), vec4<u32>(1u, var_0, var_0, var_0), vec4<u32>(var_0, 13658u, var_0, 3711u)), max(vec4<u32>(85189u, var_0, var_0, var_0), vec4<u32>(var_0, var_0, 0u, 37449u)))), ~(vec4<u32>(0u, 0u, 28032u, 0u) | (vec4<u32>(var_0, var_0, var_0, 33830u) | vec4<u32>(var_0, 10874u, 16094u, var_0)))));
    var var_2 = arg_0 << (var_0 % 32u);
    var var_3 = func_1(vec3<u32>(var_0, 91629u, var_0) & abs(vec3<u32>(var_1.x, ~var_1.x, 5062u)), max(~vec4<u32>(0u, var_0, var_1.x, 4294967295u) << (_wgslsmith_add_vec4_u32(var_1, abs(vec4<u32>(4294967295u, 1u, var_1.x, var_1.x))) % vec4<u32>(32u)), select(max(vec4<u32>(1u, 0u, var_1.x, var_1.x) | vec4<u32>(var_0, 4294967295u, var_1.x, 4294967295u), abs(var_1)), vec4<u32>(max(var_0, var_1.x), var_0, ~1751u, 39833u), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1284f, -540f, 889f, 631f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-483f, 799f, -768f, -346f), vec4<f32>(-2030f, 1042f, -1213f, -165f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(370f, 2249f, 1580f, -1041f), vec4<f32>(370f, -475f, 108f, 1521f)))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(-1485f, 739f)) - _wgslsmith_f_op_f32(-303f * _wgslsmith_div_f32(833f, -724f)))));
    return var_1;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<u32>) -> i32 {
    global0 = array<Struct_2, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(373f, -109f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-848f, 355f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 106f))))) + vec2<f32>(-2344f, -857f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(349f, -744f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(494f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(584f, -772f), vec2<f32>(1f, 1f))))));
    let var_1 = vec2<bool>(arg_2.x == arg_2.x, true);
    return 0i;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: vec2<bool>) -> vec2<u32> {
    global0 = array<Struct_2, 19>();
    var var_0 = arg_3.x;
    var_0 = arg_3.x;
    var var_1 = Struct_4(firstLeadingBit(arg_1));
    var var_2 = ~(arg_1 ^ 4294967295u);
    return ~abs(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, arg_0))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1123f + arg_1.c)))));
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(29789u, arg_1.a) ^ vec2<u32>(50266u, arg_0), _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d, arg_1.a), vec2<u32>(4294967295u, arg_0)), vec2<u32>(~1u, arg_1.a))), func_5(~(~4294967295u), _wgslsmith_mod_u32(~(~0u), ~select(arg_0, 4294967295u, false)), _wgslsmith_mult_i32(func_4(func_1(vec3<u32>(arg_0, 84031u, 1u), vec4<u32>(arg_0, arg_0, arg_1.a, 1u), vec4<f32>(-436f, var_0, 535f, var_0)).a, vec3<i32>(1i, u_input.a.x, 0i), func_3(u_input.a.x)), -u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, arg_1.b, true)), arg_1.b | false), all(select(vec2<bool>(arg_1.b, true), vec2<bool>(true, arg_1.b), vec2<bool>(true, false))))));
    global0 = array<Struct_2, 19>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(1586f + -761f), true)), _wgslsmith_f_op_f32(-349f - -444f)))), _wgslsmith_f_op_f32(1243f * _wgslsmith_f_op_f32(f32(-1f) * -808f)));
    var_2 = 1143f;
    return arg_1;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2) -> vec2<bool> {
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    let var_0 = _wgslsmith_f_op_f32(min(467f, -582f));
    var var_1 = !(!select(!select(vec3<bool>(arg_1.b.x, arg_1.a.b, arg_1.d.b), vec3<bool>(false, false, false), arg_1.e), !select(vec3<bool>(false, false, arg_1.b.x), vec3<bool>(arg_1.e, arg_1.d.b, true), arg_1.a.b), (arg_1.b.x == true) && any(arg_1.b)));
    let var_2 = Struct_2(func_2(max(arg_1.a.a, 1u), func_2(arg_0.a, arg_1.a)), !arg_1.b, all(!(!vec3<bool>(arg_1.c, true, var_1.x))) || all(select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true), vec2<bool>(true, true))), func_2(4294967295u, func_2(firstTrailingBit(arg_0.a) ^ (47708u | arg_0.a), arg_1.d)), !(true & arg_1.e));
    return vec2<bool>(var_1.x, any(select(!select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, var_2.a.b, arg_1.b.x), true), !vec3<bool>(var_2.b.x, var_2.a.b, false), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(vec2<bool>(true, true)), any(func_6(func_1(reverseBits(vec3<u32>(14816u, 1u, 23208u)), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-187f, 1000f, 707f, 145f))), Struct_2(func_2(4294967295u, Struct_1(0u, false, 490f, 72845u)), vec2<bool>(false, true), true, func_2(1u, Struct_1(6470u, true, 1000f, 35258u)), true))));
    let var_1 = _wgslsmith_add_i32(i32(-1i) * -u_input.a.x, abs(u_input.a.x));
    let var_2 = Struct_1(16349u, false, -1000f, ~(~81198u));
    global0 = array<Struct_2, 19>();
    var var_3 = func_2(_wgslsmith_add_u32(abs(20772u), _wgslsmith_mult_u32(var_2.d, var_2.a)), var_2);
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a, vec2<i32>(_wgslsmith_clamp_i32(var_1, u_input.a.x, -7563i) & -2147483647i, _wgslsmith_mod_i32(var_1, _wgslsmith_div_i32(var_1, u_input.a.x))), var_0.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(673f, -355f), _wgslsmith_f_op_f32(-var_2.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1001f, -1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(1095f)), _wgslsmith_f_op_f32(504f + 273f), var_3.c)));
}

