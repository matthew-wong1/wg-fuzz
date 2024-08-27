struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 5>;

var<private> global2: array<bool, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<bool>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(0u, 5u)];
    let var_1 = vec4<i32>(global0.a.x, global0.a.x, global0.a.x, ~56003i);
    global2 = array<bool, 27>();
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<bool>(!global2[_wgslsmith_index_u32(~1u, 27u)], true, false);
    let var_1 = vec4<bool>(true, global2[_wgslsmith_index_u32((~4294967295u & arg_1.a) << (4294967295u % 32u), 27u)], true, func_2(arg_1.a, global2[_wgslsmith_index_u32(~(~(4294967295u >> (1u % 32u))), 27u)], vec4<bool>(arg_0.d.x, any(arg_1.d.zx), false, true)));
    var_0 = select(var_1.zzy, !(!select(arg_0.b, arg_1.d, all(vec4<bool>(arg_1.b.x, false, true, global2[_wgslsmith_index_u32(4294967295u, 27u)])))), false & !select(false, arg_0.d.x, true));
    var var_2 = Struct_2(any(!(!select(var_1.ww, var_0.yx, false))), vec2<u32>(1u, _wgslsmith_add_u32(arg_0.a, _wgslsmith_mult_u32(1u, arg_1.a) >> (arg_0.a % 32u))));
    var_2 = Struct_2(!any(!(!vec2<bool>(var_2.a, arg_1.d.x))), var_2.b);
    return 13758u;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: u32, arg_3: f32) -> u32 {
    global1 = array<Struct_2, 5>();
    global2 = array<bool, 27>();
    var var_0 = global0.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1146f + -531f), -1292f, 565f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1576f, arg_3, arg_3)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3, 441f, arg_3))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, arg_3))), select(!vec3<bool>(arg_0.x, false, global2[_wgslsmith_index_u32(0u, 27u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 27u)], global2[_wgslsmith_index_u32(arg_1, 27u)], arg_0.x), vec3<bool>(arg_0.x, global2[_wgslsmith_index_u32(14776u, 27u)], true), arg_0.x), select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, global2[_wgslsmith_index_u32(22756u, 27u)]), arg_0.x))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(546f - 1000f) - _wgslsmith_f_op_f32(arg_3 * 387f)) * _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(1951f * arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(256f + -1004f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-355f, arg_3))) + _wgslsmith_div_f32(1205f, _wgslsmith_div_f32(-2250f, 102f)))));
    global2 = array<bool, 27>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = vec3<bool>(true, true, any(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 27u)], true)));
    let var_2 = Struct_1(firstLeadingBit(~func_3(vec2<bool>(true, false), func_1(Struct_1(16606u, vec3<bool>(global2[_wgslsmith_index_u32(5121u, 27u)], false, false), vec2<f32>(-528f, 395f), vec3<bool>(var_1.x, true, false), global0.a.x), Struct_1(4294967295u, vec3<bool>(true, false, true), vec2<f32>(937f, -333f), vec3<bool>(var_1.x, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(55870u, 27u)]), -1i)), _wgslsmith_mult_u32(0u, 1u), -1143f)), select(vec3<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 48812u, 73450u), 27u)], !(global2[_wgslsmith_index_u32(51279u, 27u)] | false), true || all(vec2<bool>(global2[_wgslsmith_index_u32(40734u, 27u)], true))), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(4294967295u, 27u)] || !global2[_wgslsmith_index_u32(1u, 27u)]), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-363f, -713f)))), _wgslsmith_f_op_f32(abs(-165f))), vec3<bool>(true, true, false), countOneBits(-2147483647i));
    global0 = Struct_3(global0.a);
    global2 = array<bool, 27>();
    let var_3 = var_2.a;
    var var_4 = _wgslsmith_f_op_f32(ceil(-356f));
    var var_5 = vec2<bool>(false, true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.e), vec2<f32>(-224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.c.x)))), max(var_2.e, _wgslsmith_mult_i32(var_2.e, i32(-1i) * -27932i)), abs(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(25816u, 4294967295u, var_2.a, var_2.a)), vec4<u32>(33599u, var_3, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3, var_2.a, 0u), vec3<u32>(var_2.a, var_2.a, 42076u))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_2.c, var_2.c))))));
}

