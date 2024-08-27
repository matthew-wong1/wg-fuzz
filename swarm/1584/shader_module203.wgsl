struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(4294967295u, 10611u), vec2<u32>(0u, 4294967295u), vec2<u32>(53702u, 0u), vec2<u32>(4294967295u, 28053u), vec2<u32>(0u, 59691u), vec2<u32>(1u, 1u), vec2<u32>(5020u, 775u), vec2<u32>(33543u, 65108u), vec2<u32>(0u, 0u), vec2<u32>(386u, 26795u), vec2<u32>(0u, 78495u), vec2<u32>(6826u, 61841u), vec2<u32>(1u, 7286u), vec2<u32>(13759u, 46456u), vec2<u32>(30017u, 0u), vec2<u32>(61844u, 4294967295u), vec2<u32>(20340u, 0u), vec2<u32>(14820u, 11374u), vec2<u32>(4294967295u, 46879u), vec2<u32>(52211u, 1u), vec2<u32>(41917u, 0u), vec2<u32>(0u, 1u), vec2<u32>(1359u, 32788u), vec2<u32>(4294967295u, 78655u), vec2<u32>(81540u, 127229u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 20570u), vec2<u32>(0u, 1u), vec2<u32>(678u, 4294967295u), vec2<u32>(1u, 40755u), vec2<u32>(14624u, 26083u), vec2<u32>(19623u, 1u));

var<private> global1: array<bool, 28> = array<bool, 28>(true, false, true, false, false, false, false, false, false, false, true, false, true, true, true, true, false, true, true, false, true, true, false, false, false, false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(954f + _wgslsmith_f_op_f32(f32(-1f) * -2307f)) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -354f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(860f, _wgslsmith_f_op_f32(max(-278f, 2332f))) + -589f)), 2261f);
    var var_1 = countOneBits(~43424u);
    let var_2 = !(!select(select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 28u)], true, global1[_wgslsmith_index_u32(4294967295u, 28u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 28u)], true), global1[_wgslsmith_index_u32(firstLeadingBit(91090u), 28u)]), !vec3<bool>(global1[_wgslsmith_index_u32(11795u, 28u)], global1[_wgslsmith_index_u32(259u, 28u)], false), select(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 28u)], true, false), vec3<bool>(false, false, false), false), vec3<bool>(global1[_wgslsmith_index_u32(70785u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]), select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 28u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)]), global1[_wgslsmith_index_u32(0u, 28u)]))));
    var_1 = _wgslsmith_sub_u32(17504u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~select(vec3<u32>(86846u, 10965u, 4294967295u), vec3<u32>(0u, 1u, 1u), false))));
    var var_3 = Struct_1(reverseBits(global0[_wgslsmith_index_u32(0u, 32u)]));
    return -1000f;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_1(~vec2<u32>(49205u, ~_wgslsmith_mult_u32(21222u, 5021u)));
    var_0 = Struct_1(var_0.a);
    let var_1 = false;
    let var_2 = var_0.a.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(func_3(1i)), _wgslsmith_f_op_f32(1021f - -658f), -137f);
    return 1290f;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> f32 {
    global1 = array<bool, 28>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1531f + -377f)), 1000f, 163f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(all(vec3<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(arg_1, 28u)])), select(vec4<bool>(true, true, true, arg_0), vec4<bool>(arg_0, true, true, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(37524u, 28u)], global1[_wgslsmith_index_u32(6106u, 28u)])), vec4<bool>(false, arg_0, false, arg_0)))))), var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) * -1332f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1542f, var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -487f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(2987i, -1i, u_input.a.x))))));
    let var_2 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!(!vec3<bool>(global1[_wgslsmith_index_u32(465u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(37262u, 28u)])), !(!vec3<bool>(global1[_wgslsmith_index_u32(31677u, 28u)], global1[_wgslsmith_index_u32(425u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)])), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], vec2<u32>(7510u, 4294967295u)), 28u)], !global1[_wgslsmith_index_u32(37534u, 28u)], all(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 28u)], true)))));
    global1 = array<bool, 28>();
    var var_1 = Struct_1(vec2<u32>(firstTrailingBit(1u), 1u));
    let var_2 = -1i;
    let var_3 = Struct_1(var_1.a);
    var var_4 = ~_wgslsmith_add_u32(var_3.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, var_3.a.x), vec2<u32>(4294967295u, 16690u)) >> ((var_3.a.x << ((var_1.a.x & var_3.a.x) % 32u)) % 32u));
    var var_5 = _wgslsmith_f_op_f32(max(-250f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1237f)) - _wgslsmith_f_op_f32(func_1(true, 16016u, Struct_1(var_1.a)))) * _wgslsmith_f_op_f32(f32(-1f) * -998f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1130f))))));
    let var_6 = var_3;
    var var_7 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-420f))))));
}

