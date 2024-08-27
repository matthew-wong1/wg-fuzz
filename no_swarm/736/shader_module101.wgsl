struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<i32>(i32(-2147483648), -6561i, 6491i, 0i), vec3<bool>(true, false, true), 306f, vec3<f32>(-1975f, -128f, 264f), vec2<u32>(1u, 1u)), Struct_1(vec4<i32>(-14130i, 19037i, 0i, 1i), vec3<bool>(true, true, true), -687f, vec3<f32>(586f, 559f, 1017f), vec2<u32>(16439u, 7u)), Struct_1(vec4<i32>(i32(-2147483648), -29758i, 1i, 1i), vec3<bool>(false, true, false), -768f, vec3<f32>(-1914f, 366f, -845f), vec2<u32>(8189u, 0u)), Struct_1(vec4<i32>(-21211i, -31014i, 0i, 28901i), vec3<bool>(false, false, false), -1385f, vec3<f32>(212f, -832f, -769f), vec2<u32>(4294967295u, 72979u)), Struct_1(vec4<i32>(-19638i, 66861i, -44013i, 0i), vec3<bool>(true, true, false), 152f, vec3<f32>(-1112f, 1686f, 209f), vec2<u32>(4294967295u, 30304u)), Struct_1(vec4<i32>(1i, -5870i, -1i, -843i), vec3<bool>(true, false, false), 1036f, vec3<f32>(1128f, -605f, -1001f), vec2<u32>(4294967295u, 27329u)), Struct_1(vec4<i32>(-16871i, 1i, -1i, -44446i), vec3<bool>(true, false, false), -329f, vec3<f32>(-691f, -800f, 577f), vec2<u32>(10661u, 0u)), Struct_1(vec4<i32>(1i, -14327i, 2147483647i, 20375i), vec3<bool>(true, false, false), -1811f, vec3<f32>(-699f, 1578f, 2032f), vec2<u32>(0u, 58850u)), Struct_1(vec4<i32>(-19703i, -1i, -8799i, -4977i), vec3<bool>(true, true, true), 335f, vec3<f32>(-1499f, -372f, 1000f), vec2<u32>(25714u, 36467u)), Struct_1(vec4<i32>(-13933i, 1i, i32(-2147483648), 1i), vec3<bool>(true, true, true), 1458f, vec3<f32>(400f, -596f, -424f), vec2<u32>(0u, 33150u)), Struct_1(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 6175i), vec3<bool>(true, true, false), -730f, vec3<f32>(-1156f, 420f, -1057f), vec2<u32>(0u, 26096u)), Struct_1(vec4<i32>(-1i, 33505i, 1i, 0i), vec3<bool>(false, false, false), -1989f, vec3<f32>(777f, -588f, 279f), vec2<u32>(26905u, 19266u)), Struct_1(vec4<i32>(-20456i, 2147483647i, -1i, -25066i), vec3<bool>(false, false, false), -413f, vec3<f32>(1583f, 1019f, 2191f), vec2<u32>(0u, 0u)), Struct_1(vec4<i32>(-1i, -4790i, -7293i, 30212i), vec3<bool>(false, false, true), 901f, vec3<f32>(241f, -466f, 343f), vec2<u32>(14774u, 1u)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, 0i), vec3<bool>(false, true, true), -1034f, vec3<f32>(-1979f, -462f, -674f), vec2<u32>(12017u, 55786u)));

var<private> global1: u32 = 0u;

var<private> global2: array<vec4<i32>, 27>;

var<private> global3: array<Struct_2, 5>;

