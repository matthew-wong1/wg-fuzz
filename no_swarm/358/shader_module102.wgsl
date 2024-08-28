struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(39752u, 4294967295u, 0u, 9292u), vec4<u32>(16302u, 1u, 1u, 4294967295u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(3770u, 1u, 113243u, 30070u), vec4<u32>(21020u, 1u, 37367u, 1u), vec4<u32>(90776u, 0u, 31605u, 0u), vec4<u32>(95167u, 4294967295u, 22160u, 31215u), vec4<u32>(2968u, 64194u, 42746u, 1u), vec4<u32>(0u, 0u, 1u, 31649u));

var<private> global1: array<vec3<bool>, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> vec3<bool> {
    global0 = array<vec4<u32>, 9>();
    var var_0 = ~(~(vec4<u32>(u_input.c, 2724u, 1u, u_input.c) << (~global0[_wgslsmith_index_u32(4294967295u, 9u)] % vec4<u32>(32u)))) << (abs(vec4<u32>(reverseBits(24818u & u_input.c), ~(~5590u), select(121048u, ~11663u, false), u_input.c)) % vec4<u32>(32u));
    var var_1 = Struct_1(min(58634u << (var_0.x % 32u), max(u_input.c, reverseBits(abs(var_0.x)))), abs(-5689i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, -1000f, 511f))) * vec3<f32>(871f, arg_0.x, -623f)), vec3<f32>(_wgslsmith_f_op_f32(step(-244f, -314f)), _wgslsmith_f_op_f32(-769f + 1000f), -290f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(992f, -285f)), _wgslsmith_f_op_f32(f32(-1f) * -818f), -1000f))));
    var var_2 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(all(global1[_wgslsmith_index_u32(13503u, 13u)]), true, false), select(select(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(27715u, 13u)], false), select(global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(45896u, 13u)], vec3<bool>(true, true, true)), true), !select(global1[_wgslsmith_index_u32(u_input.c, 13u)], vec3<bool>(true, false, false), false)), global1[_wgslsmith_index_u32(0u, 13u)]));
    var_1 = Struct_1(~var_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(~vec4<i32>(28531i, var_1.b, 1i, u_input.a), min(vec4<i32>(-37467i, 0i, -19550i, var_1.b), vec4<i32>(var_1.b, -2147483647i, -9334i, u_input.a)), u_input.a <= 2000i), ~vec4<i32>(u_input.a, u_input.a, -2147483647i, var_1.b) | abs(vec4<i32>(-42109i, u_input.a, u_input.a, u_input.a))), -(~(-vec4<i32>(var_1.b, -36606i, var_1.b, u_input.a)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, arg_0.x, var_1.c.x)))), vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-arg_0.x), var_1.c.x)))));
    return !vec3<bool>(false, false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.x * 610f), _wgslsmith_div_f32(var_1.c.x, arg_0.x))));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = vec2<u32>(firstLeadingBit(~_wgslsmith_sub_u32(~arg_0.x, ~u_input.b)), u_input.b);
    global0 = array<vec4<u32>, 9>();
    var var_1 = firstLeadingBit(max(u_input.a, 1i));
    var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0, ~(vec2<u32>(u_input.b, var_0.x) ^ (arg_0 << (vec2<u32>(0u, arg_0.x) % vec2<u32>(32u))))), arg_0);
    var var_2 = select(select(all(func_3(vec3<f32>(-1585f, 1106f, -490f))), true, true), true, ~u_input.c < ~(_wgslsmith_mod_u32(var_0.x, 69815u) | ~1u));
    return var_0.x ^ 1u;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_1.b, u_input.a), countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(39342i, 24509i, 40051i, u_input.a), vec4<i32>(30489i, 10567i, u_input.a, u_input.a), vec4<i32>(u_input.a, -36398i, 8589i, u_input.a)), -vec4<i32>(u_input.a, -1i, 2147483647i, -1i))), 27215i, arg_1.b), ~vec4<i32>(19251i, u_input.a, ~u_input.a, -1i));
    let var_1 = vec4<bool>(select(all(!(!vec4<bool>(false, false, arg_0.x, true))), any(vec4<bool>(arg_0.x, arg_0.x, true, true)), arg_0.x), any(arg_0.xz), firstLeadingBit(arg_1.a) == ~4294967295u, true);
    global1 = array<vec3<bool>, 13>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -213f);
    let var_3 = arg_1;
    return var_3;
}

