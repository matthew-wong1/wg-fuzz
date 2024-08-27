struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<f32>) -> vec2<i32> {
    let var_0 = arg_0.x;
    let var_1 = min(u_input.a, vec4<i32>(firstLeadingBit(22085i), reverseBits(_wgslsmith_div_i32(u_input.a.x ^ 25496i, i32(-1i) * -2147483647i)), 3386i, u_input.a.x));
    var var_2 = vec2<i32>(-2147483647i, 7783i);
    global0 = array<vec4<u32>, 7>();
    var var_3 = ~min(3700i, select(u_input.a.x, ~countOneBits(var_2.x), false && (var_0 > 4294967295u)));
    return max(select(vec2<i32>(-(~(-45209i)), 1i), vec2<i32>(var_1.x, var_2.x), all(vec3<bool>(true, true, true))), vec2<i32>(1i, ~1i));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool) -> vec2<f32> {
    var var_0 = -_wgslsmith_add_vec2_i32(max(~firstLeadingBit(vec2<i32>(19531i, u_input.a.x)), vec2<i32>(-u_input.a.x, ~u_input.a.x)), func_3(global0[_wgslsmith_index_u32(arg_1.x << (0u % 32u), 7u)] << (vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 1u) % vec4<u32>(32u)), arg_2, vec2<f32>(_wgslsmith_f_op_f32(-776f + 463f), -420f), vec3<f32>(_wgslsmith_f_op_f32(max(-166f, -1273f)), _wgslsmith_f_op_f32(ceil(1666f)), _wgslsmith_f_op_f32(262f - 824f))));
    var var_1 = select(!select(arg_0.xz, arg_0.wx, all(vec4<bool>(true, arg_2, arg_0.x, arg_2))), vec2<bool>(true, true | arg_0.x), !select(select(vec2<bool>(arg_0.x, false), !arg_0.xw, select(vec2<bool>(true, true), vec2<bool>(arg_0.x, true), arg_0.x)), vec2<bool>(true, any(vec3<bool>(arg_2, false, false))), arg_2));
    var_1 = vec2<bool>(arg_0.x, all(select(vec2<bool>(arg_1.x <= 3397u, var_1.x), vec2<bool>(true, false), var_1.x)));
    var var_2 = Struct_1(1u ^ arg_1.x, 4294967295u, _wgslsmith_f_op_f32(select(-1676f, _wgslsmith_div_f32(300f, _wgslsmith_f_op_f32(f32(-1f) * -711f)), var_1.x)));
    var_1 = vec2<bool>(false, all(select(select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, var_1.x), arg_0, vec4<bool>(arg_0.x, false, arg_0.x, false)), !select(vec4<bool>(true, arg_2, arg_0.x, arg_0.x), arg_0, arg_0), arg_0.x)));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -849f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(557f, -271f) + vec2<f32>(568f, var_2.c)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c, -498f), vec2<f32>(var_2.c, var_2.c)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1417f, -373f))), select(arg_0.zz, vec2<bool>(var_1.x, arg_2), true))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(abs(_wgslsmith_mod_u32(~0u, arg_1.x)) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), select(arg_1.yy, arg_1.yz, vec2<bool>(false, true))) & 78447u) % 32u), arg_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -218f) * vec3<f32>(2027f, -756f, arg_0.x))))), Struct_1(firstTrailingBit(~arg_1.x) & 48146u, _wgslsmith_dot_vec2_u32(arg_1.xy, vec2<u32>(arg_1.x, 1u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, 27453u), vec2<u32>(arg_1.x, arg_1.x), arg_1.xy)), arg_0.x), ~abs(~firstTrailingBit(arg_1.x)));
    global0 = array<vec4<u32>, 7>();
    let var_1 = var_0.d;
    var var_2 = Struct_1(min(1u | (arg_1.x << (0u % 32u)), firstTrailingBit(38175u)), var_0.a, _wgslsmith_f_op_f32(-var_0.c.x));
    var_0 = Struct_2(~firstTrailingBit(max(_wgslsmith_div_u32(var_2.a, var_2.b), var_0.d.b)), _wgslsmith_add_u32(37027u, ~var_2.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-260f * -482f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d.c)) * _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(var_1.c, 1108f))), vec3<f32>(var_0.d.c, var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c) + _wgslsmith_f_op_f32(select(1349f, -1011f, true)))), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true))))), var_0.d, countOneBits(6153u));
    return Struct_2(~firstTrailingBit(28223u), var_0.a, _wgslsmith_f_op_vec3_f32(select(var_0.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-297f, -123f))), -1111f, -531f), true)), Struct_1(_wgslsmith_mod_u32(var_2.a, ~(~var_1.a)), max(~_wgslsmith_mult_u32(var_2.b, 0u), _wgslsmith_mod_u32(var_2.b, firstLeadingBit(27434u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c))), arg_1.x);
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_3(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(true, false, false, false), vec3<u32>(19667u, 35844u, 10976u), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(575f, -1000f))), vec3<u32>(~abs(0u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, 1u), 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 65958u, 48736u), _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(65449u, 7u)], vec4<u32>(36763u, 1u, 0u, 35517u))))), !vec4<bool>(0i >= max(1i, u_input.a.x), true, true | (-4111i >= u_input.a.x), !any(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_mod_u32((var_0.a.e << (var_0.a.e % 32u)) >> (var_0.a.d.a % 32u), _wgslsmith_add_u32(~_wgslsmith_mod_u32(38316u, var_0.a.d.a), 1u)) | firstTrailingBit(_wgslsmith_mod_u32(~19776u, _wgslsmith_sub_u32(0u, max(var_0.a.b, var_0.a.a))));
    var var_2 = firstTrailingBit(vec2<u32>(1u, _wgslsmith_add_u32(~2986u, func_4(var_0.a.c.zy, vec3<u32>(var_0.a.d.a, var_0.a.e, var_0.a.b)).e)) << (vec2<u32>(1u << (~var_0.a.a % 32u), reverseBits(var_0.a.e) >> (~4294967295u % 32u)) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_sub_i32(u_input.a.x, -1158i);
    let var_4 = func_4(var_0.a.c.xy, min(~vec3<u32>(4294967295u, var_2.x ^ var_2.x, var_2.x), max(select(vec3<u32>(8797u, var_0.a.e, var_0.a.b), vec3<u32>(11270u, 1u, var_0.a.a), vec3<bool>(var_0.b.x, true, var_0.b.x)) >> ((vec3<u32>(5444u, var_2.x, var_2.x) >> (vec3<u32>(4294967295u, 1u, var_0.a.d.b) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(75249u, min(var_2.x, var_2.x), _wgslsmith_add_u32(5450u, var_0.a.b)))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(190f, 895f, -401f), vec3<f32>(var_4.c.x, var_4.c.x, var_4.c.x))) * _wgslsmith_f_op_vec3_f32(round(var_4.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.d.c, var_0.a.c.x, var_4.c.x), var_4.c))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.c.x, -1168f, var_0.a.c.x)) + var_4.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 7>();
    let var_0 = Struct_2(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(85440u, 0u))), vec2<u32>(4294967295u, ~1u)), firstTrailingBit(countOneBits(1u)), _wgslsmith_f_op_vec3_f32(func_1()), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(~vec3<u32>(35565u, 0u, 18210u), vec3<u32>(19217u, 4294967295u, 3200u))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 11911u, 109815u), vec3<u32>(10999u, 66086u, 24857u))), _wgslsmith_f_op_f32(round(-1261f))), 65057u);
    global0 = array<vec4<u32>, 7>();
    var var_1 = Struct_3(var_0, select(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true), all(vec3<bool>(true, true, true))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))), true));
    var var_2 = var_0.c.yx;
    var var_3 = Struct_2(var_0.b >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.d.b & var_0.d.a, abs(var_1.a.b)), var_0.a) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, countOneBits(select(var_0.e, var_0.d.a, false)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_1.a.b), vec3<u32>(1u, var_1.a.d.b, var_0.b))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.b, var_0.d.a, 4799u), vec3<u32>(31792u, 57883u, 8171u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.c, -977f, -469f)))))), var_1.a.d, ~var_1.a.e);
    var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c.x * var_0.c.x)), _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, -1000f))) - var_3.c.xz)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a.c.x * -359f), ~(~vec3<i32>(firstLeadingBit(1i), -25524i, max(61695i, 1i))), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0.b, var_0.e), 7u)] | ~_wgslsmith_div_vec4_u32(vec4<u32>(36521u, 1u, var_1.a.b, var_3.e), global0[_wgslsmith_index_u32(var_0.e, 7u)]), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d.b, var_0.d.a, 71911u, 0u), ~global0[_wgslsmith_index_u32(4294967295u, 7u)])), ~_wgslsmith_sub_u32(var_3.e | ~var_3.d.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(80408u, var_3.d.a, var_3.a, 0u), global0[_wgslsmith_index_u32(var_3.a, 7u)]), ~var_1.a.d.a, ~var_1.a.d.a)), u_input.a);
}

