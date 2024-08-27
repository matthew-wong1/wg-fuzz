struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global1: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec3<f32> {
    let var_0 = -92824i;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_div_f32(387f, -1858f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1001f * -1783f) + _wgslsmith_f_op_f32(abs(-422f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f - 1203f) - _wgslsmith_f_op_f32(step(-534f, -562f))), 442f)));
    global1 = !all(global0[_wgslsmith_index_u32(arg_1.x, 22u)]);
    let var_2 = Struct_1(select(-(firstTrailingBit(vec4<i32>(-52369i, var_0, 32037i, var_0)) ^ max(vec4<i32>(u_input.b.x, arg_0.x, arg_0.x, -2147483647i), vec4<i32>(arg_0.x, -2147483647i, var_0, arg_0.x))), -((vec4<i32>(0i, 49670i, u_input.a.x, arg_0.x) | vec4<i32>(var_0, -47220i, var_0, var_0)) & vec4<i32>(1i, arg_0.x, 1i, var_0)), true && all(global0[_wgslsmith_index_u32(~1u, 22u)])), true);
    global0 = array<vec3<bool>, 22>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.wzx)));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = 1f;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(625f, -822f, -322f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(362f, -685f, 953f)))), _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(-2147483647i, _wgslsmith_div_i32(32737i, arg_1)), ~vec3<u32>(1u, 1u, 1u))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-790f, _wgslsmith_div_f32(1681f, -144f), _wgslsmith_f_op_f32(sign(2142f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(926f, -287f)) * _wgslsmith_f_op_f32(f32(-1f) * -795f)), _wgslsmith_f_op_f32(select(1435f, _wgslsmith_f_op_f32(f32(-1f) * -851f), all(vec4<bool>(true, false, false, arg_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1640f, 789f), -1094f)))));
    let var_2 = vec4<i32>(-1i) * -(~firstLeadingBit(vec4<i32>(0i, 2147483647i, 55526i, 1i) ^ vec4<i32>(0i, 2147483647i, -15141i, u_input.a.x)));
    var var_3 = Struct_1(var_2, !arg_0.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x));
    return Struct_1(var_3.a, false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> bool {
    return func_2(select(!(!(!vec3<bool>(false, arg_1.b, arg_0.b))), !global0[_wgslsmith_index_u32(0u, 22u)], func_2(!global0[_wgslsmith_index_u32(~arg_3.x, 22u)], _wgslsmith_sub_i32(arg_0.a.x, arg_2)).b), _wgslsmith_add_i32(-18652i, -4162i)).b;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, 413f), _wgslsmith_f_op_f32(select(353f, 2015f, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1580f), _wgslsmith_f_op_f32(sign(-139f))))), _wgslsmith_f_op_f32(abs(-251f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-162f, -760f) + vec2<f32>(1221f, 289f))))));
    global1 = select(false, min(u_input.b.x >> (1u % 32u), 0i) <= (min(_wgslsmith_mult_i32(1i, u_input.a.x), -2147483647i) >> (~max(102656u, 39331u) % 32u)), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))));
    global1 = true & !func_4(Struct_1(min(vec4<i32>(u_input.b.x, 510i, u_input.b.x, 0i), vec4<i32>(u_input.b.x, 1i, 44264i, u_input.b.x)), true), func_2(select(vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(10892u, 22u)], false), 2147483647i), abs(1i), vec3<u32>(1u, firstLeadingBit(4294967295u), 11945u));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u), 22u)];
    var var_2 = 4294967295u;
    return Struct_1(~(~(~firstTrailingBit(vec4<i32>(u_input.b.x, 26138i, u_input.a.x, u_input.b.x)))), (i32(-1i) * -(~u_input.a.x)) <= select(-(~u_input.a.x), -u_input.b.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = vec4<i32>(2147483647i, -1i, -2147483647i, i32(-1i) * -8457i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f));
    let var_2 = func_1();
    var_0 = vec4<i32>(2147483647i, i32(-1i) * -53059i, u_input.a.x, u_input.a.x);
    global0 = array<vec3<bool>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(global0[_wgslsmith_index_u32(~abs(~25312u), 22u)], ~(~var_2.a.x)).a.x, vec2<u32>(22813u, ~select(1u, 4294967295u, var_2.b)), vec4<f32>(1000f, _wgslsmith_f_op_f32(689f - _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(step(1000f, -1000f)))), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(sign(1085f))) * _wgslsmith_f_op_f32(min(var_1, var_1)))), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_2.a.x), min(u_input.b, var_0.wyz)), abs(vec3<i32>(u_input.b.x, var_0.x, var_0.x)))));
}