fn func_1() -> i32 {
    let var_0 = func_4(global1[_wgslsmith_index_u32(func_2(min(firstTrailingBit(firstLeadingBit(vec2<u32>(1u, 5302u))), ~(~vec2<u32>(1u, u_input.c)))), 13u)], Struct_1(select(u_input.c, ~1u, true), _wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(-821f)), _wgslsmith_f_op_f32(685f * -1000f), _wgslsmith_div_f32(1297f, 268f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1780f, -1100f, -1032f), vec3<f32>(2048f, -132f, -644f))), vec3<f32>(1095f, -2484f, 1203f))), true))));
    global1 = array<vec3<bool>, 13>();
    global0 = array<vec4<u32>, 9>();
    let var_1 = var_0.a;
    return min(u_input.a, min(func_4(vec3<bool>(false, false, false), Struct_1(u_input.b, var_0.b, var_0.c)).b ^ ~func_4(global1[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(var_0.a, 64623i, vec3<f32>(-1358f, -1327f, var_0.c.x))).b, _wgslsmith_sub_i32(countOneBits(var_0.b ^ var_0.b), func_4(select(vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(u_input.c, 13u)], false), Struct_1(0u, var_0.b, vec3<f32>(1046f, var_0.c.x, var_0.c.x))).b)));
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: u32) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(151f + 156f), _wgslsmith_f_op_f32(1000f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(518f)))))), _wgslsmith_f_op_f32(1209f * _wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(u_input.b, 13u)], Struct_1(arg_1.x, -77077i, vec3<f32>(584f, -1865f, 1000f))).c.x * 1096f), _wgslsmith_f_op_f32(f32(-1f) * -560f)), -680f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 13>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(715f))));
    global0 = array<vec4<u32>, 9>();
    var var_1 = true;
    let var_2 = vec3<i32>(u_input.a, 14124i, u_input.a);
    let var_3 = Struct_1(u_input.b, 0i, _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_clamp_i32(u_input.a, 1i, ~func_1()), select(_wgslsmith_sub_vec2_u32(~vec2<u32>(65986u, u_input.b), firstLeadingBit(vec2<u32>(u_input.c, 4294967295u))), ~(vec2<u32>(u_input.b, u_input.c) | vec2<u32>(4294967295u, 9966u)), true), u_input.c)));
    let var_4 = ~_wgslsmith_div_vec4_u32(select(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3.a, u_input.c), 9u)], global0[_wgslsmith_index_u32(func_4(!global1[_wgslsmith_index_u32(1u, 13u)], Struct_1(var_3.a, var_2.x, vec3<f32>(var_3.c.x, var_3.c.x, 1436f))).a, 9u)], !all(vec2<bool>(true, false))), reverseBits(global0[_wgslsmith_index_u32(~(~u_input.c), 9u)]));
    var var_5 = Struct_1(_wgslsmith_sub_u32(1u, ~(func_4(vec3<bool>(true, false, true), var_3).a << ((var_4.x ^ u_input.c) % 32u))), ~(-_wgslsmith_mod_i32(func_1(), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b, u_input.a, 2147483647i, u_input.a), vec4<i32>(12583i, var_2.x, var_2.x, 1i)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.c * vec3<f32>(-572f, -2722f, var_3.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_3.c.x)), _wgslsmith_add_vec2_i32(-vec2<i32>(-1i, max(2147483647i, 7362i)), -vec2<i32>(-51345i, -47314i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_4(vec3<bool>(true, true, false), func_4(vec3<bool>(false, true, false), Struct_1(4294967295u, var_2.x, var_3.c))).c.x, 177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_5(-1i, vec2<u32>(u_input.c, var_5.a), u_input.b)).x - -387f), -234f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-552f, -1000f, _wgslsmith_f_op_f32(max(var_3.c.x, 1752f)), 1f)))));
}

