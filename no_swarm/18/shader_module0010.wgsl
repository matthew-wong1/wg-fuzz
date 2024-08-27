struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(971f, 726f, 777f), vec3<f32>(-199f, 696f, 329f), vec3<f32>(-467f, 1151f, -551f), vec3<f32>(-463f, 1015f, 393f), vec3<f32>(1489f, 325f, -308f), vec3<f32>(-1226f, -429f, 2540f), vec3<f32>(476f, -791f, -905f), vec3<f32>(337f, -802f, 738f), vec3<f32>(1381f, -1074f, 176f), vec3<f32>(-936f, 1558f, 581f), vec3<f32>(1155f, 1156f, -943f), vec3<f32>(-570f, 1029f, 1355f), vec3<f32>(-821f, 998f, -588f), vec3<f32>(-148f, 1076f, 525f), vec3<f32>(773f, -1000f, -850f), vec3<f32>(583f, 633f, 1000f), vec3<f32>(844f, 917f, -1734f), vec3<f32>(-1011f, -107f, -1488f), vec3<f32>(-804f, 119f, -1599f), vec3<f32>(105f, -1179f, -1155f), vec3<f32>(-476f, 803f, -1591f), vec3<f32>(-141f, 1000f, -431f), vec3<f32>(1088f, 879f, 1000f), vec3<f32>(1428f, -783f, -713f), vec3<f32>(-641f, -431f, -2394f));

var<private> global2: Struct_1 = Struct_1(1000f, vec2<bool>(true, true), -611f, false, vec3<i32>(-1i, -14293i, -8831i));

var<private> global3: f32;

var<private> global4: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = u_input.b.x;
    return !(!vec3<bool>(global2.b.x, !global2.b.x, false));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    let var_0 = global2.e.x;
    global1 = array<vec3<f32>, 25>();
    let var_1 = !select(!(!vec4<bool>(arg_2.d, global2.b.x, true, global2.d)), !vec4<bool>(true, false, arg_1.x, arg_1.x), !vec4<bool>(false, all(arg_1), any(vec4<bool>(global2.b.x, arg_2.d, arg_1.x, false)), all(arg_2.b)));
    global0 = array<u32, 16>();
    global3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -773f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -215f)));
    return all(!vec4<bool>(any(select(vec3<bool>(arg_1.x, arg_2.b.x, false), vec3<bool>(false, arg_2.d, global2.d), arg_1.x)), !(global2.d | arg_2.b.x), any(vec3<bool>(var_1.x, false, true)), any(!vec3<bool>(false, arg_2.b.x, arg_1.x))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = reverseBits(firstLeadingBit(_wgslsmith_dot_vec2_i32(~global2.e.yz, vec2<i32>(global2.e.x, 2147483647i)))) | 60932i;
    var var_1 = _wgslsmith_dot_vec3_i32(-(~max(global2.e, global2.e)), _wgslsmith_div_vec3_i32(global2.e, ~(~firstLeadingBit(vec3<i32>(-9995i, global2.e.x, -31313i)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global1[_wgslsmith_index_u32(countOneBits(u_input.b.x), 25u)])) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(47331u, global0[_wgslsmith_index_u32(24448u, 16u)]), 25u)])) + _wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(u_input.b.x, 25u)]))));
    global3 = _wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), -882f));
    var_2 = _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(countOneBits(33768u)) >> (47287u % 32u), reverseBits(~firstLeadingBit(4294967295u))), 25u)] + _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 25u)]));
    return Struct_1(687f, func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2.zx)))))).zz, -1000f, true, vec3<i32>(global2.e.x, _wgslsmith_add_i32(-1i, global2.e.x), -1i));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    global2 = func_4(vec3<bool>(true, true, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-global2.c)), !func_2(arg_0.xx), Struct_1(1587f, vec2<bool>(global2.d, global2.d), _wgslsmith_f_op_f32(round(-232f)), true, global2.e))));
    var var_0 = arg_0;
    var var_1 = 11595u;
    let var_2 = u_input.a.yz;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global2.a, 1916f, global2.b.x)), _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(309f + 245f)), true));
    return _wgslsmith_f_op_f32(ceil(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 25u)])))), global2.b, -1473f, max(u_input.a.x, 1u) <= u_input.b.x, -(vec3<i32>(global2.e.x, -69732i, _wgslsmith_mult_i32(-1i, 33493i)) << (u_input.b % vec3<u32>(32u))));
    global3 = -1000f;
    let var_1 = _wgslsmith_f_op_f32(614f - _wgslsmith_f_op_f32(-global2.a));
    let var_2 = vec4<bool>(false, global2.d, any(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, global2.c) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1575f, -833f)))))), any(!vec3<bool>(true, true, any(global2.b))));
    var var_3 = vec2<bool>(var_2.x, var_0.d == (true | (global2.e.x < global2.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), vec4<i32>(abs(5413i), -37512i, ~11854i, global2.e.x));
}

