struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: f32 = -1698f;

var<private> global2: f32;

var<private> global3: array<Struct_1, 25>;

var<private> global4: array<bool, 3>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    global4 = array<bool, 3>();
    var var_0 = Struct_1(~(-arg_1.a ^ arg_1.a) ^ abs(1i));
    global2 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x));
    global0 = array<Struct_1, 9>();
    global3 = array<Struct_1, 25>();
    return Struct_1(max(_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_1.a, 2147483647i) | _wgslsmith_mod_i32(arg_1.a, -28188i), -2147483647i), -(30996i | -arg_1.a)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = vec4<i32>(arg_3.a, min(2147483647i, 0i), arg_3.a, 22287i);
    let var_1 = vec2<bool>(!(all(vec3<bool>(false, true, true)) || any(vec3<bool>(true, true, true))), !arg_0.x);
    let var_2 = 0u;
    return 1f;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    global1 = -162f;
    let var_0 = ~(~_wgslsmith_clamp_u32(firstTrailingBit(1u), 38691u, firstLeadingBit(23477u)));
    var var_1 = ~_wgslsmith_sub_i32(arg_2.a, -2147483647i);
    var var_2 = ~(~vec4<u32>(0u, 4294967295u, 0u >> (min(u_input.a, 1u) % 32u), 0u));
    var var_3 = Struct_1(firstLeadingBit(-1i));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(117f, arg_1, 178f))) - vec3<f32>(-246f, 457f, -1000f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(!vec2<bool>(global4[_wgslsmith_index_u32(var_0, 3u)], global4[_wgslsmith_index_u32(var_0, 3u)]), select(u_input.a, u_input.a, global4[_wgslsmith_index_u32(var_0, 3u)]), ~vec4<u32>(var_0, 1u, var_2.x, u_input.a), func_2(vec3<f32>(arg_1, arg_1, arg_1), global3[_wgslsmith_index_u32(var_0, 25u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(408f * -1529f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_1))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, 109f, arg_1), vec3<f32>(arg_1, arg_1, 222f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -924f, arg_1) * vec3<f32>(arg_1, arg_1, -1377f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(669f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-387f))), all(vec4<bool>(all(vec3<bool>(true, false, false)) || !global4[_wgslsmith_index_u32(4294967295u, 3u)], true, !all(vec2<bool>(global4[_wgslsmith_index_u32(0u, 3u)], global4[_wgslsmith_index_u32(u_input.a, 3u)])), global4[_wgslsmith_index_u32(u_input.a, 3u)])));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(4294967295u, 9u)], 1437f, global0[_wgslsmith_index_u32(1u, 9u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1081f, 1159f, 1000f), vec3<f32>(1703f, -372f, 1145f), true)) - _wgslsmith_f_op_vec3_f32(func_1(global3[_wgslsmith_index_u32(10325u, 25u)], -332f, global3[_wgslsmith_index_u32(4294967295u, 25u)])))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(f32(-1f) * -1980f))), _wgslsmith_div_f32(2047f, -364f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1140f, 148f) * 895f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-352f, -1000f, 1386f)), Struct_1(12750i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(186f, 542f) + _wgslsmith_f_op_f32(max(1000f, 818f))), global0[_wgslsmith_index_u32(abs(27548u), 9u)])) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(u_input.a ^ 31317u, 9u)], _wgslsmith_f_op_f32(-1429f + -952f), Struct_1(0i))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1766f, -237f, 555f), vec3<f32>(-1772f, 891f, -301f), true)), vec3<f32>(-852f, 254f, 1005f), all(vec2<bool>(true, var_0.x)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -552f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(312f, var_1.x)), -2031f), var_1.x);
    var var_2 = Struct_1(select(-_wgslsmith_clamp_i32(-12340i, -54223i, -14787i), max(0i, -1i), var_0.x));
    let var_3 = vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 134479u))), _wgslsmith_sub_u32(4294967295u, 50520u), 1u), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.a, 26543u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(var_0.x, var_0.x, global4[_wgslsmith_index_u32(u_input.a, 3u)], false)), vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.a), 1u, abs(18726u), countOneBits(0u))), 29862u), 12239u);
    global4 = array<bool, 3>();
    let var_4 = abs(vec4<u32>(abs(firstTrailingBit(u_input.a)), var_3.x, _wgslsmith_clamp_u32(1u, 1u, 4294967295u) >> (u_input.a % 32u), 29187u)) ^ ~vec4<u32>(u_input.a, 4294967295u, var_3.x, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-792f, var_1.x, var_0.x)) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, 880f), -537f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-891f, -2372f) + _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))))), var_4);
}

