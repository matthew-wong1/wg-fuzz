struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, true, vec4<u32>(59697u, 27571u, 0u, 10352u), vec3<bool>(true, false, true));

var<private> global1: array<Struct_4, 5>;

var<private> global2: array<Struct_2, 32>;

var<private> global3: array<i32, 17>;

var<private> global4: array<Struct_2, 6>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(77177u, 5u)];
    let var_1 = var_0.a;
    return var_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_3 {
    global2 = array<Struct_2, 32>();
    global2 = array<Struct_2, 32>();
    global1 = array<Struct_4, 5>();
    let var_0 = global1[_wgslsmith_index_u32(~u_input.e.x, 5u)];
    var var_1 = arg_0.c;
    return Struct_3(_wgslsmith_mult_u32(6027u >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 13954u, 963u), vec4<u32>(1u, var_1.x, 39668u, 62981u)), arg_0.c >> (arg_0.c % vec4<u32>(32u))) % 32u), _wgslsmith_mod_u32(~31700u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(global0.a, u_input.e.x), var_1.x))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = arg_3.x;
    let var_1 = global2[_wgslsmith_index_u32(134679u | arg_0.a, 32u)];
    var_0 = -2196f;
    return select(select(vec4<bool>(false, global0.d.x, global0.b, any(select(vec4<bool>(true, true, global0.d.x, global0.d.x), vec4<bool>(false, global0.d.x, false, true), vec4<bool>(global0.d.x, global0.d.x, false, false)))), vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(13495u, 17u)], global3[_wgslsmith_index_u32(arg_1.x, 17u)]), u_input.b.wzy) >= abs(0i), var_1.c.d.x, false, true), global0.b), select(vec4<bool>(var_1.c.d.x, any(!var_1.c.d.zz), global0.d.x, true), vec4<bool>(var_1.c.d.x, !(!global0.b), func_2(u_input.b.xxw, var_1.c.c.x, 744f).c.x < 58917u, false), select(vec4<bool>(false, true, var_1.c.d.x, !var_1.c.b), select(vec4<bool>(global0.b, true, false, false), select(vec4<bool>(global0.d.x, false, var_1.c.d.x, var_1.c.d.x), vec4<bool>(true, global0.b, false, false), vec4<bool>(true, var_1.c.d.x, global0.d.x, global0.b)), var_1.c.d.x), var_1.c.b)), true);
}

fn func_1() -> vec4<f32> {
    global3 = array<i32, 17>();
    global3 = array<i32, 17>();
    let var_0 = select(!func_4(func_3(func_2(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 17u)], 0i, u_input.a.x), global0.c.x, 619f), !global0.d.zy), countOneBits(global0.c >> (global0.c % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(167f, 1620f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-493f, 1733f, -812f))), func_4(Struct_3(0u), ~global0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1485f - _wgslsmith_f_op_f32(-653f - -722f)))), vec3<f32>(1f, 1f, 1f)), !select(select(vec4<bool>(global0.b, global0.d.x, global0.d.x, global0.b), select(vec4<bool>(true, global0.d.x, false, global0.b), vec4<bool>(false, true, global0.d.x, true), vec4<bool>(false, global0.d.x, global0.b, global0.b)), false), select(!vec4<bool>(global0.b, global0.d.x, false, true), select(vec4<bool>(global0.b, false, global0.b, false), vec4<bool>(global0.d.x, global0.d.x, true, global0.d.x), vec4<bool>(true, true, global0.b, global0.d.x)), vec4<bool>(false, global0.b, global0.b, true)), !func_4(Struct_3(69212u), vec4<u32>(global0.a, 0u, 0u, u_input.e.x), -204f, vec3<f32>(1391f, -419f, 796f))));
    global4 = array<Struct_2, 6>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-453f + _wgslsmith_div_f32(-914f, 425f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -998f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(625f + 1052f) - _wgslsmith_f_op_f32(-182f - 2069f)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, -2391f, 3274f, 948f))), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), 1242f <= var_1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1068f, var_1.x, var_1.x, var_1.x)) * vec4<f32>(-662f, var_1.x, 533f, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(868f, 1272f)), 918f)), -326f, -159f)) - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-599f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-930f, -289f)) - -281f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1739f, 632f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(385f, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) * vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), var_0.x, 1830f, -1000f)), !func_4(Struct_3(u_input.e.x), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(global0.c.x, global0.a, 11448u, 20653u)), _wgslsmith_f_op_f32(var_0.x * -819f), _wgslsmith_div_vec3_f32(var_0.www, vec3<f32>(-247f, 1586f, -244f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1388f, -1083f, 1114f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_vec4_f32(func_1()).x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1640f, var_1.x, 485f, -1015f), vec4<f32>(var_1.x, var_0.x, -1886f, var_0.x)) * _wgslsmith_f_op_vec4_f32(abs(var_1))))));
    var var_2 = 4294967295u;
    let var_3 = global0.d;
    var var_4 = ~vec4<u32>(func_2(min(~u_input.b.zxx, _wgslsmith_add_vec3_i32(u_input.b.xwy, u_input.b.xyw)), 4294967295u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -232f), -705f, func_2(vec3<i32>(global3[_wgslsmith_index_u32(global0.c.x, 17u)], -18257i, global3[_wgslsmith_index_u32(global0.c.x, 17u)]), 4294967295u, var_1.x).b))).a, firstLeadingBit(~(~4294967295u)), select(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 1u, 15358u), u_input.e)), firstTrailingBit(11814u), global3[_wgslsmith_index_u32(~0u, 17u)] < (u_input.b.x & 12799i)), u_input.e.x);
    let var_5 = vec4<f32>(-126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), -668f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1520f, var_1.x, false)), _wgslsmith_f_op_f32(var_0.x - 1000f))) + _wgslsmith_f_op_f32(select(var_0.x, var_1.x, true)))));
    global3 = array<i32, 17>();
    let var_6 = Struct_1(reverseBits(reverseBits(~(~var_4.x))), false, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 39226u, u_input.e.x) | u_input.c, global0.c), func_2(vec3<i32>(_wgslsmith_mod_i32(2147483647i >> (var_4.x % 32u), ~u_input.d), global3[_wgslsmith_index_u32(10026u, 17u)], ~(-global3[_wgslsmith_index_u32(0u, 17u)])), 756u, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_0.x)))))).d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)), -688f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1170f * var_1.x), _wgslsmith_f_op_f32(-1267f * -821f)) + var_5.yw)), u_input.b, _wgslsmith_f_op_f32(floor(var_5.x)), vec2<i32>(0i, ~(-1i)), var_4.x);
}

