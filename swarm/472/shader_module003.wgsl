struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(3637u, 0u), vec2<u32>(1u, 36562u), vec2<u32>(4294967295u, 0u), vec2<u32>(2756u, 1u));

var<private> global1: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(1268f, 146f, 1113f), vec3<f32>(973f, 203f, -903f), vec3<f32>(-387f, -2193f, -202f), vec3<f32>(743f, 1000f, 141f), vec3<f32>(398f, -193f, -581f), vec3<f32>(319f, -1620f, 1063f), vec3<f32>(804f, -888f, 777f), vec3<f32>(-1906f, 479f, -1087f), vec3<f32>(-1000f, 520f, -998f), vec3<f32>(876f, 217f, 756f), vec3<f32>(1270f, -140f, 672f), vec3<f32>(-179f, -950f, 982f));

var<private> global2: f32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    global2 = 2032f;
    global1 = array<vec3<f32>, 12>();
    global2 = -353f;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 258f) - -130f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -756f), _wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(f32(-1f) * -2028f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-305f, arg_0, -1223f, arg_2.x) - vec4<f32>(-626f, arg_2.x, -1000f, arg_2.x)), vec4<f32>(339f, -1440f, 230f, 476f))))));
    global0 = array<vec2<u32>, 4>();
    return 90585u | ~(~select(49421u, 0u, false) ^ 31066u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_3(vec3<bool>(true, _wgslsmith_mod_i32(arg_0.c.d.x, ~u_input.e) <= countOneBits(35259i), !arg_0.a));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(arg_0.c.d.x, u_input.b, 0i), vec3<i32>(2147483647i, arg_0.c.d.x, u_input.e), vec3<bool>(var_0.a.x, false, var_0.a.x)), firstLeadingBit(countOneBits(vec3<i32>(arg_0.c.d.x, u_input.e, 19895i)))), i32(-1i) * -(1i ^ arg_0.b), 24801i, 1i) | vec4<i32>(-u_input.b, _wgslsmith_mod_i32(u_input.b, ~u_input.b), u_input.b & -arg_0.b, abs(u_input.b));
    var var_2 = Struct_4(0i, arg_0.c);
    let var_3 = ~(-(~1i));
    var var_4 = ~(-var_1.x);
    return ~(~vec4<u32>(~4294967295u, _wgslsmith_mod_u32(62125u, 4294967295u), 0u, ~var_2.b.c)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~_wgslsmith_clamp_u32(arg_0.c.c, 46069u, 1646u), var_2.b.c, abs(_wgslsmith_div_u32(57145u, u_input.a))), vec4<u32>(_wgslsmith_clamp_u32(u_input.a, arg_0.c.c, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(16597u, arg_0.c.c), global0[_wgslsmith_index_u32(4294967295u, 4u)]), firstLeadingBit(u_input.c), u_input.c | 45945u) ^ vec4<u32>(arg_0.c.c, ~u_input.d, countOneBits(arg_0.c.c), 0u)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-975f)) + -680f)));
    return false;
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global0 = array<vec2<u32>, 4>();
    global0 = array<vec2<u32>, 4>();
    let var_0 = !func_4(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), ~vec4<u32>(u_input.c, u_input.a, 16022u, u_input.a) ^ _wgslsmith_sub_vec4_u32(func_3(Struct_2(true, u_input.b, Struct_1(vec3<bool>(false, true, true), vec4<f32>(471f, 129f, -299f, arg_0), 27798u, vec2<i32>(-10112i, -25646i), true)), vec4<f32>(-538f, -532f, arg_0, -261f)), vec4<u32>(u_input.a, u_input.c, u_input.c, 68427u)), u_input.e, _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, 7533i, u_input.e)), vec3<i32>(u_input.b, u_input.b, u_input.b) << (func_3(Struct_2(true, u_input.b, Struct_1(vec3<bool>(false, false, false), vec4<f32>(279f, arg_0, arg_0, 1261f), u_input.d, vec2<i32>(u_input.b, u_input.e), true)), vec4<f32>(-1000f, 168f, arg_0, 657f)).ywx % vec3<u32>(32u))));
    var var_1 = vec3<i32>(~(reverseBits(abs(u_input.e)) & countOneBits(37855i)), reverseBits(firstTrailingBit(_wgslsmith_clamp_i32(13919i, u_input.b, -51670i)) | -2147483647i), -25905i >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(21184u, 0u, 63856u, u_input.a), vec4<u32>(77145u, u_input.d, u_input.a, 4294967295u)), vec4<u32>(u_input.d, ~u_input.d, ~u_input.a, ~u_input.c)) % 32u));
    global1 = array<vec3<f32>, 12>();
    return !select(vec3<bool>(false, select(var_0, arg_0 == -227f, true), false), vec3<bool>(true, true != var_0, false), var_0);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> vec4<u32> {
    return ~vec4<u32>(u_input.c, min(33932u, ~(1u << (u_input.d % 32u))), 35129u, u_input.a);
}

fn func_6(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -511f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(822f - -480f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(func_6(reverseBits(func_1(_wgslsmith_f_op_f32(f32(-1f) * -259f), vec3<f32>(-611f, 1378f, 2352f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1054f, 557f, -792f), vec3<f32>(-501f, -955f, 573f), true)), 0u) << (~_wgslsmith_sub_u32(0u, u_input.c) % 32u)), func_5(!func_2(_wgslsmith_f_op_f32(trunc(-2127f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(757f, 2072f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1408f, -1000f))))), vec2<bool>(true, true))), u_input.e, ~select(~u_input.b, u_input.e << (0u % 32u), true)), true));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(round(var_1)))));
    var var_2 = abs(~global0[_wgslsmith_index_u32(max(~u_input.a, max(min(u_input.d, u_input.d), ~u_input.a)), 4u)]);
    var var_3 = 1u;
    let var_4 = !func_2(378f);
    global2 = _wgslsmith_f_op_f32(func_6(_wgslsmith_mod_u32(select(_wgslsmith_mult_u32(u_input.a, 0u), 1u, true), _wgslsmith_add_u32(1u, select(~4294967295u, min(u_input.a, var_2.x), true))), ~(vec4<u32>(0u, 1643u, 0u, u_input.a) ^ max(vec4<u32>(var_2.x, u_input.c, var_2.x, 88538u), vec4<u32>(1u, 5965u, 35116u, u_input.d))) ^ vec4<u32>(4294967295u | var_2.x, countOneBits(4294967295u), firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.d)), 0u), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1389f, -168f, 601f) + global1[_wgslsmith_index_u32(var_2.x, 12u)]) + global1[_wgslsmith_index_u32(4294967295u, 12u)])))));
}

