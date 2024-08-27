struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(i32(-2147483648), 2147483647i, 2147483647i, 0i, -1i, -69223i, 1i, 1i, 78428i, 28878i, 6075i, 0i, 2147483647i, 26892i, 2147483647i);

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, true));

var<private> global2: array<bool, 25> = array<bool, 25>(false, true, false, true, false, false, true, false, false, false, false, false, false, true, true, false, true, false, true, true, false, true, true, true, false);

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = 689f;
    let var_1 = arg_3;
    return global3.x;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = Struct_1(vec2<bool>(true, !(!arg_0)));
    global0 = array<i32, 15>();
    let var_1 = max(countOneBits(((vec4<u32>(20626u, 4294967295u, arg_3, arg_3) | vec4<u32>(48619u, arg_3, u_input.a, 8803u)) >> ((vec4<u32>(u_input.a, 74651u, u_input.a, arg_3) | vec4<u32>(u_input.a, 0u, arg_3, 1u)) % vec4<u32>(32u))) | firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4158u), vec4<u32>(0u, 9962u, 1u, 0u)))), ~(~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(40804u, arg_3, 23706u, arg_3)), max(vec4<u32>(u_input.a, arg_3, 4294967295u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)))));
    global3 = var_0.a;
    var var_2 = Struct_1(!vec2<bool>(var_0.a.x, arg_0 && all(vec4<bool>(true, false, true, false))));
    return -1000f;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = arg_0;
    global2 = array<bool, 25>();
    global2 = array<bool, 25>();
    global0 = array<i32, 15>();
    global2 = array<bool, 25>();
    return ~(~39326u);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(select(!(!vec2<bool>(global3.x, true)), global1.a, select(func_2(firstTrailingBit(vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.a, 15u)])), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 4294967295u)), arg_0, Struct_1(vec2<bool>(true, false))), false, !(!global1.a.x))));
    let var_1 = arg_0;
    return func_4(var_0, -11530i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(266f - _wgslsmith_f_op_f32(-1164f * _wgslsmith_f_op_f32(func_3(true, vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a, 15u)], -35293i, 2147483647i), global0[_wgslsmith_index_u32(1u, 15u)], 1u)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -760f;
    var var_1 = -_wgslsmith_clamp_i32(0i, global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(5698u, 15u)] & global0[_wgslsmith_index_u32(~u_input.a >> (func_1(Struct_1(global1.a)) % 32u), 15u)]);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1795f, _wgslsmith_div_f32(410f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(837f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1650f - 396f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-3346f)))))));
    global3 = global1.a;
    global1 = Struct_1(vec2<bool>(!(!any(vec3<bool>(false, false, global1.a.x))), !global1.a.x));
    var var_2 = (_wgslsmith_div_i32(_wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(u_input.a, 15u)], ~global0[_wgslsmith_index_u32(50493u, 15u)]), -1i) | firstLeadingBit(min(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 0u), 15u)], -60392i))) << (32016u % 32u);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1371f)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~global0[_wgslsmith_index_u32(1u | u_input.a, 15u)], _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], 1i, -18252i)), vec3<i32>(-13225i, 1i, global0[_wgslsmith_index_u32(1u, 15u)]) << (vec3<u32>(4070u, 1u, 0u) % vec3<u32>(32u))), -2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(max(897f, -423f)), _wgslsmith_f_op_f32(f32(-1f) * -400f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-219f, -644f))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1590f, 1063f, false)) - _wgslsmith_f_op_f32(select(-1000f, 841f, true))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(423f * -502f), 540f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1456f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1960f)) * _wgslsmith_f_op_f32(sign(369f)))), -646f, -1878f), u_input.a);
}

