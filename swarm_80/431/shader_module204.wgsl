struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: u32;

var<private> global2: array<u32, 27>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(true, arg_1.b);
    global1 = global2[_wgslsmith_index_u32(1u, 27u)];
    global0 = array<Struct_1, 4>();
    global1 = global2[_wgslsmith_index_u32(0u, 27u)];
    let var_1 = !vec2<bool>(true, !(!arg_1.a & arg_1.a));
    return global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22723u, 27u)], 27u)] | u_input.a.x, 27u)] & ~16071u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = 1344f;
    var var_1 = Struct_1(true, arg_0.b);
    var var_2 = -(max(~(-2147483647i), -1i) >> (1u % 32u));
    let var_3 = vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-22781i, countOneBits(2147483647i), 6683i) | select(~vec3<i32>(2147483647i, 8847i, 25004i), vec3<i32>(1i, 1i, 1i), select(arg_1.a, true, false)), vec3<i32>(1i, 1i, 1i)));
    let var_4 = Struct_1(false, arg_1.b);
    return global2[_wgslsmith_index_u32(7498u, 27u)] >> (~global2[_wgslsmith_index_u32(2854u, 27u)] % 32u);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> vec3<f32> {
    let var_0 = ~arg_0;
    let var_1 = -2147483647i << (_wgslsmith_clamp_u32(94741u, global2[_wgslsmith_index_u32(94452u, 27u)], (_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]) | 36544u) << (min(func_2(Struct_1(arg_1, vec3<f32>(-1106f, -1213f, -1629f)), Struct_1(false, vec3<f32>(-2069f, -381f, 383f))), abs(68885u)) % 32u)) % 32u);
    var var_2 = select(select(vec3<bool>(any(vec2<bool>(false, arg_1)), !arg_1, min(118651u, 0u) > func_3(Struct_1(true, vec3<f32>(-423f, 446f, -1000f)), global0[_wgslsmith_index_u32(0u, 4u)])), select(vec3<bool>(arg_1, any(vec2<bool>(arg_1, arg_1)), true), !(!vec3<bool>(false, arg_1, false)), !all(vec2<bool>(arg_1, false))), !select(select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, true)), vec3<bool>(arg_1, true, true), false)), select(!select(vec3<bool>(arg_1, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1, false), arg_1), !vec3<bool>(arg_1, arg_1, arg_1)), vec3<bool>(!arg_1 && select(true, true, true), true, arg_1), !select(!vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), true)), !arg_1);
    var var_3 = 45353u;
    var var_4 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(arg_0.x, var_0.x) | (-2147483647i | var_1)), 26507i) < -18103i;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-245f, _wgslsmith_f_op_f32(f32(-1f) * -473f))) - -410f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(698f * -1049f) * _wgslsmith_f_op_f32(trunc(-970f))))), 936f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_1(any(!vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(932f, 1818f, 1274f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_1(vec2<i32>(1i, 1i), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2931f, 594f, -707f) * vec3<f32>(-334f, 1582f, -214f))))))));
    global0 = array<Struct_1, 4>();
    let var_2 = -31457i;
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-56949i, var_2, var_2), vec3<i32>(var_2, 9843i, 36029i)))), vec2<i32>(var_2, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, 0i, var_2), vec3<i32>(-2147483647i, var_2, var_2)) | _wgslsmith_add_i32(var_2, var_2))));
    let var_4 = global0[_wgslsmith_index_u32(0u, 4u)];
    var var_5 = Struct_1(true & !any(select(vec4<bool>(false, var_1.a, false, true), vec4<bool>(var_4.a, true, var_1.a, false), false)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~(vec3<i32>(var_3, 1i, var_2) & vec3<i32>(-2147483647i, 2147483647i, var_2)))), countOneBits(firstLeadingBit(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47531u, 27u)], 27u)], 27u)]))) << (func_3(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], var_1) % 32u));
}

