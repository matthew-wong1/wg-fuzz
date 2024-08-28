struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 8> = array<f32, 8>(-1272f, 481f, -1032f, -715f, 1501f, -971f, -1993f, 1658f);

var<private> global2: array<bool, 21> = array<bool, 21>(false, true, false, true, true, false, false, false, false, true, false, true, true, true, false, true, false, false, true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = Struct_1(countOneBits(~(~max(1u, 26505u))), select(select(vec4<bool>(global2[_wgslsmith_index_u32(2964u ^ u_input.a.x, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], false, all(vec4<bool>(global2[_wgslsmith_index_u32(68640u, 21u)], global2[_wgslsmith_index_u32(20397u, 21u)], global2[_wgslsmith_index_u32(2038u, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)]))), vec4<bool>(select(global2[_wgslsmith_index_u32(35317u, 21u)], true, false), all(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 21u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)])), global2[_wgslsmith_index_u32(u_input.a.x, 21u)], true && global2[_wgslsmith_index_u32(arg_0.x, 21u)]), !global2[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 21u)]), vec4<bool>(true, !(!global2[_wgslsmith_index_u32(0u, 21u)]), all(!vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 21u)], true)), global2[_wgslsmith_index_u32(countOneBits(arg_0.x), 21u)]), !select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(45624u, 21u)], true, true), false), select(vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 21u)], global2[_wgslsmith_index_u32(1894u, 21u)], global2[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(9904u, 21u)], false, false), true), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(global0.xww - _wgslsmith_f_op_vec3_f32(-global0.wxw));
    let var_2 = -262f;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1144f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), 347f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 64444u, 22684u, u_input.a.x), vec4<u32>(0u, arg_0.x, 31586u, 4294967295u)), 8u)]), -698f, var_1.x));
    let var_3 = ~_wgslsmith_div_u32(select(arg_0.x, reverseBits(arg_0.x), all(vec2<bool>(true, true))), ~(~0u) >> (u_input.a.x % 32u));
    return false;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = vec2<bool>(true, !func_3(_wgslsmith_clamp_vec2_u32(u_input.a << (u_input.a % vec2<u32>(32u)), vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(u_input.a.x, arg_0.a))));
    global2 = array<bool, 21>();
    global2 = array<bool, 21>();
    var var_1 = arg_0;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(344f, global1[_wgslsmith_index_u32(0u, 8u)], 977f, global1[_wgslsmith_index_u32(7256u, 8u)]) * vec4<f32>(-1056f, 304f, 246f, global0.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-145f, global0.x, 226f, global1[_wgslsmith_index_u32(32334u, 8u)]), vec4<f32>(global0.x, 868f, -1338f, 390f))), all(var_1.b.yxx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -887f, global1[_wgslsmith_index_u32(47320u, 8u)], -1387f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3547f, 211f, global1[_wgslsmith_index_u32(countOneBits(var_1.a), 8u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)] + global0.x))))));
    return _wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32((24224u & var_1.a) | (arg_0.a << (36298u % 32u)), var_1.a) >> (~_wgslsmith_div_u32(~var_1.a, 0u) % 32u));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = global0.x;
    return !any(vec4<bool>(u_input.a.x <= func_2(Struct_1(51113u, vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 21u)], global2[_wgslsmith_index_u32(55358u, 21u)], global2[_wgslsmith_index_u32(u_input.a.x, 21u)], true))), true, !(!global2[_wgslsmith_index_u32(4294967295u, 21u)]), any(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)], true, false)) || func_3(vec2<u32>(arg_0.x, 16904u))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(73900u, !vec4<bool>(u_input.a.x < 65785u, true, true, true));
    global1 = array<f32, 8>();
    var var_1 = Struct_1(firstLeadingBit(~4294967295u >> (countOneBits(var_0.a) % 32u)), !var_0.b);
    let var_2 = -578f;
    let var_3 = Struct_1(firstLeadingBit(var_1.a), var_0.b);
    return _wgslsmith_add_u32(abs(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_3.a, var_0.a, 1u)) >> (vec3<u32>(var_1.a, 1u, 4294967295u) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(84034u, 35106u, var_0.a), vec3<u32>(var_1.a, var_0.a, 1u))))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_4(2147483647i, vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x - 279f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_div_f32(1430f, global0.x)), func_1(max(vec2<u32>(74853u, u_input.a.x), u_input.a))) >> (18615u % 32u), select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x << (0u % 32u), 21u)], func_1(vec2<u32>(u_input.a.x, u_input.a.x)), true, all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(37405u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], false))), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 21u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 21u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(98476u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], true, true), true), !global2[_wgslsmith_index_u32(~(~10704u), 21u)]));
    let var_1 = Struct_1(52430u, var_0.b);
    var var_2 = vec2<f32>(790f, _wgslsmith_f_op_f32(f32(-1f) * -102f));
    let var_3 = _wgslsmith_dot_vec2_u32(u_input.a, reverseBits(u_input.a)) & (countOneBits(u_input.a.x) ^ ~75467u);
    global0 = vec4<f32>(-339f, _wgslsmith_f_op_f32(f32(-1f) * -2037f), global0.x, _wgslsmith_f_op_f32(602f - _wgslsmith_f_op_f32(-var_2.x)));
    global2 = array<bool, 21>();
    let var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(13096u, _wgslsmith_sub_u32(var_3, ~func_2(var_1)), abs(~firstTrailingBit(0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_2.x - global0.x), var_2.x, _wgslsmith_f_op_f32(-global0.x), global1[_wgslsmith_index_u32(u_input.a.x ^ 80996u, 8u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(499f, -2673f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, var_2.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-199f, global0.x))) + vec2<f32>(-1598f, -1847f))));
}

