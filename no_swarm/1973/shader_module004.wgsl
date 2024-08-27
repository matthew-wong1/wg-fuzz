struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-184f, 152f, -475f, 1016f, -866f, -169f, 1762f, -432f, -368f, -940f, -1728f, 1823f, 2083f, -1000f, 1000f, 184f, 1798f, -369f);

var<private> global1: u32;

var<private> global2: vec2<i32>;

var<private> global3: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    global0 = array<f32, 18>();
    let var_0 = Struct_3(true);
    var var_1 = ~vec3<u32>(_wgslsmith_sub_u32(21250u, arg_1.x), ~0u, ~u_input.a);
    var var_2 = arg_1.x;
    return 836f;
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global1 = ~(u_input.a | firstLeadingBit(~select(u_input.a, 40378u, true)));
    global1 = u_input.a;
    var var_0 = !global3[_wgslsmith_index_u32(u_input.b.x, 26u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1217f, global0[_wgslsmith_index_u32(u_input.a, 18u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 1307f), vec2<f32>(-674f, global0[_wgslsmith_index_u32(108549u, 18u)]))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 618f)))))));
    var var_2 = !vec3<bool>(any(!select(vec2<bool>(var_0.x, false), global3[_wgslsmith_index_u32(u_input.a, 26u)], global3[_wgslsmith_index_u32(u_input.b.x, 26u)])), (var_0.x || !var_0.x) & !all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !all(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), false)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1711f) * global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4670u, ~4294967295u), 18u)]);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(false, vec3<u32>(75444u, u_input.b.x, 4294967295u), -927f, vec4<u32>(0u, arg_1.x, u_input.b.x, 30568u))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(49967u, 18u)] * 1390f), _wgslsmith_f_op_f32(floor(-418f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-895f, -1000f, 1841f) - vec3<f32>(161f, 831f, 537f)) * _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_1.x, 18u)], -739f, -961f), vec3<f32>(281f, -726f, -1268f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~max(4294967295u, u_input.a) & ~u_input.b.x;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_1(Struct_1(false, global0[_wgslsmith_index_u32(0u, 18u)], vec4<bool>(true, true, false, true), -1589f, vec4<bool>(false, false, true, true)), vec2<u32>(28389u, 1u))))))), -807f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-843f))), global0[_wgslsmith_index_u32(max(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.wx, u_input.b.yw)), 18u)])))));
    let var_1 = Struct_2(-vec4<i32>(~(~(-1i)), 1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(31811i, global2.x), u_input.d.xw), -global2.x), max(global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(21176i, -1i)))), Struct_1(all(vec3<bool>(true, u_input.c <= 1i, false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2966f))))), vec4<bool>(select(2147483647i, global2.x, false) > -2147483647i, select(true, true, false), true, false), _wgslsmith_div_f32(var_0.x, var_0.x), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false))));
    let var_2 = Struct_2(vec4<i32>(31325i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, 59921i), vec2<i32>(-28980i & global2.x, 0i)), 62125i, var_1.a.x), var_1.b);
    global0 = array<f32, 18>();
    global3 = array<vec2<bool>, 26>();
    var var_3 = !(!var_1.b.a);
    global2 = ~firstTrailingBit(select(vec2<i32>(var_2.a.x, var_2.a.x), vec2<i32>(1i, global2.x) >> (~vec2<u32>(u_input.b.x, 41569u) % vec2<u32>(32u)), select(all(var_2.b.e.yzy), true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b.d), firstTrailingBit(abs(max(-vec4<i32>(u_input.c, u_input.c, 0i, -14291i), var_1.a ^ var_2.a))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a, 29170u) & _wgslsmith_add_vec2_u32(u_input.b.zy, u_input.b.xw)), vec2<u32>(~u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, u_input.a), select(u_input.b.x, u_input.a, false), 4294967295u | u_input.a))), vec2<i32>(max(27704i, abs(-7238i)), _wgslsmith_mod_i32(var_2.a.x, -max(0i, -2147483647i))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(var_0, _wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(var_0 * var_0))))));
}

