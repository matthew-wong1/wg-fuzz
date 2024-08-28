struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(6965u, 78746u, 36856u), vec3<u32>(15544u, 4294967295u, 4122u), vec3<u32>(0u, 88151u, 1u), vec3<u32>(55547u, 23042u, 14685u), vec3<u32>(5193u, 14787u, 0u), vec3<u32>(1u, 37969u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 6824u, 10663u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 54801u, 1u), vec3<u32>(19799u, 0u, 1u), vec3<u32>(60367u, 0u, 45747u), vec3<u32>(43268u, 27914u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 30068u, 66388u), vec3<u32>(29590u, 11303u, 0u), vec3<u32>(12827u, 4294967295u, 137672u), vec3<u32>(49351u, 68232u, 49160u), vec3<u32>(4294967295u, 0u, 2579u), vec3<u32>(0u, 1u, 67289u), vec3<u32>(53324u, 4294967295u, 13828u), vec3<u32>(59606u, 2970u, 16239u), vec3<u32>(1u, 0u, 37755u), vec3<u32>(0u, 68879u, 27249u), vec3<u32>(10149u, 12727u, 4294967295u), vec3<u32>(20576u, 27525u, 10335u));

var<private> global1: f32 = -125f;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(true && ((u_input.a.x >= u_input.a.x) || any(vec3<bool>(true, true, false))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), true)), false, !((u_input.a.x << (_wgslsmith_mult_u32(68695u, 1u) % 32u)) > (max(u_input.a.x, u_input.a.x) >> (34130u % 32u))));
    var_0 = !vec4<bool>(all(select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, true))), true, all(select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), true), true)), false);
    var var_1 = var_0.x;
    return _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(226f, 617f))) * _wgslsmith_f_op_f32(abs(-479f))) * _wgslsmith_f_op_f32(round(874f))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<u32>, 29>();
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-961f * 541f) + 2621f))))));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-666f, 267f)));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1454f, 354f, 1450f) + vec4<f32>(1176f, 643f, -1098f, -617f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-263f, -1062f, 361f, -1490f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(328f, -509f, 1574f, -1749f))) - vec4<f32>(-1646f, -159f, -1000f, -2297f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -849f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-649f + -150f)), _wgslsmith_f_op_f32(f32(-1f) * -1030f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(893f)))))));
    let var_1 = Struct_1(arg_0.a, vec4<u32>(arg_0.a | 1u, ~(~arg_0.a), 0u, arg_0.a));
    return Struct_1(var_1.a, var_1.b);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global1 = -332f;
    let var_0 = func_2(Struct_1(arg_1.a, abs(arg_1.b & vec4<u32>(arg_1.a, arg_1.b.x, 0u, 53571u))));
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), vec4<i32>(u_input.a.x ^ -(i32(-1i) * -23846i), u_input.a.x, (0i >> ((arg_1.a & arg_1.b.x) % 32u)) | 10202i, ~min(_wgslsmith_div_i32(u_input.a.x, 14682i), 1i)));
    global1 = 1596f;
    var var_2 = select(arg_1.b, vec4<u32>(1u, max(func_2(func_2(var_0)).a, abs(~1u)), ~reverseBits(_wgslsmith_add_u32(var_0.a, 0u)), var_0.a), !(!arg_2));
    return Struct_1(16423u, vec4<u32>(0u, var_2.x, _wgslsmith_dot_vec4_u32(var_0.b, var_0.b), ~var_2.x));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(520f, _wgslsmith_f_op_f32(round(-385f)))), _wgslsmith_f_op_f32(1945f * -1464f)), func_2(Struct_1(1u, vec4<u32>(0u, _wgslsmith_mult_u32(1u, 1u), _wgslsmith_sub_u32(5001u, 1u), 1u))), false);
    global0 = array<vec3<u32>, 29>();
    var var_1 = abs(~var_0.b.x);
    var var_2 = false;
    var_1 = _wgslsmith_add_u32(var_0.b.x, _wgslsmith_sub_u32(~14054u, var_0.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(463f, -730f)))), _wgslsmith_f_op_f32(step(1440f, _wgslsmith_f_op_f32(f32(-1f) * -130f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a.x)) - 199f)))));
    let var_0 = vec2<u32>(24201u, _wgslsmith_dot_vec3_u32(func_4(_wgslsmith_f_op_f32(ceil(-1318f)), Struct_1(~0u, ~vec4<u32>(4294967295u, 34651u, 0u, 0u)), false).b.wyy, func_2(func_4(_wgslsmith_f_op_f32(-1273f - -2614f), func_4(-832f, Struct_1(47528u, vec4<u32>(50382u, 4294967295u, 1597u, 0u)), false), true)).b.xxz));
    let var_1 = Struct_1(_wgslsmith_sub_u32(~(~(~4294967295u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstLeadingBit(var_0.x), 135590u), _wgslsmith_div_u32(var_0.x, ~var_0.x))), ~min(_wgslsmith_div_vec4_u32(vec4<u32>(29277u, 30962u, var_0.x, var_0.x), ~vec4<u32>(65075u, var_0.x, 10399u, 1u)), ~abs(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x))));
    global1 = _wgslsmith_f_op_f32(1f - 1379f);
    let var_2 = 168f;
    let var_3 = Struct_1(var_1.a, _wgslsmith_div_vec4_u32(func_2(func_4(var_2, var_1, all(vec4<bool>(false, false, false, true)))).b, max(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1.a, 1u, 47784u), ~var_1.b), ~var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-172f, _wgslsmith_f_op_f32(step(var_2, 208f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-349f, 434f) + vec2<f32>(var_2, var_2)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 1113f) - vec2<f32>(var_2, 339f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, -1157f, var_2, var_2), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-820f, -349f, -2023f, var_2)))), vec4<f32>(_wgslsmith_f_op_f32(-163f * var_2), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -270f), 750f))), _wgslsmith_add_vec3_u32(~(~vec3<u32>(4294967295u, var_3.a, var_1.b.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_3.b.x, 42346u, var_1.b.x), ~vec3<u32>(var_1.a, 4294967295u, var_1.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.a, var_0.x, var_1.b.x), vec3<u32>(4294967295u, var_1.a, 24715u) << (vec3<u32>(22748u, var_1.b.x, 0u) % vec3<u32>(32u))))), -39853i, _wgslsmith_add_u32(var_3.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~49664u, countOneBits(147686u), ~4294967295u, var_3.b.x), var_3.b)));
}

