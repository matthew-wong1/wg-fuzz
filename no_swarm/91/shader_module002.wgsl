struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> vec3<f32> {
    let var_0 = 387f;
    global0 = array<vec3<bool>, 20>();
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-590f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, var_0))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f)) * 879f), var_0, true)));
    let var_3 = ~(29953u | ~(~_wgslsmith_clamp_u32(u_input.a, 32531u, u_input.b)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(908f, var_0, 1000f) * vec3<f32>(var_0, var_0, -1471f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, var_0))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_0 * 1771f), -691f, _wgslsmith_div_f32(-1000f, -736f))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: f32) -> i32 {
    var var_0 = -256f;
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1300f, 179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1806f * -773f) + _wgslsmith_f_op_f32(ceil(-158f))), 357f))), vec4<f32>(-1139f, -458f, _wgslsmith_f_op_f32(f32(-1f) * -1048f), arg_3), false));
    global0 = array<vec3<bool>, 20>();
    return arg_1.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    global0 = array<vec3<bool>, 20>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1055f, arg_0.x, arg_0.x, 558f)))) - arg_0), arg_1.c, arg_1, -2147483647i >= _wgslsmith_clamp_i32(max(arg_1.c, 1i) & ~arg_1.c, -_wgslsmith_mod_i32(arg_1.c, arg_1.c), arg_1.c));
    global0 = array<vec3<bool>, 20>();
    var var_1 = 9021i;
    var_1 = 0i;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1()).x - _wgslsmith_f_op_f32(-795f * arg_0.x))) + 723f)));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    var var_0 = max(21775u, ~(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 39971u, arg_3.x, 29959u)), vec4<u32>(arg_3.x, 17613u, arg_3.x, arg_3.x)) ^ 0u));
    let var_1 = Struct_2(false, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_2, -326f) - vec3<f32>(arg_1, arg_1, 1160f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, 683f) + vec3<f32>(548f, -989f, 930f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1144f, 1058f, arg_2) - vec3<f32>(-1067f, 1624f, 702f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1, 397f)))))), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(1437i, -26904i, -21113i, 7964i) >> (vec4<u32>(4294967295u, arg_3.x, arg_0.x, 43601u) % vec4<u32>(32u)), vec4<i32>(-29442i, 1i, 13725i, 64820i) << (vec4<u32>(28707u, arg_0.x, 4294967295u, 1u) % vec4<u32>(32u)))), select(vec4<bool>(true, true, any(vec2<bool>(true, true)), true), vec4<bool>(false, any(!global0[_wgslsmith_index_u32(arg_0.x, 20u)]), !all(vec2<bool>(false, false)), true && all(vec2<bool>(true, false))), !all(vec3<bool>(true, true, true))));
    var_0 = ~arg_3.x;
    global0 = array<vec3<bool>, 20>();
    var var_2 = 532f;
    return 3460i;
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(-(~countOneBits(vec4<i32>(2147483647i, -1i, arg_0.b, 2147483647i))), _wgslsmith_f_op_f32(-arg_0.a.x), countOneBits(64000u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.x))));
    var_0 = Struct_1(_wgslsmith_sub_vec4_i32(var_0.a, _wgslsmith_add_vec4_i32(select(var_0.a, var_0.a & vec4<i32>(-36174i, arg_0.c.c, 13507i, 2147483647i), true), vec4<i32>(12917i, var_0.a.x, var_0.a.x, var_0.a.x) ^ vec4<i32>(var_0.a.x, -3921i, var_0.a.x, arg_0.c.c))), var_0.b, ~select(var_0.c, 1u, arg_0.d), -750f);
    var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(-abs(vec3<i32>(var_0.a.x, var_0.a.x, arg_0.c.c)), vec3<i32>(arg_0.b, ~21862i, var_0.a.x)), i32(-1i) * -70129i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.c.c, arg_0.c.c, var_0.a.x) & -vec3<i32>(arg_0.b, arg_0.b, var_0.a.x), var_0.a.wzw & var_0.a.wxz), _wgslsmith_mult_i32(8124i, var_0.a.x)), _wgslsmith_f_op_vec3_f32(func_1()).x, ~(1u | ~var_0.c), 163f);
    let var_1 = var_0.a.xw;
    let var_2 = 0u;
    return Struct_1(-abs(abs(reverseBits(vec4<i32>(var_0.a.x, arg_0.c.c, var_1.x, 19089i)))), _wgslsmith_f_op_f32(-789f + _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_div_u32(0u, 22268u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.b.x - _wgslsmith_f_op_f32(min(var_0.d, 1977f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1725f, -624f, _wgslsmith_f_op_f32(select(-380f, 1000f, false)), _wgslsmith_f_op_f32(f32(-1f) * -533f))), ~(-24948i), Struct_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-961f, 343f, -572f) * vec3<f32>(1127f, -277f, 1796f))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-2147483647i, 16729i)) & func_2(vec2<u32>(u_input.a, 1u), vec4<i32>(0i, 2423i, 30052i, 0i), Struct_3(vec2<i32>(-47295i, 13499i), vec3<u32>(u_input.b, u_input.b, 65670u)), 1878f), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false)), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true))), -2147483647i >= abs(func_4(abs(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_f_op_f32(func_3(vec4<f32>(248f, 1470f, -1337f, -393f), Struct_2(true, vec3<f32>(-1815f, 1237f, 2736f), 1i, vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_f32(-441f * -684f), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.a, 0u, u_input.b)))), global0[_wgslsmith_index_u32(countOneBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 52600u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.b)))) | 0u, 20u)]);
    var var_1 = -572f;
    let var_2 = _wgslsmith_mod_i32(max(1i, _wgslsmith_mult_i32(12431i, firstTrailingBit(var_0.a.x))), ~(-17988i) << ((34963u >> (firstTrailingBit(firstTrailingBit(0u)) % 32u)) % 32u));
    let var_3 = max(var_0.c, ~(~abs(47069u))) >= ((4294967295u >> (var_0.c % 32u)) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, u_input.b, var_0.c, var_0.c), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, var_0.c), vec4<u32>(27249u, 18102u, 4294967295u, var_0.c)), ~vec4<u32>(91909u, u_input.b, u_input.b, var_0.c))) % 32u));
    var var_4 = Struct_3(_wgslsmith_sub_vec2_i32(vec2<i32>((var_2 << (1u % 32u)) << (~46161u % 32u), var_2), func_5(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, var_0.b, -568f, -379f)), var_2, Struct_2(true, vec3<f32>(1581f, var_0.b, -1170f), 0i, vec4<bool>(var_3, true, true, true)), var_3), false || var_3, select(select(vec3<bool>(true, var_3, var_3), global0[_wgslsmith_index_u32(39850u, 20u)], vec3<bool>(var_3, false, var_3)), global0[_wgslsmith_index_u32(~56073u, 20u)], true)).a.wx), vec3<u32>(_wgslsmith_mult_u32(1u, u_input.b), u_input.a, 5679u));
    let var_5 = !vec4<bool>(!var_3, var_3, var_3, var_3);
    var_4 = Struct_3(var_4.a, vec3<u32>(~(~52669u), 36738u, var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -29857i, var_2), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, var_0.d))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(round(var_0.d)))))), var_4.b.x);
}

