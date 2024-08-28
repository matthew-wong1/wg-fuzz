struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec2<u32>(65986u, 6912u), 0u), Struct_1(vec2<u32>(4294967295u, 20477u), 44071u)), Struct_2(Struct_1(vec2<u32>(0u, 1u), 35342u), Struct_1(vec2<u32>(61973u, 87266u), 50693u)), Struct_2(Struct_1(vec2<u32>(1u, 71473u), 1u), Struct_1(vec2<u32>(1u, 92805u), 97513u)), Struct_2(Struct_1(vec2<u32>(31188u, 73657u), 1851u), Struct_1(vec2<u32>(55523u, 11851u), 1u)), Struct_2(Struct_1(vec2<u32>(27053u, 0u), 0u), Struct_1(vec2<u32>(0u, 4759u), 1u)), Struct_2(Struct_1(vec2<u32>(0u, 0u), 18129u), Struct_1(vec2<u32>(18904u, 0u), 4294967295u)), Struct_2(Struct_1(vec2<u32>(135852u, 19149u), 25240u), Struct_1(vec2<u32>(4294967295u, 0u), 59515u)), Struct_2(Struct_1(vec2<u32>(38333u, 4294967295u), 2189u), Struct_1(vec2<u32>(1u, 35344u), 39970u)), Struct_2(Struct_1(vec2<u32>(75267u, 50077u), 0u), Struct_1(vec2<u32>(1u, 4294967295u), 1u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 58144u), 26734u), Struct_1(vec2<u32>(1839u, 0u), 0u)), Struct_2(Struct_1(vec2<u32>(5977u, 1u), 1u), Struct_1(vec2<u32>(7136u, 4294967295u), 13153u)), Struct_2(Struct_1(vec2<u32>(1u, 42232u), 1u), Struct_1(vec2<u32>(21150u, 1u), 27559u)), Struct_2(Struct_1(vec2<u32>(116597u, 4294967295u), 31381u), Struct_1(vec2<u32>(95917u, 44358u), 0u)), Struct_2(Struct_1(vec2<u32>(0u, 7633u), 42537u), Struct_1(vec2<u32>(60719u, 29452u), 4294967295u)), Struct_2(Struct_1(vec2<u32>(0u, 55930u), 12037u), Struct_1(vec2<u32>(99501u, 0u), 57391u)), Struct_2(Struct_1(vec2<u32>(15330u, 4294967295u), 0u), Struct_1(vec2<u32>(4294967295u, 32563u), 40974u)), Struct_2(Struct_1(vec2<u32>(20293u, 4294967295u), 0u), Struct_1(vec2<u32>(1u, 9413u), 45896u)), Struct_2(Struct_1(vec2<u32>(0u, 1u), 1u), Struct_1(vec2<u32>(0u, 3266u), 43792u)), Struct_2(Struct_1(vec2<u32>(92386u, 4294967295u), 1u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 4294967295u)), Struct_2(Struct_1(vec2<u32>(14161u, 0u), 22791u), Struct_1(vec2<u32>(10917u, 91394u), 0u)), Struct_2(Struct_1(vec2<u32>(0u, 0u), 65061u), Struct_1(vec2<u32>(28861u, 29139u), 4294967295u)), Struct_2(Struct_1(vec2<u32>(30782u, 0u), 4294967295u), Struct_1(vec2<u32>(1u, 32035u), 19569u)), Struct_2(Struct_1(vec2<u32>(1u, 71672u), 69689u), Struct_1(vec2<u32>(28110u, 1u), 20776u)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    global0 = array<Struct_2, 23>();
    var var_0 = ~arg_1.a;
    global0 = array<Struct_2, 23>();
    var_0 = ~vec2<u32>(~(~select(0u, var_0.x, false)), 50759u);
    global0 = array<Struct_2, 23>();
    return -2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    return arg_3.xzw;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> vec3<f32> {
    var var_0 = !arg_1.x;
    let var_1 = -467f;
    let var_2 = func_4(min(-vec2<i32>(u_input.a >> (28099u % 32u), func_3(vec2<u32>(4294967295u, arg_0), Struct_1(vec2<u32>(arg_0, arg_0), 0u), vec3<u32>(arg_0, arg_0, arg_0))), vec2<i32>(abs(-2147483647i), -44517i)), vec3<i32>(reverseBits(-u_input.a), reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 26790i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(36074i, 31062i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, -1i) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 16584i, u_input.a, -5502i))), u_input.a ^ u_input.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) - vec3<f32>(-262f, var_1, -1054f))))), select(vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, select(var_1 != -762f, arg_1.x, false), !(var_1 >= var_1)), var_1 != var_1));
    var_0 = any(!vec3<bool>(true, any(!arg_1.xy), var_2.x));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(457f + 1247f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-822f, -1229f, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-328f + -886f))), var_1) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(825f, var_1))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, 440f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, -1118f), vec2<f32>(-876f, var_1))), !arg_1.x)), false))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * 185f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -447f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1248f, var_3.x, _wgslsmith_f_op_f32(step(var_1, var_3.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(524f, var_3.x, -1000f) + vec3<f32>(744f, var_1, 983f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -2813f, 942f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1070f, var_1, var_3.x))), vec3<f32>(1487f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.x, var_1)), var_3.x)), var_2.x))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_2, 23>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(614f * 609f), _wgslsmith_f_op_f32(min(479f, 1984f)), _wgslsmith_f_op_f32(step(-540f, 751f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1353f, -320f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -496f, -1473f) + vec3<f32>(965f, 977f, 1156f))) - _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_sub_u32(arg_0, 1u), select(vec3<bool>(false, true, true), vec3<bool>(arg_2.x, false, false), vec3<bool>(false, true, false)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-519f)), _wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x) - vec3<f32>(_wgslsmith_f_op_f32(-872f * var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.zy);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -816f, 1114f), vec3<f32>(var_1.x, var_1.x, 156f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 807f, var_0.x), vec3<f32>(var_0.x, var_1.x, 903f)))))))));
    return Struct_1(vec2<u32>(56763u, 4294967295u), _wgslsmith_dot_vec4_u32(~min(vec4<u32>(51847u, 24904u, 7585u, 4294967295u), vec4<u32>(0u, 7453u, 1u, 4294967295u)) >> (firstLeadingBit(~vec4<u32>(0u, arg_0, 13986u, 4294967295u)) % vec4<u32>(32u)), max(abs(abs(vec4<u32>(0u, arg_0, arg_0, arg_0))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, arg_0, 151537u, 0u)), ~vec4<u32>(arg_0, 28910u, arg_0, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(993f, 142f, false)), _wgslsmith_f_op_f32(f32(-1f) * -857f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(956f)), _wgslsmith_f_op_f32(851f + -837f)))))));
    var var_1 = u_input.a;
    let var_2 = func_1(select(1u << (~(~1u) % 32u), _wgslsmith_div_u32(~(~4294967295u), abs(1u)), false), u_input.a | firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(8857i, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, 2147483647i, u_input.a))), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), false)));
    let var_3 = _wgslsmith_add_i32(u_input.a << (var_2.a.x % 32u), 26346i);
    var var_4 = vec3<u32>(var_2.a.x, func_1(firstTrailingBit(4294967295u ^ var_2.a.x), ~(-var_3), !func_4(vec2<i32>(-2147483647i, -2147483647i), vec3<i32>(-1i, u_input.a, u_input.a), vec3<f32>(-1000f, 1000f, var_0.x), vec4<bool>(true, true, false, false)).xy).a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b, var_2.b, 1u, 0u), vec4<u32>(var_2.a.x, 0u, var_2.b, var_2.b), vec4<u32>(var_2.b, 35165u, 0u, var_2.b)), vec4<u32>(66503u, 4294967295u, var_2.a.x, 1u) ^ vec4<u32>(var_2.b, 19272u, 0u, 0u)), 1u)) & vec3<u32>(~(~firstTrailingBit(var_2.b)), _wgslsmith_mult_u32(func_1(var_2.a.x, u_input.a, vec2<bool>(true, false)).b, ~1u) | ~(~1u), _wgslsmith_sub_u32(~var_2.b >> (_wgslsmith_clamp_u32(var_2.a.x, 51300u, var_2.a.x) % 32u), var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-22821i, -2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(12835i, var_3)), vec2<i32>(var_3, u_input.a)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.a, -2147483647i)), -vec2<i32>(-2147483647i, -21837i), vec2<bool>(false, false))), u_input.a));
}

