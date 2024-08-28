struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a) + _wgslsmith_f_op_f32(360f * global0.d.a)), 1373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a) - global0.d.a))), vec3<f32>(_wgslsmith_f_op_f32(-1086f - 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global0.d.a)))))), -317f)));
    var var_1 = select(u_input.a.yyx, u_input.d.zxx, global0.d.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.a, -1822f, 768f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.a, global0.d.a, var_0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.a, var_0.x, -1887f))))));
    global1 = _wgslsmith_f_op_f32(230f - _wgslsmith_f_op_f32(min(946f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(var_2.x))))));
    global0 = Struct_4(reverseBits(~_wgslsmith_dot_vec3_u32(~u_input.a.xxw, u_input.d.wzz)), vec4<u32>(1u, ~(arg_0 ^ 0u), select(4294967295u, 1u, true), 4294967295u) | vec4<u32>(var_1.x, 59281u, 27359u, global0.b.x), -u_input.c.x, Struct_1(204f, vec4<bool>(true, true, true, !global0.d.b.x)));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: i32) -> vec2<u32> {
    let var_0 = ~(~(-1i));
    var var_1 = arg_0.b.a;
    global0 = Struct_4(1u, countOneBits(vec4<u32>(arg_1.a.a << (52804u % 32u), ~arg_1.a.a, 1u, global0.b.x)) >> (vec4<u32>(6838u, select(30231u, 23689u, !arg_1.a.b.b.x), ~firstLeadingBit(77696u), u_input.d.x) % vec4<u32>(32u)), var_0, Struct_1(174f, vec4<bool>(any(global0.d.b) | func_3(global0.a), !any(arg_1.a.b.b.wyw), true, select(any(arg_1.a.b.b), arg_0.b.b.x, true))));
    global0 = Struct_4(_wgslsmith_mult_u32(u_input.b, ~u_input.a.x), ~_wgslsmith_mult_vec4_u32(global0.b, _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(global0.b, vec4<u32>(global0.b.x, arg_0.a, 68568u, 0u)), ~global0.b)), 55870i, arg_0.b);
    let var_2 = Struct_5(Struct_2(_wgslsmith_add_u32(global0.b.x, ~countOneBits(arg_1.a.a)), global0.d), Struct_4(_wgslsmith_sub_u32(10269u, 1u), abs(max(~global0.b, ~u_input.d)), _wgslsmith_sub_i32(-1255i, ~global0.c), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1599f), vec4<bool>(arg_1.c.b.x, all(arg_0.b.b.xyy), arg_0.b.b.x, arg_1.b.x))), Struct_1(1238f, select(!(!arg_1.c.b), select(global0.d.b, arg_1.a.b.b, select(global0.d.b, global0.d.b, vec4<bool>(false, true, global0.d.b.x, global0.d.b.x))), arg_1.c.b)));
    return abs(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(41431u, 1u), vec2<u32>(4294967295u, 4294967295u)), u_input.a.zx), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_2.a.a), vec2<u32>(global0.a, 8704u)))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec2<u32>) -> u32 {
    global0 = Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(arg_3.x), 43634u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.ww, global0.b.yx), func_2(Struct_2(1u, global0.d), Struct_3(Struct_2(70094u, global0.d), global0.d.b.yx, global0.d), vec4<f32>(-1713f, -1021f, arg_2, global0.d.a), global0.c))), vec3<u32>(28391u, _wgslsmith_mod_u32(4294967295u, 4294967295u) ^ max(5845u, global0.b.x), _wgslsmith_mod_u32(56549u, u_input.b))), _wgslsmith_add_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(global0.b, ~u_input.d, global0.b)) ^ _wgslsmith_mod_vec4_u32(~reverseBits(u_input.a), u_input.d), global0.c, global0.d);
    global1 = -1070f;
    var var_0 = Struct_2(~u_input.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1103f)))), !select(global0.d.b, vec4<bool>(true, true, true, true), global0.d.a <= global0.d.a)));
    var var_1 = Struct_5(Struct_2(~0u, Struct_1(-1000f, select(vec4<bool>(arg_0, true, true, arg_0), !var_0.b.b, select(vec4<bool>(arg_0, false, true, global0.d.b.x), var_0.b.b, true)))), Struct_4(u_input.b, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(20672u, 37987u, u_input.a.x, 1u) >> (global0.b % vec4<u32>(32u)), vec4<u32>(1u, 17014u, 25124u, u_input.b)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 4294967295u), u_input.a.wz), countOneBits(_wgslsmith_mod_u32(18019u, arg_3.x)), _wgslsmith_dot_vec4_u32(global0.b, ~vec4<u32>(92173u, u_input.d.x, 14250u, 0u))), -(reverseBits(20227i) | (-2147483647i >> (arg_3.x % 32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))), vec4<bool>(arg_0, all(var_0.b.b.xyx), true, !var_0.b.b.x))), var_0.b);
    var_1 = Struct_5(var_1.a, var_1.b, var_1.c);
    return global0.a;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> u32 {
    return _wgslsmith_mult_u32(~u_input.a.x << (_wgslsmith_add_u32(abs(1u), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(26572u, arg_0.a, u_input.a.x, 1u), vec4<u32>(global0.b.x, global0.a, u_input.b, u_input.d.x)))) % 32u), func_4(all(arg_0.b.b.zy), arg_1.a, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.d.a, -358f)) * -156f)), vec2<u32>(abs(global0.b.x), abs(u_input.b)) | (func_2(arg_0, Struct_3(Struct_2(1u, arg_1), vec2<bool>(false, false), Struct_1(-208f, vec4<bool>(arg_1.b.x, false, true, false))), vec4<f32>(1477f, -1412f, global0.d.a, arg_1.a), 19969i) | _wgslsmith_mult_vec2_u32(vec2<u32>(21328u, 12477u), global0.b.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_add_u32(_wgslsmith_sub_u32(~(~4294967295u), 1u), ~global0.b.x ^ select(~35830u, global0.b.x << (global0.a % 32u), !global0.d.b.x)), vec4<u32>(global0.a >> (select(0u, global0.a, false) % 32u), _wgslsmith_mult_u32(1u & (u_input.b & 4294967295u), 0u), func_1(Struct_2(40077u, Struct_1(-772f, global0.d.b)), Struct_1(global0.d.a, vec4<bool>(global0.d.b.x, global0.d.b.x, false, global0.d.b.x)), -u_input.c.x) | ~global0.a, ~(~(~u_input.a.x))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(min(u_input.e.x, 0i), global0.c, -2147483647i) & global0.c, -(~u_input.c.x)), global0.d);
    var var_0 = ~u_input.e.yzz;
    global1 = -1000f;
    var var_1 = Struct_3(Struct_2(~_wgslsmith_add_u32(1u, 0u) ^ _wgslsmith_clamp_u32(51204u, ~48762u, u_input.a.x), global0.d), !vec2<bool>(!(global0.d.b.x & global0.d.b.x), func_4(true, 2267f, global0.d.a, global0.b.zx) != 1u), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -845f))), vec4<bool>(false, !all(global0.d.b.wx), !all(global0.d.b.yy), false)));
    var var_2 = firstTrailingBit(_wgslsmith_clamp_u32(global0.b.x, ~(~(~var_1.a.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.d, global0.b), vec4<u32>(global0.b.x, global0.b.x, _wgslsmith_sub_u32(var_1.a.a, global0.a), max(7571u, global0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, -u_input.c, var_1.a.a);
}

