struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(967f, -453f, 1179f), vec3<f32>(-1111f, -307f, -505f), vec3<f32>(1078f, -1354f, 421f), vec3<f32>(-1295f, 796f, 633f), vec3<f32>(-780f, -267f, -1498f), vec3<f32>(-494f, 140f, -655f), vec3<f32>(624f, 1032f, -2461f), vec3<f32>(-1000f, -567f, -722f), vec3<f32>(512f, 1015f, -669f), vec3<f32>(399f, -695f, 253f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    var var_0 = vec3<u32>(4294967295u, firstLeadingBit(458u >> (_wgslsmith_div_u32(2695u, u_input.a.x) % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 1u), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x))) | _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a.x, 1u), u_input.a), ~vec2<u32>(58233u, 1u))) ^ vec3<u32>(~2727u, 0u, u_input.a.x >> (abs(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % 32u));
    let var_1 = select(arg_1, abs(vec2<i32>(-1i, abs(arg_1.x)) | (_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.x, 20772i), vec2<i32>(arg_1.x, 0i)) << (~vec2<u32>(12500u, 1u) % vec2<u32>(32u)))), !vec2<bool>(false, true || all(vec3<bool>(true, false, true))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 1076f) + vec2<f32>(1407f, arg_0.a))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(-998f, -1000f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.a, arg_0.a)))))), vec3<i32>(-(i32(-1i) * -21551i), _wgslsmith_mult_i32(countOneBits(var_1.x), countOneBits(1i)), -2147483647i), (_wgslsmith_dot_vec2_i32(arg_1, var_1) ^ max(1i, -10202i)) > 0i);
    var var_3 = _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(~u_input.a.x, var_0.x, ~32864u, ~u_input.a.x)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(~u_input.a.x, _wgslsmith_sub_u32(12510u, 1u), 0u, firstLeadingBit(var_0.x))), (~vec4<u32>(u_input.a.x, var_0.x, 0u, 4294967295u) | ~vec4<u32>(var_0.x, 4294967295u, u_input.a.x, 1u)) & vec4<u32>(~0u, ~1u, _wgslsmith_clamp_u32(u_input.a.x, var_0.x, var_0.x), 0u)));
    let var_4 = vec3<i32>(arg_1.x, -41956i >> (var_0.x % 32u), _wgslsmith_clamp_i32(var_2.b.x, 24180i, min(2147483647i, var_2.b.x)));
    return 37139i;
}

fn func_4(arg_0: i32) -> i32 {
    let var_0 = max(max(arg_0, max(-29751i, 4313i ^ abs(arg_0))), select(_wgslsmith_mod_i32(5056i, arg_0), arg_0, true));
    let var_1 = countOneBits(~arg_0);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-665f, 1405f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1224f, -1000f), vec2<f32>(-1450f, 844f), false)))))), select(abs(_wgslsmith_div_vec3_i32(~vec3<i32>(var_1, 2494i, var_1), -vec3<i32>(var_1, var_1, var_1))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, 1i, var_1), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, var_1, 0i), vec3<i32>(arg_0, var_0, var_1)), vec3<i32>(var_0, var_1, 0i)), abs(vec3<i32>(-4661i, var_1, 57187i) << (vec3<u32>(4294967295u, 4294967295u, u_input.a.x) % vec3<u32>(32u)))), true), true);
    var var_3 = var_2.c;
    var var_4 = func_3(Struct_1(968f), vec2<i32>(var_2.b.x >> (_wgslsmith_mult_u32(u_input.a.x, select(26005u, 1u, false)) % 32u), var_2.b.x));
    return -4222i;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(-858f);
    var var_1 = _wgslsmith_mod_i32((-50174i >> ((u_input.a.x ^ u_input.a.x) % 32u)) & ~1i, _wgslsmith_clamp_i32(-1i, 1i, _wgslsmith_div_i32(reverseBits(2590i), 20603i))) << (0u % 32u);
    let var_2 = _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, ~u_input.a.x), ~u_input.a), vec2<u32>(u_input.a.x, max(abs(4294967295u), countOneBits(u_input.a.x)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x) >> (vec3<u32>(u_input.a.x, 0u, 1u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 36358u, 59060u))));
    var var_3 = func_4(-func_3(Struct_1(_wgslsmith_f_op_f32(-447f + 506f)), -(~vec2<i32>(2147483647i, 0i))));
    var_1 = _wgslsmith_dot_vec2_i32(-reverseBits(-vec2<i32>(1i, 1i)), countOneBits(~vec2<i32>(1i, 1i)));
    return !all(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<u32>) -> vec2<f32> {
    let var_0 = Struct_1(-1303f);
    let var_1 = -1754f;
    global0 = array<vec3<f32>, 10>();
    var var_2 = -1i;
    let var_3 = vec2<bool>(any(select(!vec2<bool>(true, arg_1), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), true), all(select(vec4<bool>(false, true, true, false), vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, false, arg_1))))), any(select(!(!vec4<bool>(false, true, false, arg_1)), vec4<bool>(arg_1, true & arg_1, func_2(var_0), true), select(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(false, false, arg_1, arg_1)), vec4<bool>(arg_1, arg_1, true, false), func_2(var_0)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(779f - -1277f), _wgslsmith_f_op_f32(-1377f - var_0.a)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))) * 692f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1449f) * _wgslsmith_f_op_f32(sign(-178f))), arg_1))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> i32 {
    global0 = array<vec3<f32>, 10>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(154f, arg_1.a))), vec2<f32>(-106f, 1194f)) - _wgslsmith_f_op_vec2_f32(func_5(global0[_wgslsmith_index_u32(abs(65773u), 10u)], func_2(Struct_1(arg_1.a)), vec4<u32>(u_input.a.x, 0u, 16138u, u_input.a.x))))), vec3<i32>(2147483647i >> ((firstLeadingBit(41002u) & select(arg_2, 11892u, true)) % 32u), select(-(i32(-1i) * -21999i), -19299i, !arg_0.x), ~(-2147483647i)), true);
    let var_1 = !select(vec4<bool>(arg_0.x, false, var_0.c, true), !select(!vec4<bool>(true, false, var_0.c, var_0.c), !vec4<bool>(true, var_0.c, var_0.c, true), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, var_0.c, true), true)), !any(arg_0));
    global0 = array<vec3<f32>, 10>();
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1341f - -436f), _wgslsmith_f_op_f32(-361f - var_0.a.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, var_0.a.x) + var_0.a) * _wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(-159f, arg_1.a)))))));
    return _wgslsmith_div_i32(~18851i, -27135i);
}

