struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, false, true, true, false, false, true, false, true, true, false, false, true, false, false, false, true, true, true, false, false, false, true, true);

var<private> global1: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> i32 {
    global0 = array<bool, 25>();
    var var_0 = _wgslsmith_div_u32(41102u, max(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_0.e, _wgslsmith_sub_vec4_u32(arg_0.e, vec4<u32>(1u, 98368u, u_input.d, arg_0.e.x))), u_input.d | firstTrailingBit(4294967295u))));
    global1 = select(vec4<bool>(false, any(!(!global1.yw)), true, global0[_wgslsmith_index_u32(arg_0.e.x, 25u)]), !select(select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(30725u, 25u)], false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(3294u, 25u)], true, true), u_input.d >= u_input.d), select(vec4<bool>(true, global0[_wgslsmith_index_u32(2692u, 25u)], global0[_wgslsmith_index_u32(35151u, 25u)], true), select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(true, global1.x, true, true), global0[_wgslsmith_index_u32(4294967295u, 25u)]), global0[_wgslsmith_index_u32(u_input.d, 25u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.d, 25u)]), select(vec4<bool>(true, global1.x, global0[_wgslsmith_index_u32(arg_0.e.x, 25u)], true), vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(34892u, 25u)]), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(0u, 25u)])))), !select(!vec4<bool>(true, global1.x, false, true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], true, global0[_wgslsmith_index_u32(11288u, 25u)], global1.x), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.e.x, 25u)], false, global1.x, true), global1.x), select(vec4<bool>(true, true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.e.x, 25u)], global1.x, false, global1.x), global0[_wgslsmith_index_u32(1u, 25u)])));
    global1 = select(!(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(arg_0.e.x, 25u)], true), vec4<bool>(global0[_wgslsmith_index_u32(76688u, 25u)], global1.x, true, false)), select(vec4<bool>(true, global1.x, global0[_wgslsmith_index_u32(arg_0.e.x, 25u)], true), vec4<bool>(global0[_wgslsmith_index_u32(33474u, 25u)], global1.x, true, true), true))), !vec4<bool>(global1.x, global1.x, global1.x, true), !global0[_wgslsmith_index_u32(arg_0.e.x, 25u)]);
    let var_1 = vec3<bool>(select(true, any(vec4<bool>(true, true, true, true)), true), false, global1.x);
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = -vec4<i32>(max(func_3(arg_0, 2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -423f)), arg_0.d & ~(-2147483647i)), arg_2, firstTrailingBit(-(0i | u_input.b.x)), _wgslsmith_mod_i32(-_wgslsmith_sub_i32(arg_0.d, 0i), _wgslsmith_add_i32(max(-5976i, 1815i), countOneBits(-2147483647i))));
    let var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.x, 132f))) * var_2.a.x), -372f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(floor(var_2.a.x))) + var_1.a.x), -1491f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_1.a.x, 1056f, 794f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -1191f, 205f, arg_0.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, var_2.b, arg_0.b, arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-426f, var_2.b, 103f, -170f))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(359f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-545f + -911f), -146f, global1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.a.x)))), 1120f)));
    let var_4 = vec3<f32>(-635f, _wgslsmith_f_op_f32(select(var_2.a.x, var_3.x, all(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.e.x, 25u)], true, global0[_wgslsmith_index_u32(57032u, 25u)])))), _wgslsmith_f_op_f32(-var_2.b));
    return _wgslsmith_f_op_f32(abs(1396f));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<bool, 25>();
    var var_0 = Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -967f)), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(-1207f, 765f), -242f, -u_input.c.x, -52014i & u_input.b.x, ~(~vec4<u32>(arg_0, arg_0, 4294967295u, 0u))), _wgslsmith_sub_u32(~(~u_input.d), arg_0), 1i)), -firstTrailingBit(-u_input.c.x), _wgslsmith_dot_vec2_i32(u_input.c.ww, u_input.c.yy), ~abs(~vec4<u32>(0u, 56731u, arg_0, u_input.d)) ^ max(vec4<u32>(_wgslsmith_mult_u32(arg_0, u_input.d), _wgslsmith_mult_u32(arg_0, 1u), 0u, _wgslsmith_div_u32(1u, arg_0)), vec4<u32>(13627u, ~0u, ~40319u, arg_0)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(992f, _wgslsmith_div_f32(-1600f, _wgslsmith_f_op_f32(select(-503f, var_0.b, all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 25u)], global1.x, global0[_wgslsmith_index_u32(4294967295u, 25u)])))))));
    global0 = array<bool, 25>();
    var_1 = var_0.a;
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-151f))), ~_wgslsmith_div_i32(min(~(-1i), var_0.c), -2402i), 15220i, firstTrailingBit(abs(_wgslsmith_add_vec4_u32(var_0.e ^ var_0.e, ~vec4<u32>(arg_0, arg_0, arg_0, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -507f;
    var var_1 = func_1(firstTrailingBit(~(~_wgslsmith_clamp_u32(4294967295u, 0u, 19954u))));
    var var_2 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(~(~(var_1.e.wx >> (var_1.e.xw % vec2<u32>(32u))))), ~countOneBits(vec2<u32>(2912u, 1u)) & ~func_1(_wgslsmith_div_u32(987u, u_input.d)).e.yz, abs(_wgslsmith_clamp_vec2_u32(var_1.e.zw & ~vec2<u32>(12610u, 4294967295u), vec2<u32>(30165u, u_input.d) | vec2<u32>(u_input.d, var_1.e.x), min(vec2<u32>(21481u, u_input.d), vec2<u32>(14462u, var_1.e.x) & vec2<u32>(u_input.d, 1u)))));
    let var_3 = func_1(max(firstTrailingBit(~u_input.d & u_input.d), 4294967295u >> (_wgslsmith_clamp_u32(~var_2.x, _wgslsmith_add_u32(65421u, 91985u), _wgslsmith_sub_u32(35922u, var_2.x)) % 32u)));
    var_2 = vec2<u32>(select(~var_3.e.x, var_2.x, true), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-416f, 1004f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-695f, var_3.a.x))))));
}

