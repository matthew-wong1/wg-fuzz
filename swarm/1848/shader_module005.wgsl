struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-25046i, -7457i), vec2<i32>(-10841i, -10613i), vec2<i32>(51231i, i32(-2147483648)), vec2<i32>(-4778i, 11952i), vec2<i32>(2147483647i, -58497i), vec2<i32>(30949i, 38016i), vec2<i32>(i32(-2147483648), 8810i), vec2<i32>(-30448i, -1i), vec2<i32>(-25667i, -39479i), vec2<i32>(-21992i, 1i), vec2<i32>(1i, -1i), vec2<i32>(18645i, 2147483647i), vec2<i32>(-38018i, -28997i), vec2<i32>(22406i, 16009i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 54386i), vec2<i32>(49427i, 25941i), vec2<i32>(33875i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1511i), vec2<i32>(-1i, 79806i));

var<private> global1: array<i32, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> bool {
    let var_0 = ~(~firstTrailingBit(vec4<u32>(arg_0.x, 4294967295u, 0u, 74000u) >> (~vec4<u32>(u_input.e, arg_0.x, arg_0.x, 1u) % vec4<u32>(32u))));
    let var_1 = Struct_5(1f, arg_0);
    global1 = array<i32, 21>();
    global0 = array<vec2<i32>, 22>();
    var var_2 = _wgslsmith_f_op_f32(1057f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) + var_1.a)));
    return arg_1 != arg_1;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> bool {
    global1 = array<i32, 21>();
    global0 = array<vec2<i32>, 22>();
    var var_0 = vec2<bool>(false, !arg_0.x);
    var_0 = select(arg_0, arg_0, !arg_0.x);
    var var_1 = firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 16130u, 33570u), vec3<u32>(arg_3, 0u, arg_1.x)), ~arg_1.x), min(abs(4294967295u), 4294967295u), arg_3), ~vec4<u32>(u_input.e, arg_1.x, 40074u, 30327u)));
    return true;
}

fn func_1() -> bool {
    let var_0 = vec2<bool>(all(vec4<bool>(true, select(true, true, true), func_2(vec2<u32>(22555u, u_input.e), true), true)), true);
    let var_1 = Struct_5(-177f, u_input.c);
    var var_2 = u_input.a.x;
    var_2 = _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d.x, 182i), abs(select(-_wgslsmith_mult_i32(-54024i, -1i), ~(u_input.d.x & global1[_wgslsmith_index_u32(var_1.b.x, 21u)]), !func_3(vec2<bool>(true, true), vec4<u32>(u_input.c.x, var_1.b.x, 22032u, u_input.c.x), 455f, 13638u))));
    var var_3 = Struct_4(!var_0.x, vec3<u32>(_wgslsmith_clamp_u32(3851u, ~_wgslsmith_sub_u32(84825u, var_1.b.x), firstTrailingBit(u_input.e)), 15174u, ~29579u), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(38873u, 21u)], global1[_wgslsmith_index_u32(u_input.e, 21u)]), countOneBits(u_input.a)) & (i32(-1i) * -2147483647i), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.a, -1316f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a, var_1.a, var_1.a)))), !(!var_0.x), var_0), ~1u, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1082f), var_1.a), var_0.x | all(vec4<bool>(true, true, var_0.x, false)), select(vec2<bool>(var_0.x, false), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), var_0.x)), u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), u_input.c.x);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -211f, 1622f)))), true && any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false)), vec2<bool>(!func_1(), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))), u_input.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-553f, 615f, -195f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-748f, -140f, -300f)))))), !(!func_1()), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.e, 21u)] != global1[_wgslsmith_index_u32(16842u, 21u)], true)), u_input.a.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(151f, -2507f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1123f, -233f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-383f, -2210f), vec2<f32>(-914f, 519f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-372f, 1016f))))))));
    let var_1 = firstLeadingBit(vec3<u32>(~u_input.e, 1u, var_0.b));
    global1 = array<i32, 21>();
    let var_2 = Struct_2(var_0.a, _wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, countOneBits(51201u)), vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_0.b), 29305u << (var_0.b % 32u)))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-350f, var_0.e.x, var_0.a.a.x), vec3<f32>(-439f, 105f, -956f)))), true, vec2<bool>(true, true)), -u_input.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.a.x, var_0.a.a.x))) * _wgslsmith_f_op_vec2_f32(exp2(var_0.c.a.xy))))), var_0.a.a.zx, false)));
    global1 = array<i32, 21>();
    let var_3 = abs(var_1.xy) << (u_input.c % vec2<u32>(32u));
    global0 = array<vec2<i32>, 22>();
    global0 = array<vec2<i32>, 22>();
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(854f + _wgslsmith_f_op_f32(-var_2.a.a.x)) * _wgslsmith_div_f32(var_2.c.a.x, 930f))));
}

