struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(1u, 39132u, 23317u), vec3<u32>(0u, 43755u, 1u), vec3<u32>(4294967295u, 677u, 57122u));

var<private> global1: Struct_1 = Struct_1(true);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_mult_i32((abs(u_input.c) ^ _wgslsmith_clamp_i32(arg_0.d.x, arg_0.d.x, arg_0.d.x)) | ~_wgslsmith_clamp_i32(u_input.c, 1i, -49237i), -2147483647i) > ~arg_0.d.x;
    var var_1 = _wgslsmith_dot_vec3_u32(reverseBits(~u_input.a), abs(_wgslsmith_mod_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(28637u, 4294967295u, u_input.a.x), u_input.a, vec3<u32>(u_input.a.x, arg_0.e, 0u)), ~u_input.a, !vec3<bool>(false, true, var_0)), vec3<u32>(arg_0.e, firstTrailingBit(arg_0.e), 0u << (u_input.a.x % 32u)))));
    let var_2 = arg_0.e;
    let var_3 = -2147483647i;
    global1 = Struct_1(((!var_0 & all(vec4<bool>(var_0, global1.a, global1.a, true))) != true) | false);
    return u_input.a.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1556f, -1139f, -282f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1815f, -1841f, -698f)))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-123f, 462f, 1000f), vec3<f32>(2434f, -593f, -907f), select(vec3<bool>(false, true, false), arg_3, false)))))));
    global0 = array<vec3<u32>, 3>();
    global1 = arg_1.a;
    global1 = Struct_1(any(select(arg_3.xy, vec2<bool>(arg_3.x, any(vec2<bool>(true, global1.a))), arg_1.d.x <= abs(arg_1.d.x))));
    let var_1 = u_input.a.x;
    return 23789u;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    var var_0 = false | !global1.a;
    global1 = Struct_1(false);
    var_0 = false;
    global0 = array<vec3<u32>, 3>();
    var var_1 = vec2<u32>(~countOneBits(u_input.a.x), ~func_4(vec3<i32>(u_input.c, 34155i >> (u_input.b % 32u), 53968i), Struct_2(Struct_1(global1.a), Struct_1(true), vec2<bool>(true, global1.a), vec4<i32>(u_input.c, -41202i, 0i, -2147483647i) & vec4<i32>(-80782i, 0i, 1i, -73509i), func_3(Struct_2(Struct_1(true), Struct_1(true), vec2<bool>(global1.a, global1.a), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), 2773u), arg_0.x, vec4<f32>(-1591f, 523f, 1098f, arg_0.x))), ~(~61966u), !select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(true, true, global1.a), true)));
    return ~reverseBits(countOneBits(select(~1u, func_4(vec3<i32>(-2147483647i, u_input.c, 29174i), Struct_2(Struct_1(global1.a), Struct_1(global1.a), vec2<bool>(global1.a, global1.a), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), 41480u), 43722u, vec3<bool>(false, false, global1.a)), global1.a)));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec3<u32>, 3>();
    let var_0 = Struct_2(Struct_1(false), Struct_1(any(select(select(vec2<bool>(false, global1.a), vec2<bool>(true, global1.a), true), select(vec2<bool>(false, global1.a), vec2<bool>(global1.a, false), global1.a), select(vec2<bool>(global1.a, false), vec2<bool>(true, global1.a), true)))), vec2<bool>(all(select(!vec2<bool>(global1.a, global1.a), vec2<bool>(true, global1.a), vec2<bool>(false, true))), all(vec4<bool>(global1.a, true, all(vec2<bool>(global1.a, global1.a)), true))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-19148i, 7188i, 1i, -2147483647i) ^ vec4<i32>(0i, u_input.c, -23374i, -30577i)), vec4<i32>(0i, 62076i, -u_input.c, u_input.c)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, -1i, 2147483647i) << (arg_2 % vec4<u32>(32u)))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(14392u, ~46415u, 48658u) >> ((_wgslsmith_add_u32(u_input.b, u_input.a.x) ^ arg_1) % 32u), arg_2.x));
    var var_1 = Struct_1(arg_0.x <= arg_0.x);
    var var_2 = ~vec4<i32>(u_input.c, -_wgslsmith_add_i32(countOneBits(var_0.d.x), _wgslsmith_add_i32(0i, var_0.d.x)), -select(firstTrailingBit(-2147483647i), -6898i, true), -(~(u_input.c >> (4294967295u % 32u))));
    var var_3 = ~firstLeadingBit(abs(arg_2.x));
    return var_0.b;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    global0 = array<vec3<u32>, 3>();
    global1 = arg_0.b;
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(473f, 1973f, 938f), vec3<f32>(171f, 242f, -1035f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-205f, 1847f, -1246f)))), ~func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1507f, -135f, -321f, 968f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-494f, -255f, -748f, -1367f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-185f))))), _wgslsmith_sub_vec4_u32(vec4<u32>(64544u, u_input.a.x, arg_0.e >> (u_input.a.x % 32u), 31589u), vec4<u32>(4294967295u, arg_0.e, _wgslsmith_sub_u32(countOneBits(u_input.b), arg_0.e), _wgslsmith_mult_u32(max(u_input.a.x, 4294967295u), select(u_input.b, 25430u, false)))));
    var var_1 = ~arg_0.e;
    global0 = array<vec3<u32>, 3>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1028f, _wgslsmith_f_op_f32(700f - -1153f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1395f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~global0[_wgslsmith_index_u32(u_input.a.x, 3u)], abs(min(~u_input.a, vec3<u32>(u_input.a.x, 1267u, u_input.b)))) << (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a.x, u_input.b), 3u)] % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(false), Struct_1(global1.a), vec2<bool>(true, global1.a), vec4<i32>(2147483647i, -7856i, u_input.c, u_input.c), var_0.x), vec3<i32>(u_input.c, -25685i, -9402i))))))) + _wgslsmith_f_op_f32(min(-1228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(193f, -553f, global1.a)) + _wgslsmith_f_op_f32(sign(1672f))))))));
    let var_2 = _wgslsmith_mod_i32(-2147483647i, -_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_mod_i32(-10715i, 1i)), -u_input.c, 38906i));
    let var_3 = Struct_2(Struct_1(!(!(var_1 > var_1))), Struct_1(true), vec2<bool>(true, true), vec4<i32>(28764i, _wgslsmith_sub_i32(-(~1i), -u_input.c), u_input.c, _wgslsmith_mult_i32(u_input.c, 1i)), select(31732u ^ (~var_0.x >> (17397u % 32u)), 12418u, global1.a));
    let var_4 = select(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(var_3.d, var_3.d), _wgslsmith_dot_vec4_i32(var_3.d, var_3.d), min(var_2, u_input.c)) ^ vec3<i32>(reverseBits(u_input.c), min(var_3.d.x, u_input.c), var_3.d.x), -(~vec3<i32>(u_input.c, -7981i, 1i)), -vec3<i32>(-u_input.c, -2147483647i, 32697i)), var_3.d.wxy, global1.a);
    var var_5 = var_3.b.a;
    global0 = array<vec3<u32>, 3>();
    let var_6 = select(!vec3<bool>(select(true, any(vec4<bool>(true, false, true, global1.a)), all(vec3<bool>(false, global1.a, global1.a))), global1.a, func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-870f, -271f, 497f) - vec3<f32>(1261f, -333f, var_1)), ~var_3.e, ~vec4<u32>(var_0.x, u_input.a.x, var_3.e, 47500u)).a), vec3<bool>(false, any(select(vec3<bool>(global1.a, var_3.b.a, var_3.b.a), select(vec3<bool>(true, true, true), vec3<bool>(var_3.c.x, global1.a, true), global1.a), select(vec3<bool>(false, true, global1.a), vec3<bool>(false, var_3.b.a, var_3.c.x), vec3<bool>(var_3.a.a, var_3.a.a, var_3.b.a)))), any(vec2<bool>(all(vec4<bool>(var_3.c.x, global1.a, true, global1.a)), true))), vec3<bool>(true, true, true));
    var var_7 = _wgslsmith_f_op_f32(abs(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 595f) + vec2<f32>(var_1, -771f)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(720f, var_1)))))), var_1);
}

