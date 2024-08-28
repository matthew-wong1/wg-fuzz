struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), false), Struct_1(vec2<i32>(3180i, -1i), true), vec2<bool>(true, false), false, vec2<u32>(16463u, 1u));

var<private> global1: f32 = 2242f;

var<private> global2: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(2147483647i, -28732i, 0i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(0i, -4287i, 0i));

var<private> global3: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), false), Struct_1(vec2<i32>(2147483647i, -1i), true), vec2<bool>(false, true), false, vec2<u32>(1u, 32805u)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), true), Struct_1(vec2<i32>(0i, -38151i), true), vec2<bool>(false, false), false, vec2<u32>(61223u, 28088u)), Struct_2(Struct_1(vec2<i32>(0i, -1i), false), Struct_1(vec2<i32>(4740i, 0i), false), vec2<bool>(false, false), false, vec2<u32>(17831u, 16023u)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = _wgslsmith_f_op_f32(trunc(-830f));
    var var_0 = ~_wgslsmith_clamp_u32(1u, 1u, ~(~global0.e.x) | _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 11194u, global0.e.x, global0.e.x)), ~vec4<u32>(global0.e.x, 11838u, 1u, 50784u)));
    var var_1 = vec2<u32>(101238u, u_input.a);
    var var_2 = arg_0;
    var_0 = 21344u;
    return false;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-1000f + 167f))));
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.d ^ ~1u), 3u)];
    let var_1 = var_0.b;
    global1 = _wgslsmith_f_op_f32(-arg_0);
    global3 = array<Struct_2, 3>();
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 765f, 1517f, -753f), vec4<f32>(1565f, arg_0, arg_0, arg_0))) * vec4<f32>(arg_0, _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_div_f32(arg_0, arg_0), arg_0)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_2(arg_2.a, Struct_1(global0.a.a, false), vec2<bool>(arg_2.b.b, all(!vec3<bool>(global0.a.b, true, true))), false, ~_wgslsmith_clamp_vec2_u32(global0.e, vec2<u32>(0u, global0.e.x), ~vec2<u32>(1u, global0.e.x)) & arg_2.e);
    global3 = array<Struct_2, 3>();
    let var_1 = -16649i;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(440f * -931f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + -758f) * arg_3.x))) * arg_0.x);
    var var_2 = global3[_wgslsmith_index_u32(0u, 3u)];
    return !(!((var_1 <= u_input.e.x) & false));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-388f, 301f, 829f, 354f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-527f, -640f, -438f, -663f) * vec4<f32>(-1335f, 847f, -929f, -382f)))), vec4<f32>(457f, _wgslsmith_f_op_f32(352f * 818f), -893f, _wgslsmith_f_op_f32(-1154f - 1305f)), vec4<bool>(true, arg_2.b, true, true))) * vec4<f32>(_wgslsmith_f_op_f32(round(-2024f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1727f), _wgslsmith_f_op_f32(f32(-1f) * -865f), all(vec4<bool>(arg_2.b, arg_2.b, global0.a.b, true)))), _wgslsmith_f_op_f32(-1481f + _wgslsmith_f_op_f32(f32(-1f) * -1428f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-537f)) + -435f))));
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_mult_vec2_i32(arg_1.a.a, vec2<i32>(abs(29932i), _wgslsmith_sub_i32(-1i, -2147483647i))), arg_1.c.x);
    let var_3 = func_5(_wgslsmith_f_op_vec2_f32(abs(var_0.yy)), arg_2, Struct_2(arg_1.b, var_1.a, !(!global0.c), false, ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.e, var_1.e), arg_1.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1006f, -1228f, 1000f, 1000f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(trunc(var_0.x)), func_3(Struct_1(vec2<i32>(u_input.c, arg_1.b.a.x), var_2.b)), arg_1.b))))));
    global2 = array<vec3<i32>, 3>();
    return Struct_1(vec2<i32>(-firstLeadingBit(_wgslsmith_dot_vec2_i32(var_1.a.a, vec2<i32>(4856i, -67755i))), _wgslsmith_dot_vec4_i32((vec4<i32>(arg_2.a.x, u_input.e.x, 1i, u_input.c) << (vec4<u32>(arg_1.e.x, 4294967295u, global0.e.x, global0.e.x) % vec4<u32>(32u))) | -vec4<i32>(arg_2.a.x, var_1.a.a.x, -2147483647i, -2147483647i), vec4<i32>(~(-31364i), -2147483647i, 39862i, -1820i))), var_3);
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = arg_0;
    global3 = array<Struct_2, 3>();
    var var_1 = func_2(vec3<bool>(arg_0.c.x, global0.b.b || !global0.c.x, var_0.a.b & any(vec2<bool>(true, arg_0.a.b))), global3[_wgslsmith_index_u32(u_input.b, 3u)], var_0.b);
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -180f), -1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1385f - 1519f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-589f * _wgslsmith_div_f32(1382f, -134f)) - _wgslsmith_f_op_f32(-1837f - _wgslsmith_f_op_f32(step(935f, -1481f)))))), true));
    let var_2 = 1855f;
    return StorageBuffer(firstTrailingBit(abs(~vec3<u32>(global0.e.x, global0.e.x, var_0.e.x) | select(vec3<u32>(1u, arg_0.e.x, 12752u), vec3<u32>(global0.e.x, arg_0.e.x, 52777u), vec3<bool>(var_1.b, false, false)))), -min(global2[_wgslsmith_index_u32(1u, 3u)], u_input.e), vec2<i32>(max(abs(~arg_0.a.a.x), ~17627i), _wgslsmith_sub_i32(-u_input.c ^ 1i, ~(~(-1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-452f, 1018f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2))))), vec4<u32>(~var_0.e.x, reverseBits(_wgslsmith_div_u32(~31016u, _wgslsmith_add_u32(45238u, 9402u))), ~arg_0.e.x, global0.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -1000f;
    let x = u_input.a;
    s_output = func_1(global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~(global0.e.x ^ u_input.a), ~(~4294967295u))), 3u)]);
}

