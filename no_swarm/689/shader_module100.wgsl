struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~reverseBits(u_input.e.x), _wgslsmith_mod_i32(u_input.b.x | 25915i, countOneBits(-23961i))), ~(-23906i)), ~(abs(u_input.b.x >> (110251u % 32u)) ^ -(~u_input.c)), u_input.e.x);
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: i32) -> bool {
    var var_0 = Struct_2(_wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 1u, u_input.d.x), _wgslsmith_mod_vec3_u32(vec3<u32>(46118u, 23781u, u_input.d.x) ^ vec3<u32>(35107u, u_input.a, u_input.d.x), ~vec3<u32>(0u, 58556u, u_input.d.x)) << (vec3<u32>(u_input.d.x, u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)) % vec3<u32>(32u))), Struct_1(u_input.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1039f, global0[_wgslsmith_index_u32(abs(u_input.a), 24u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(752f, 127f) + vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], -191f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(114f, -227f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(918f, -580f)))))), arg_0.x);
    global0 = array<f32, 24>();
    return func_3();
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = array<f32, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(select(u_input.d.x, 37010u, false), 24u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(205f, arg_1.c.x))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~u_input.d.x), 24u)]), _wgslsmith_f_op_f32(abs(arg_1.c.x))));
    let var_1 = select(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(arg_2, true, true, arg_2), arg_0), arg_1.d || arg_1.d), select(!vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_0, false, false, arg_1.d), arg_2), arg_2), select(!vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(true, arg_0, arg_0, arg_0), !(!arg_2)), !(!(var_0.x >= -310f))), vec4<bool>(!(!func_2(vec2<bool>(arg_2, true), vec3<bool>(false, arg_1.d, false), u_input.b.x)), true, arg_2 && false, !all(select(vec2<bool>(arg_2, false), vec2<bool>(false, arg_1.d), vec2<bool>(arg_1.d, arg_1.d)))), vec4<bool>(!select(true, arg_0, 478f >= global0[_wgslsmith_index_u32(1u, 24u)]), any(select(vec4<bool>(arg_1.d, arg_0, true, false), vec4<bool>(true, true, arg_0, arg_2), !vec4<bool>(arg_2, false, false, true))), !arg_1.d, arg_0));
    let var_2 = -u_input.b.x;
    global0 = array<f32, 24>();
    return Struct_1(max((~59923u & max(arg_1.a.x, 59944u)) & ~firstLeadingBit(44103u), 11031u));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = 559f;
    let var_1 = func_4(func_2(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), ~(~(i32(-1i) * -1i))), Struct_2(~countOneBits(vec3<u32>(u_input.a, 0u, 18992u)), Struct_1(18972u), arg_1, false), true || !(1i == u_input.c));
    let var_2 = !(false & (false || all(vec2<bool>(false, true))));
    let var_3 = Struct_1(4294967295u);
    global0 = array<f32, 24>();
    return func_4(true, Struct_2(firstTrailingBit(vec3<u32>(~4294967295u, abs(4294967295u), abs(var_3.a))), func_4(false, Struct_2(~vec3<u32>(4294967295u, 52501u, 0u), var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1485f, 1261f) - arg_1), !var_2), true || all(vec3<bool>(var_2, var_2, false))), _wgslsmith_f_op_vec2_f32(-arg_0), var_2), false);
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<f32, 24>();
    var var_0 = func_4(arg_2.d, arg_2, true);
    var_0 = Struct_1(1u);
    global0 = array<f32, 24>();
    var var_1 = !vec2<bool>(arg_2.d, !(_wgslsmith_clamp_u32(4294967295u, 1u, 0u) >= _wgslsmith_add_u32(u_input.d.x, var_0.a)));
    return arg_2.b;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    let var_0 = reverseBits(_wgslsmith_add_vec3_i32(arg_0, vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(u_input.c, u_input.c, 37099i)) & firstLeadingBit(u_input.e.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, arg_2), vec2<i32>(1i, arg_0.x)), 62451i)));
    var var_1 = Struct_2(~vec3<u32>(abs(60003u), u_input.d.x, arg_1.a), func_4(true, Struct_2(vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_1.a, arg_1.a, arg_1.a), vec4<u32>(arg_1.a, 0u, 1u, arg_1.a)), 1u), arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-811f, 483f)) - vec2<f32>(-2769f, 460f)), !select(false, true, true)), true), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(916f)), _wgslsmith_div_f32(_wgslsmith_div_f32(784f, global0[_wgslsmith_index_u32(20685u, 24u)]), _wgslsmith_f_op_f32(round(235f))))), global0[_wgslsmith_index_u32(19644u, 24u)]), !(!(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(48792u, 24u)])) >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12490u, 24u)]))));
    var var_2 = Struct_2(vec3<u32>(u_input.d.x, ~(abs(u_input.a) & ~u_input.a), arg_1.a), Struct_1(4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1.c.x, global0[_wgslsmith_index_u32(303u, 24u)]), _wgslsmith_f_op_f32(-850f * -1109f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(242f * _wgslsmith_f_op_f32(f32(-1f) * -3069f))) >= var_1.c.x);
    var_1 = Struct_2(var_1.a, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(267f, global0[_wgslsmith_index_u32(40723u, 24u)]) + vec2<f32>(-935f, global0[_wgslsmith_index_u32(31163u, 24u)]))), vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(306f, global0[_wgslsmith_index_u32(85638u, 24u)]) - -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.c)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_2.c.x, var_2.c.x), var_1.c)), var_2.c)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, 1975f)), vec2<f32>(-1776f, -1000f))))), var_1.d);
    var_1 = Struct_2(var_1.a, var_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, global0[_wgslsmith_index_u32(var_2.b.a, 24u)])) + var_2.c)), (var_2.a.x >> (~arg_1.a % 32u)) == ~(~select(u_input.a, arg_1.a, var_2.d)));
    return Struct_2(var_2.a, Struct_1(~(~_wgslsmith_mod_u32(var_1.b.a, 1u))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1233f, var_2.c.x))))), var_2.d && var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    let var_0 = func_6(vec3<i32>(_wgslsmith_dot_vec2_i32(min(u_input.e, vec2<i32>(u_input.b.x, -2147483647i)) | -u_input.b, u_input.b), (_wgslsmith_mult_i32(u_input.b.x, u_input.e.x) | u_input.b.x) << (1u % 32u), -52708i | max(22299i | u_input.b.x, -4885i)), func_5(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -1i, u_input.c), vec3<i32>(1722i, u_input.e.x, u_input.b.x)), -vec3<i32>(u_input.e.x, u_input.b.x, 19697i)), ~_wgslsmith_clamp_i32(3182i, -2147483647i, u_input.e.x)), u_input.a & 1u, Struct_2(firstLeadingBit(vec3<u32>(65702u, u_input.d.x, u_input.a)) >> (vec3<u32>(16880u, 1u, u_input.a) % vec3<u32>(32u)), func_1(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], -318f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(103646u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-571f, 1047f), _wgslsmith_f_op_vec2_f32(vec2<f32>(227f, 1000f) * vec2<f32>(-206f, global0[_wgslsmith_index_u32(u_input.d.x, 24u)])))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true)))), ~(-abs(min(-1i, -1i))));
    var var_1 = Struct_2(var_0.a, func_6(_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, 5083i, u_input.b.x), -vec3<i32>(-2147483647i, u_input.e.x, u_input.c)), var_0.b, _wgslsmith_div_i32(_wgslsmith_sub_i32(-u_input.b.x, 0i), _wgslsmith_mod_i32(u_input.e.x, abs(-4297i)))).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(var_0.a), var_0.a), 24u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1283f - var_0.c.x))))), select(false, var_0.d, var_0.d));
    var var_2 = func_4(firstLeadingBit(_wgslsmith_sub_i32(firstTrailingBit(u_input.b.x), -24407i)) >= ((20103i >> (max(var_0.b.a, 74575u) % 32u)) >> (~func_4(true, var_0, var_1.d).a % 32u)), var_0, 1i >= select(u_input.c, -2147483647i, false));
    let x = u_input.a;
    s_output = StorageBuffer(1739u, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.c.x)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b.a, var_1.b.a), 24u)] * _wgslsmith_f_op_f32(-824f * -504f))), var_1.c.x));
}