var<private> global4: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: u32) -> bool {
    global1 = 4294967295u & ~arg_1.x;
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3, arg_0.b.x), 5u)], 30325i, true, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-499f, -108f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(361f, -332f))), vec2<f32>(-948f, 385f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-732f, 1000f) + vec2<f32>(-562f, -809f))))))));
    let var_1 = arg_2;
    global3 = array<Struct_2, 5>();
    global2 = array<vec4<i32>, 27>();
    return any(vec3<bool>(var_0.c | var_0.c, false, select(true, true & all(global4[_wgslsmith_index_u32(arg_0.b.x, 5u)]), all(vec2<bool>(var_0.c, var_0.c)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_3) -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(min(u_input.b.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -1i, u_input.a.x), -vec3<i32>(599i, -1i, 34729i))), u_input.c), 0i, ~(-8942i));
    global4 = array<vec3<bool>, 5>();
    let var_1 = -269f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.x * _wgslsmith_f_op_f32(-564f * _wgslsmith_f_op_f32(select(arg_0.d.x, arg_3.d.x, false)))));
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(~22670u << (_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b.x, 0u, arg_0.a.b.x), arg_0.a.b)) % 32u), ~(~(~0u)), _wgslsmith_mult_u32(~arg_0.a.b.x, arg_3.a.b.x) << (arg_3.a.b.x % 32u), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_3.a.b.x, 73884u, 0u, 36985u), vec4<u32>(76380u, 82954u, arg_0.a.b.x, arg_3.a.b.x), true), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 6171u, arg_3.a.b.x, arg_3.a.b.x), vec4<u32>(4294967295u, 68593u, 24144u, arg_0.a.b.x)))), select(~(vec4<u32>(arg_3.a.b.x, 11906u, arg_0.a.b.x, 0u) ^ ~vec4<u32>(arg_3.a.b.x, 15718u, 15299u, 57840u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 33996u, arg_3.a.b.x, arg_3.a.b.x), vec4<u32>(0u, 20826u, 16129u, 45235u)), (var_1 || any(vec3<bool>(arg_1, arg_1, arg_3.c))) | (arg_0.d.x <= -867f)));
    return -1296f;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    var var_0 = -132f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(121f + -341f), _wgslsmith_f_op_f32(f32(-1f) * -292f)))) + _wgslsmith_f_op_f32(func_4(Struct_3(global3[_wgslsmith_index_u32(min(select(36903u, 1u, true), firstLeadingBit(arg_1.b.x)), 5u)], u_input.a.x, -arg_1.a <= arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-622f, -227f), vec2<f32>(241f, -409f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(435f, -1101f)))), -_wgslsmith_div_i32(arg_1.c.x, 2147483647i) <= firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a.yy, arg_1.c)), vec4<bool>(true, all(vec4<bool>(true, true, true, false)) && (arg_0.x != arg_0.x), !(u_input.c <= arg_1.c.x), -2147483647i >= abs(u_input.a.x)), Struct_3(Struct_2(u_input.a.x, ~arg_1.b, -arg_1.c), ~(-2147483647i), select(false, func_3(Struct_2(u_input.d.x, arg_1.b, u_input.b.xx), vec3<u32>(arg_1.b.x, 4294967295u, 50030u), 2147483647i, arg_1.b.x), true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 2260f), vec2<f32>(1360f, -376f)))))))));
    global4 = array<vec3<bool>, 5>();
    global2 = array<vec4<i32>, 27>();
    var var_1 = ~(_wgslsmith_dot_vec3_i32(~u_input.b, min(firstLeadingBit(vec3<i32>(0i, 20309i, u_input.a.x)), -vec3<i32>(u_input.b.x, u_input.c, u_input.a.x))) << (~(max(arg_1.b.x, arg_0.x) | arg_0.x) % 32u));
    return arg_1.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    var var_0 = global4[_wgslsmith_index_u32(13909u, 5u)];
    return (func_2(vec3<u32>(0u, arg_1.x ^ arg_1.x, arg_1.x), global3[_wgslsmith_index_u32(arg_0.e.x, 5u)]) ^ (~1i & arg_0.a.x)) < arg_0.a.x;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> bool {
    global2 = array<vec4<i32>, 27>();
    global3 = array<Struct_2, 5>();
    var var_0 = 1458u;
    global1 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_1.b.xy, ~arg_1.b.yx), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.b.x), arg_1.b.zz)), abs(54480u)) | max(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, 4294967295u, arg_1.b.x), vec4<u32>(0u, 43614u, arg_1.b.x, 47818u))), ~(abs(19017u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(30442u, arg_1.b.x, 65741u, arg_1.b.x), vec4<u32>(9451u, arg_1.b.x, 1u, arg_1.b.x)) % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-382f, 602f, -135f, -1005f) + vec4<f32>(-339f, -563f, 1387f, -590f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(821f, -1019f, -1000f, 742f) + vec4<f32>(-1075f, 1986f, 573f, -428f)), vec4<f32>(226f, -1008f, -2171f, 903f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-878f - 1315f) - _wgslsmith_f_op_f32(max(185f, 393f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-129f + 273f) - _wgslsmith_div_f32(-910f, -552f))), _wgslsmith_f_op_f32(1547f + -1529f), _wgslsmith_f_op_f32(-1484f * _wgslsmith_f_op_f32(ceil(-758f)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_f_op_f32(-416f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-955f, _wgslsmith_f_op_f32(1001f - -428f)))) - _wgslsmith_f_op_f32(ceil(559f))));
    global1 = 153402u;
    global2 = array<vec4<i32>, 27>();
    let var_1 = !vec4<bool>(true, true, func_5(select(vec2<bool>(true, true), vec2<bool>(false, true), func_1(global0[_wgslsmith_index_u32(31056u, 15u)], vec4<u32>(35684u, 1u, 25191u, 21607u))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~67124u, ~18766u), 5u)]), true);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(-4700i), firstLeadingBit(abs(vec4<u32>(firstTrailingBit(4294967295u), countOneBits(40629u), ~0u, 1u))), _wgslsmith_f_op_f32(-586f + _wgslsmith_f_op_f32(step(-1073f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1000f, 453f, false)), _wgslsmith_f_op_f32(-110f * 713f)))))));
}

