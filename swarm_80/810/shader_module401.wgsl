struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-229f, -1293f, -794f, 447f), vec4<f32>(-1134f, 2405f, 1000f, -1000f), vec4<f32>(-1343f, -820f, -674f, 2372f), vec4<f32>(966f, -2491f, -769f, 1404f), vec4<f32>(-1256f, 291f, 1037f, 152f), vec4<f32>(-1559f, -228f, -2339f, 1034f), vec4<f32>(648f, -172f, -1227f, 1666f), vec4<f32>(-999f, 552f, 662f, 1016f), vec4<f32>(430f, 703f, -509f, -862f), vec4<f32>(-278f, 1942f, -874f, 546f), vec4<f32>(-2005f, -1695f, -305f, -235f), vec4<f32>(613f, -700f, 904f, -1000f), vec4<f32>(732f, -217f, 392f, 1512f), vec4<f32>(-333f, -332f, 1417f, 1000f), vec4<f32>(1187f, 287f, -472f, -1934f), vec4<f32>(-274f, 393f, 1835f, 370f), vec4<f32>(1178f, -914f, -228f, -409f));

var<private> global1: bool;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)), -750f);
    let var_1 = var_0.x;
    return -u_input.e.x;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_4) -> vec2<f32> {
    var var_0 = arg_3;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a.a.x, 1915f), _wgslsmith_f_op_f32(332f + 496f), 366f >= arg_3.a.a.x))), _wgslsmith_f_op_f32(max(394f, _wgslsmith_f_op_f32(min(-1192f, arg_0.a.a.x))))));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> i32 {
    var var_0 = ~max(u_input.b, 0u);
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.a.a, _wgslsmith_f_op_vec2_f32(func_3(arg_1, arg_1.a.a, vec2<u32>(11328u, u_input.b), Struct_4(arg_1.a, -334f, false, 23952i, vec2<i32>(0i, -41366i))))) + _wgslsmith_f_op_vec2_f32(-arg_1.a.a)), _wgslsmith_add_i32(28343i, u_input.d)), any(select(!select(vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), vec4<bool>(true, arg_1.b, false, arg_1.b), vec4<bool>(false, false, arg_1.b, false)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(false, true, true, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, true, false)))));
    global0 = array<vec4<f32>, 17>();
    global1 = (var_1.b && false) || var_1.b;
    global1 = all(select(select(!vec2<bool>(arg_1.b, var_1.b), select(vec2<bool>(false, var_1.b), select(vec2<bool>(false, false), vec2<bool>(true, var_1.b), vec2<bool>(arg_1.b, true)), vec2<bool>(false, arg_1.b)), false), select(vec2<bool>(arg_1.a.b < 19713i, arg_1.b), select(!vec2<bool>(true, arg_1.b), vec2<bool>(true, true), select(vec2<bool>(arg_1.b, true), vec2<bool>(true, true), arg_1.b)), vec2<bool>(false, false)), true));
    return abs(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 17>();
    var var_0 = ~4294967295u;
    var var_1 = -u_input.c;
    let var_2 = vec3<u32>(u_input.a, 10510u, 1u);
    var_1 = vec4<i32>(func_1(), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(firstLeadingBit(-14718i), var_1.x >> (var_2.x % 32u), var_1.x, ~0i)), vec4<i32>(~(u_input.c.x ^ u_input.d), var_1.x << (var_2.x % 32u), max(u_input.c.x, -6964i) >> (_wgslsmith_sub_u32(var_2.x, 4294967295u) % 32u), _wgslsmith_add_i32(func_2(-409f, Struct_3(Struct_1(vec2<f32>(-671f, 314f), var_1.x), false)), -2147483647i))), firstTrailingBit(var_1.x), u_input.c.x);
    var_0 = _wgslsmith_mult_u32(46505u, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(var_2, ~vec3<u32>(4294967295u, 0u, 0u))), vec3<u32>(~(~var_2.x), _wgslsmith_sub_u32(var_2.x, _wgslsmith_dot_vec2_u32(var_2.xy, vec2<u32>(var_2.x, 1u))), var_2.x)));
    let var_3 = Struct_1(vec2<f32>(-1042f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(111f, -567f))))), abs(max(countOneBits(-51660i >> (var_2.x % 32u)), -33335i)));
    var var_4 = vec2<i32>(~_wgslsmith_div_i32(abs(_wgslsmith_sub_i32(var_1.x, -2147483647i)), u_input.e.x), func_1());
    let var_5 = _wgslsmith_dot_vec3_u32(var_2, ~vec3<u32>(var_2.x, 1u, 4294967295u & u_input.b)) >> (~_wgslsmith_mult_u32(~(~var_2.x), 15344u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~4798u)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, 3152u, 42970u, u_input.a), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 52516u, u_input.b, var_5), vec4<u32>(u_input.b, 1u, var_2.x, var_5)), vec4<u32>(81294u, u_input.a, u_input.b, var_5))), _wgslsmith_div_i32(14800i, var_1.x >> (~_wgslsmith_clamp_u32(0u, 3320u, u_input.b) % 32u)), 524f, _wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, firstTrailingBit(60125u) << (1u % 32u)), ~var_2.x));
}

