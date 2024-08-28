struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(1u, 0u), vec2<u32>(15595u, 65885u), vec2<u32>(0u, 29742u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<u32>) -> vec4<u32> {
    return ~(~(~vec4<u32>(u_input.d.x, arg_0.x, u_input.a, 4294967295u) >> (vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(arg_0, arg_0), 0u, abs(38763u)) % vec4<u32>(32u))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    global1 = array<vec2<u32>, 3>();
    let var_0 = ~u_input.a;
    global1 = array<vec2<u32>, 3>();
    var var_1 = Struct_1(abs(select(~1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, 2147483647i), -36424i), ~var_0 < func_2(vec3<u32>(11725u, var_0, 26742u)).x)));
    let var_2 = ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(var_0, var_0, 26286u)) | vec3<u32>(select(17135u, u_input.c, false), 45000u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(107007u), 1u, var_0), ~vec3<u32>(u_input.a, var_0, var_0)));
    return ~_wgslsmith_sub_vec4_u32(firstLeadingBit((vec4<u32>(4294967295u, var_2.x, 55133u, 11599u) >> (vec4<u32>(62142u, 1u, var_0, u_input.c) % vec4<u32>(32u))) ^ vec4<u32>(var_2.x, var_0, 112244u, var_2.x)), vec4<u32>(firstTrailingBit(var_0), 28682u, var_0, ~firstTrailingBit(56457u)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = true;
    global1 = array<vec2<u32>, 3>();
    global0 = func_2(arg_1.yzz).x;
    let var_1 = Struct_1(~(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2.a, 66983i), vec2<i32>(-12185i, -2147483647i)) | arg_2.a));
    global1 = array<vec2<u32>, 3>();
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-13370i, var_1.a), max(38406i, 31549i) >> (_wgslsmith_sub_u32(8458u << (arg_1.x % 32u), ~u_input.d.x) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    global1 = array<vec2<u32>, 3>();
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -864f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1406f)), _wgslsmith_div_f32(-891f, -1443f)))), ~vec4<u32>(0u, _wgslsmith_sub_u32(~46728u, u_input.b), ~u_input.a, 1u), Struct_1(-(4886i << (_wgslsmith_div_u32(u_input.a, 68023u) % 32u))));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -arg_1.a, -4707i, _wgslsmith_add_i32(11080i, arg_0.a)), reverseBits(vec4<i32>(arg_1.a, var_0.a, arg_1.a, arg_1.a) >> (vec4<u32>(90930u, u_input.a, 4294967295u, 4294967295u) % vec4<u32>(32u)))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, arg_1.a, 2147483647i), vec4<i32>(var_0.a, var_0.a, var_0.a, arg_0.a)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a, -1i, var_0.a, arg_1.a), vec4<i32>(arg_0.a, var_0.a, var_0.a, var_0.a)))));
    let var_2 = Struct_1(var_1.a);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1237f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * 1230f);
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(~_wgslsmith_add_i32(arg_0.a, 0i));
    var var_1 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f * _wgslsmith_f_op_f32(round(-766f)))), _wgslsmith_mod_vec4_u32(func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(24562u, arg_2, arg_2), vec3<u32>(62609u, 0u, u_input.a))), ~func_3(1720f)), Struct_1(1i)), Struct_1(firstLeadingBit(~var_0.a)), all(arg_1), arg_1.x);
    var_0 = Struct_1(53900i);
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(arg_2, min(_wgslsmith_div_u32(28515u, ~arg_2), _wgslsmith_mult_u32(u_input.d.x, 78608u) >> (~u_input.c % 32u)), _wgslsmith_dot_vec2_u32(u_input.d, abs(vec2<u32>(1u, arg_2))), u_input.d.x), ~abs(~max(vec4<u32>(13784u, arg_2, 80397u, 0u), vec4<u32>(9833u, 0u, 4294967295u, 48603u))));
    global0 = ~(~0u);
    return func_4(_wgslsmith_f_op_f32(f32(-1f) * -695f), reverseBits(var_2 << (~_wgslsmith_add_vec4_u32(var_2, vec4<u32>(var_2.x, 1u, arg_2, u_input.d.x)) % vec4<u32>(32u))), arg_0);
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = Struct_1(countOneBits(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.a, arg_2.a), -arg_3.x))));
    global1 = array<vec2<u32>, 3>();
    global0 = 0u;
    var var_2 = u_input.b;
    return Struct_1(arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2031f, -1708f) * vec2<f32>(-863f, -1588f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(930f, -542f))))))), func_1(Struct_1(~1i), vec4<bool>(true, true, false, all(vec2<bool>(true, true))), ~(u_input.d.x ^ select(1u, 51129u, false))), func_4(_wgslsmith_f_op_f32(round(-645f)), ~abs(vec4<u32>(0u, 35191u, 1u, 0u)), Struct_1(_wgslsmith_dot_vec4_i32(select(vec4<i32>(20697i, -18075i, -6712i, 1i), vec4<i32>(-50128i, 2147483647i, 54305i, 5829i), vec4<bool>(false, false, true, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, 1i, 12276i), vec4<i32>(16670i, 1i, -2526i, 26239i))))), vec2<i32>(~max(-1i, 1i), func_4(_wgslsmith_f_op_f32(ceil(-987f)), ~abs(vec4<u32>(u_input.a, 58698u, u_input.d.x, u_input.c)), Struct_1(1i)).a));
    global1 = array<vec2<u32>, 3>();
    let var_1 = ~_wgslsmith_mod_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(52280u, 44105u, u_input.d.x), vec3<u32>(1u, 16864u, 4294967295u))), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f), 1000f)).wwx);
    let var_2 = var_0;
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.a, countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 39735u, 53585u, 64370u), vec4<u32>(20097u, var_1.x, 0u, 38025u)) | ~u_input.d.x, ~abs(var_1.x))), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1.x, 51258u, countOneBits(u_input.c)), ~_wgslsmith_mult_u32(u_input.b, 1u)), 26511i, var_2.a);
}

