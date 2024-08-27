struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<vec2<bool>, 32>;

var<private> global2: array<Struct_1, 7>;

var<private> global3: f32 = -797f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 39585i, u_input.a.x, 53405i), vec4<i32>(u_input.b, 8064i, -33659i, u_input.b))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(11801i, 2147483647i, -1i), u_input.a), 0i), u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(0i >> (1u % 32u), -43547i, -(u_input.b >> (u_input.c % 32u)), u_input.b), _wgslsmith_div_vec4_i32(~max(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.a.x, -2147483647i, 6435i, u_input.b)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, -27809i), vec4<i32>(-1i, u_input.b, 6528i, -13146i)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(585f, 308f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1220f * -346f)))));
    global2 = array<Struct_1, 7>();
    global3 = 1897f;
    return _wgslsmith_f_op_f32(f32(-1f) * -144f);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> bool {
    global1 = array<vec2<bool>, 32>();
    global0 = array<bool, 6>();
    var var_0 = vec2<u32>(~arg_1.a >> (~arg_1.a % 32u), arg_1.a);
    var var_1 = global2[_wgslsmith_index_u32(u_input.c, 7u)];
    global3 = var_1.b;
    return !any(arg_1.b) || all(!vec3<bool>(var_1.c, !arg_0, arg_0));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> f32 {
    global2 = array<Struct_1, 7>();
    let var_0 = Struct_2(~arg_3.x, select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], arg_1.x), select(select(select(global1[_wgslsmith_index_u32(arg_3.x, 32u)], vec2<bool>(false, false), arg_1.x), vec2<bool>(false, true), 1u > arg_3.x), vec2<bool>(!global0[_wgslsmith_index_u32(44263u, 6u)], u_input.c != 42976u), true), any(!select(vec2<bool>(true, false), global1[_wgslsmith_index_u32(arg_3.x, 32u)], global1[_wgslsmith_index_u32(7118u, 32u)]))));
    let var_1 = Struct_2(4294967295u, select(select(var_0.b, select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 6u)], var_0.b.x), true), !all(vec2<bool>(arg_1.x, false))), vec2<bool>(all(select(arg_1, arg_1, arg_1)), any(select(global1[_wgslsmith_index_u32(85374u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], true))), vec2<bool>(_wgslsmith_f_op_f32(floor(-543f)) > arg_0, var_0.b.x || true)));
    global3 = _wgslsmith_f_op_f32(floor(arg_2.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(538f, _wgslsmith_f_op_f32(step(-1000f, -617f)), true)), 528f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(1000f * 974f))))));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = Struct_3(42572u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(round(1992f)), vec4<bool>(func_3(global0[_wgslsmith_index_u32(u_input.c, 6u)], Struct_2(u_input.c, global1[_wgslsmith_index_u32(1u, 32u)])), arg_0, true, u_input.b > -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1744f, -217f, -1092f)))), min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), firstLeadingBit(vec3<u32>(u_input.c, u_input.c, 0u))))), 1000f), vec4<u32>(_wgslsmith_mod_u32(u_input.c, u_input.c), max(u_input.c, (8740u ^ u_input.c) >> (~48034u % 32u)), 0u, u_input.c), Struct_1(firstTrailingBit(vec4<u32>(u_input.c >> (u_input.c % 32u), u_input.c, u_input.c, select(u_input.c, 0u, true))), 963f, true, 1u, abs(countOneBits(min(vec3<i32>(0i, u_input.a.x, u_input.a.x), u_input.a)))), -2147483647i);
    var var_1 = Struct_2(~(max(~var_0.c.x, firstTrailingBit(2344u)) & var_0.c.x), select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u >> (0u % 32u), _wgslsmith_mult_u32(50969u, u_input.c)), 6u)], select(global0[_wgslsmith_index_u32(1u, 6u)], var_0.d.c, true)), select(!(!vec2<bool>(arg_0, arg_0)), !select(vec2<bool>(false, var_0.d.c), vec2<bool>(var_0.d.c, arg_0), global1[_wgslsmith_index_u32(u_input.c, 32u)]), true), vec2<bool>(arg_0, var_0.d.c)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -157f))), var_0.b.x)), -716f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * -1588f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b) + _wgslsmith_f_op_f32(func_1())))));
    let var_3 = -75725i;
    var_0 = Struct_3(~(~48993u), var_0.b, vec4<u32>(max(38831u, ~(~var_1.a)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(23878u, min(var_0.a, var_0.d.a.x)), var_1.a ^ u_input.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_0.a), ~select(var_0.d.a.zx, var_0.c.zy, var_0.d.c)), reverseBits(_wgslsmith_div_u32(var_0.c.x, _wgslsmith_mod_u32(25577u, u_input.c)))), Struct_1(~(~var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(233f * var_2.x)), !(!var_0.d.c), ~(~_wgslsmith_mod_u32(var_1.a, 0u)), abs(reverseBits(~var_0.d.e))), abs(1i));
    return select(!(!select(select(vec3<bool>(false, var_1.b.x, false), vec3<bool>(true, true, var_1.b.x), global0[_wgslsmith_index_u32(var_0.a, 6u)]), select(vec3<bool>(var_0.d.c, global0[_wgslsmith_index_u32(0u, 6u)], var_0.d.c), vec3<bool>(var_0.d.c, true, true), true), arg_0)), select(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c, 6u)])), vec3<bool>(any(vec2<bool>(true, true)), true, false), !select(select(vec3<bool>(var_1.b.x, true, var_1.b.x), vec3<bool>(global0[_wgslsmith_index_u32(33008u, 6u)], false, var_0.d.c), vec3<bool>(false, false, true)), vec3<bool>(var_0.d.c, global0[_wgslsmith_index_u32(u_input.c, 6u)], true), !var_1.b.x)), vec3<bool>(true, global0[_wgslsmith_index_u32(~var_0.d.a.x, 6u)], 2147483647i >= ~var_3));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1159f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-435f)), _wgslsmith_f_op_f32(func_1())))) - _wgslsmith_f_op_f32(f32(-1f) * -163f))));
    let var_0 = Struct_2(4137u >> (u_input.c % 32u), vec2<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 6u)], !(global0[_wgslsmith_index_u32(u_input.c, 6u)] != global0[_wgslsmith_index_u32(u_input.c, 6u)]) & all(func_2(global0[_wgslsmith_index_u32(u_input.c, 6u)]))));
    global1 = array<vec2<bool>, 32>();
    var var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -2446f), !(!select(select(vec4<bool>(var_0.b.x, false, global0[_wgslsmith_index_u32(var_0.a, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(var_0.b.x, var_0.b.x, global0[_wgslsmith_index_u32(var_0.a, 6u)], false), var_0.b.x), select(vec4<bool>(var_0.b.x, var_0.b.x, global0[_wgslsmith_index_u32(var_0.a, 6u)], global0[_wgslsmith_index_u32(var_0.a, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(10017u, 6u)], global0[_wgslsmith_index_u32(var_0.a, 6u)], var_0.b.x, var_0.b.x), vec4<bool>(true, false, true, false)), any(vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 6u)], true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1341f, -859f, -309f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-646f, -660f, -699f), _wgslsmith_f_op_vec3_f32(vec3<f32>(519f, 913f, -112f) - vec3<f32>(282f, 1110f, 410f))))), vec3<u32>(~_wgslsmith_mult_u32(0u, 1u), u_input.c, u_input.c) ^ ~_wgslsmith_sub_vec3_u32(~vec3<u32>(8106u, u_input.c, u_input.c), select(vec3<u32>(var_0.a, 1u, 1u), vec3<u32>(var_0.a, 42952u, var_0.a), var_0.b.x))));
    let var_2 = var_0.b.x;
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(327f + 780f), _wgslsmith_f_op_f32(2366f * -904f), _wgslsmith_f_op_f32(select(-726f, -949f, var_3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1414f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2040f))), _wgslsmith_f_op_f32(-209f * -442f), -967f), ~(~(~var_0.a)) << (u_input.c % 32u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(var_4.yyw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, -797f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(179f, var_4.x, 754f) + var_4.yyx)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1091f), _wgslsmith_f_op_f32(-var_4.x), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_4.x, -148f)))), var_4.x), false)));
}

