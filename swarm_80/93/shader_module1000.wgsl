struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> f32 {
    global1 = array<vec3<bool>, 17>();
    global1 = array<vec3<bool>, 17>();
    return _wgslsmith_div_f32(2598f, 521f);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = select(select(!(!select(arg_0, vec4<bool>(true, arg_1.x, false, global0.b), vec4<bool>(true, global0.a.a, false, arg_0.x))), !vec4<bool>(all(arg_3), true, any(vec4<bool>(true, true, global0.b, true)), true), select(vec4<bool>(all(vec3<bool>(true, true, arg_1.x)), !global0.b, 31391u > global0.a.b.x, true), select(!vec4<bool>(global0.b, true, true, false), select(arg_1, arg_0, arg_1), any(arg_0)), vec4<bool>(select(false, false, false), arg_3.x, arg_1.x, true))), vec4<bool>(all(arg_0.zw), any(arg_1), any(arg_3), u_input.a < 1u), arg_1);
    global0 = Struct_2(global0.a, all(select(!arg_0, select(arg_0, !vec4<bool>(true, arg_3.x, arg_3.x, true), vec4<bool>(true, false, arg_0.x, true)), !arg_1)));
    let var_1 = Struct_2(global0.a, true);
    global1 = array<vec3<bool>, 17>();
    let var_2 = Struct_4(Struct_1(!(!all(var_0.zy)), ~global0.a.c, ~var_1.a.c), _wgslsmith_f_op_f32(-386f - _wgslsmith_f_op_f32(f32(-1f) * -637f)), Struct_1(arg_0.x, vec4<u32>(~firstLeadingBit(88594u), _wgslsmith_dot_vec3_u32(var_1.a.b.zwz | vec3<u32>(45924u, global0.a.c.x, u_input.a), abs(var_1.a.b.wxz)), ~(~4294967295u), 4212u ^ var_1.a.b.x), vec4<u32>(15989u, max(var_1.a.c.x, firstLeadingBit(62451u)), u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 15818u), vec4<u32>(1u, 1u, 0u, 20558u)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), -566f, _wgslsmith_f_op_f32(abs(105f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(f32(-1f) * -901f)), _wgslsmith_f_op_f32(1278f * _wgslsmith_f_op_f32(-var_2.b))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(119f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1561f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1582f - 1792f)), _wgslsmith_div_f32(-1839f, _wgslsmith_div_f32(-527f, -569f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-598f, 1788f, 2091f, -1429f)), _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(global0.b, true, arg_1.x, false), vec4<bool>(false, global0.a.a, arg_2, true), vec2<i32>(-6905i, u_input.b), arg_1.zz)), select(vec4<bool>(global0.b, true, arg_1.x, true), vec4<bool>(arg_2, global0.b, true, true), false)))))));
    var var_1 = Struct_4(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(596f * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(arg_2, arg_2, global0.a.a, arg_2), vec4<bool>(true, arg_1.x, global0.a.a, true), vec2<i32>(-1021i, arg_3.x), vec2<bool>(true, true))).x + _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))))), Struct_1(arg_1.x, ~arg_0.b | _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.b.x, 4294967295u, 54529u, u_input.a), max(global0.a.b, global0.a.c)), global0.a.b));
    var var_2 = var_1.b;
    let var_3 = arg_0;
    var var_4 = any(vec4<bool>(any(!(!vec4<bool>(true, arg_0.a, false, true))), false, var_1.c.c.x > arg_0.b.x, !var_3.a));
    return var_1.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = 575f;
    let var_1 = countOneBits(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 7140u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), global0.a.b.ww)))) & ~reverseBits(vec2<u32>(~1u, arg_2.c.c.x << (arg_3.a % 32u)));
    global0 = Struct_2(Struct_1(any(global1[_wgslsmith_index_u32(15544u, 17u)]), abs(vec4<u32>(1u, arg_3.a, 1u, arg_3.a)) | vec4<u32>(1u, _wgslsmith_div_u32(1u, var_1.x), 0u, ~7750u), arg_2.c.b | global0.a.c), false);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(arg_2.b * arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -651f), 241f))), arg_3.c)), vec3<f32>(-528f, _wgslsmith_f_op_f32(arg_0.x - arg_3.c.x), _wgslsmith_f_op_f32(trunc(-997f)))));
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, arg_2.a.c.x), vec3<u32>(arg_2.c.c.x, 77081u, global0.a.c.x)), ~vec3<u32>(0u, var_1.x, 4294967295u), true), arg_2.a.b.wxw), _wgslsmith_div_u32(countOneBits(arg_2.c.c.x), 51405u << (1u % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(69175u, var_1.x, 98786u), ~vec3<u32>(7760u, 50598u, arg_3.a)), 4294967295u), ~(~reverseBits(~arg_2.c.b)));
    return StorageBuffer(-_wgslsmith_mod_i32(-u_input.b, _wgslsmith_clamp_i32(-arg_3.e.x, ~arg_1, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.b.xz;
    var var_1 = Struct_1(true, _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(global0.a.b, ~global0.a.b), global0.a.c), vec4<u32>(~_wgslsmith_add_u32(~1u, var_0.x), _wgslsmith_sub_u32(~(~u_input.a), 87838u), 1u, var_0.x));
    global1 = array<vec3<bool>, 17>();
    var_1 = global0.a;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1983f, 212f)), _wgslsmith_f_op_f32(trunc(279f)), _wgslsmith_f_op_f32(f32(-1f) * -141f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1584f, -151f, -260f) * vec3<f32>(-1612f, -478f, 403f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-787f, 1467f, 901f), vec3<f32>(329f, 2153f, -1957f), vec3<bool>(global0.b, var_1.a, false))))) - vec3<f32>(_wgslsmith_div_f32(-1383f, -870f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -106f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(var_1.a, global0.a.b, global0.a.c), vec3<bool>(true, false, true), false, vec2<i32>(u_input.b, -39227i))) + 179f))), 1i ^ (2147483647i ^ (_wgslsmith_sub_i32(u_input.b, u_input.b) ^ u_input.b)), Struct_4(Struct_1(any(select(vec4<bool>(var_1.a, global0.a.a, true, var_1.a), vec4<bool>(true, true, var_1.a, true), false)), global0.a.c, min(vec4<u32>(global0.a.c.x, global0.a.c.x, var_0.x, global0.a.b.x), global0.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1704f))), global0.a), Struct_3(7349u, all(select(global1[_wgslsmith_index_u32(~global0.a.c.x, 17u)], vec3<bool>(false, var_1.a, global0.a.a), select(global1[_wgslsmith_index_u32(65830u, 17u)], global1[_wgslsmith_index_u32(var_1.b.x, 17u)], var_1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2082f, 228f, -1512f)) - vec3<f32>(_wgslsmith_f_op_f32(886f - 641f), _wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(-909f - -1000f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1556f * 337f), 550f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-414f, -2233f), vec2<f32>(-1098f, 1288f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-221f, -2177f), vec2<f32>(-700f, -1357f), vec2<bool>(true, var_1.a))))))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.b, -10386i), vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(29961i, 22645i)), -select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b), vec2<bool>(false, global0.b)), ~vec2<i32>(u_input.b, u_input.b))));
}