fn func_6(arg_0: i32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1052f, -944f), vec2<f32>(1045f, -697f), false)))))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_0, 26064i), vec3<i32>(arg_0, arg_0, arg_0)), ~vec3<i32>(0i, arg_0, arg_0)), vec3<i32>(-2147483647i, reverseBits(15522i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-40607i, 20300i, arg_0, -5980i), vec4<i32>(0i, 1150i, arg_0, arg_0))), firstTrailingBit(-vec3<i32>(arg_0, arg_0, arg_0))), true);
    global0 = array<vec3<f32>, 10>();
    var var_1 = Struct_1(1f);
    var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1313f) * var_1.a), 1f)));
    var var_2 = Struct_1(var_1.a);
    return select(~855u, 10026u, !all(!vec4<bool>(var_0.c, var_0.c, true, var_0.c)));
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_3) -> StorageBuffer {
    return StorageBuffer(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i), min(vec4<i32>(-1i, -2147483647i, 1i, _wgslsmith_clamp_i32(2147483647i, -57233i, 1i)), vec4<i32>(~_wgslsmith_sub_i32(-1i, 10325i), -_wgslsmith_dot_vec4_i32(vec4<i32>(4290i, 2147483647i, 0i, 0i), vec4<i32>(0i, 29707i, -6792i, 13494i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(26945i, 48575i)), func_1(vec2<bool>(true, true), Struct_1(-366f), arg_3.c))), 789f, reverseBits(~(~(~vec3<u32>(u_input.a.x, arg_1.c, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 + _wgslsmith_f_op_vec4_f32(-arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(vec2<u32>(~min(~4294967295u, u_input.a.x), func_6(max(~(-30622i), func_1(vec2<bool>(true, true), Struct_1(-187f), u_input.a.x)))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), -694f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1773f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(195f - -2285f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -255f))), 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(267f, 866f, -788f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1920f, 920f, -334f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1602f, 1714f, -2220f, -1460f), vec4<f32>(1035f, 726f, -1000f, -1162f)) - vec4<f32>(1f, 1f, 1f, 1f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1236f, -1378f, false)), _wgslsmith_div_f32(-680f, -3518f), _wgslsmith_f_op_f32(756f * 1918f), _wgslsmith_f_op_f32(981f + -348f)) * vec4<f32>(_wgslsmith_f_op_f32(-409f - 195f), _wgslsmith_f_op_f32(f32(-1f) * -514f), 1270f, 673f))), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(1000f - -983f), _wgslsmith_f_op_f32(-395f - 1637f), _wgslsmith_f_op_f32(select(-396f, -1207f, true))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1096f, -101f, 404f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(960f))), 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(223f, 2180f, -2032f), vec3<f32>(-1497f, 1866f, -795f))) - global0[_wgslsmith_index_u32(1u, 10u)])));
}

