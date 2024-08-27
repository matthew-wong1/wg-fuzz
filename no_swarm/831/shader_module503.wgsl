struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(-73108i, 1i, -40248i, 1i);

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(0u, 1u), vec2<u32>(35506u, 5705u), vec2<u32>(4294967295u, 8164u), vec2<u32>(0u, 21435u), vec2<u32>(10662u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(37510u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(28834u, 22421u), vec2<u32>(4294967295u, 18387u), vec2<u32>(11492u, 32402u), vec2<u32>(0u, 23061u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(28281u, 8888u), vec2<u32>(4948u, 4294967295u), vec2<u32>(75124u, 4294967295u), vec2<u32>(27724u, 21834u), vec2<u32>(75089u, 68964u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 30993u));

var<private> global2: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(28192u, 98760u, 38053u, 19509u), vec4<u32>(19687u, 21238u, 81472u, 6761u), vec4<u32>(34240u, 1u, 4294967295u, 89064u));

var<private> global3: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-297f, -1071f), vec2<f32>(-1000f, 638f), vec2<f32>(-795f, 2112f), vec2<f32>(-2177f, 161f), vec2<f32>(289f, 347f), vec2<f32>(-411f, 253f), vec2<f32>(139f, -982f), vec2<f32>(274f, -1000f), vec2<f32>(-1716f, -1000f), vec2<f32>(602f, -396f), vec2<f32>(1000f, 2347f), vec2<f32>(-731f, -855f), vec2<f32>(-637f, -491f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: f32) -> vec4<bool> {
    let var_0 = true;
    global2 = array<vec4<u32>, 3>();
    global1 = array<vec2<u32>, 21>();
    global0 = array<i32, 4>();
    let var_1 = global1[_wgslsmith_index_u32(abs(0u), 21u)];
    return !select(select(vec4<bool>(all(arg_1), true, !var_0, all(arg_0)), vec4<bool>(-2147483647i != global0[_wgslsmith_index_u32(var_1.x, 4u)], any(arg_0), var_0, true), false), !select(select(vec4<bool>(true, true, true, var_0), vec4<bool>(true, arg_0.x, var_0, var_0), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), select(vec4<bool>(true, arg_1.x, arg_1.x, var_0), vec4<bool>(false, arg_1.x, var_0, false), arg_1.x), vec4<bool>(arg_0.x, var_0, false, arg_1.x)), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(select(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 19895u, 4294967295u), false)), countOneBits(vec3<u32>(50444u, 1u, 0u))), ~abs(min(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 60055u)))), 6301u);
    let var_1 = Struct_5(Struct_1(1u));
    let var_2 = vec4<bool>(true, !any(vec4<bool>(true, true, true, true)), false, all(!select(vec4<bool>(true, true, true, true), func_3(vec3<bool>(true, false, true), vec2<bool>(true, true), 719f), true)));
    let var_3 = var_1;
    global1 = array<vec2<u32>, 21>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_1() -> u32 {
    let var_0 = true && any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec3<bool>(true, true, true)));
    global2 = array<vec4<u32>, 3>();
    global1 = array<vec2<u32>, 21>();
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1411u), vec2<u32>(4155u, 4294967295u))), 13u)] * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(194f, -269f)))), vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<f32>(-407f, 1780f), u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-564f)), _wgslsmith_f_op_f32(sign(-188f)))), vec2<bool>(!(!var_0), false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(142f * 252f), _wgslsmith_f_op_f32(abs(-1014f))), vec2<f32>(_wgslsmith_f_op_f32(1206f * 198f), _wgslsmith_f_op_f32(max(4193f, -718f))), true))))));
    global3 = array<vec2<f32>, 13>();
    return _wgslsmith_add_u32(select(1u, ~13986u, (var_1.x != -634f) == var_0), ~(~_wgslsmith_mod_u32(42220u, 11678u))) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_1(_wgslsmith_clamp_u32(~0u, func_1(), _wgslsmith_div_u32(50137u, 17484u))));
    var_0 = Struct_5(var_0.a);
    let var_1 = Struct_2(vec2<u32>(~471u, 1u));
    let var_2 = ~_wgslsmith_mult_u32(~(min(var_0.a.a, var_0.a.a) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, var_0.a.a), var_1.a)), 16755u);
    global2 = array<vec4<u32>, 3>();
    global1 = array<vec2<u32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~(-u_input.a) | -min(u_input.a, firstTrailingBit(vec2<i32>(u_input.a.x, -1i))), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(var_1.a.x, 3u)], vec4<u32>(73818u, 36888u, 1u, var_1.a.x)) & global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2 >> (1u % 32u), ~var_0.a.a), 3u)], vec4<u32>(firstTrailingBit(var_1.a.x & var_2), var_2, min(1u, var_0.a.a), ~max(var_0.a.a, 61218u))), ~((-u_input.a.x << (~608u % 32u)) | u_input.a.x));
}

