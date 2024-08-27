struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = vec2<bool>(any(vec4<bool>(!select(true, true, false), true, true, any(vec4<bool>(false, true, false, false)))), select(true, all(vec3<bool>(true, true, any(vec4<bool>(false, true, false, false)))), false));
    global0 = array<u32, 11>();
    var var_1 = -countOneBits(~vec4<i32>(min(5224i, -1i), countOneBits(-2147483647i), 1i, 1i));
    var var_2 = vec4<bool>(false, select(any(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_0.x, false)), vec3<bool>(false, var_0.x, false), any(vec4<bool>(true, false, true, false)))), _wgslsmith_mod_i32(var_1.x, ~var_1.x) >= (0i >> (1u % 32u)), var_0.x), select(all(vec3<bool>(true, false, arg_0.x >= -732f)), true, all(select(vec3<bool>(true, true, false), select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true), var_0.x), global0[_wgslsmith_index_u32(4294967295u, 11u)] == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)]))), true);
    let var_3 = all(select(select(!select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(var_2.x, true, false, var_0.x), true), !(!vec4<bool>(false, var_2.x, true, var_2.x)), !(var_2.x && true)), vec4<bool>(false, select(var_2.x, true, !var_0.x), false, 0i >= _wgslsmith_mult_i32(var_1.x, var_1.x)), vec4<bool>(false, !var_0.x, any(select(vec4<bool>(var_2.x, var_0.x, var_2.x, true), vec4<bool>(true, var_0.x, var_2.x, true), vec4<bool>(false, true, false, var_0.x))), !var_2.x)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec2<u32> {
    global0 = array<u32, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -935f)))) * _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))))), -1000f, -1000f);
    var_0 = Struct_1(_wgslsmith_f_op_f32(1591f - 1428f), 119f, -127f);
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    return u_input.a.yy;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = true;
    let var_1 = _wgslsmith_clamp_vec2_i32(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2147483647i, -14845i), vec2<i32>(arg_0, arg_0)) | max(vec2<i32>(2147483647i, arg_0), vec2<i32>(-1i, arg_0))) << (func_2((arg_0 & -78619i) & (i32(-1i) * -15015i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, -3880i), vec4<i32>(arg_0, 14290i, arg_0, -27001i)), arg_0), vec2<u32>(4294967295u, ~u_input.a.x)) % vec2<u32>(32u)), vec2<i32>(-7514i, -arg_0), select(vec2<i32>(arg_0 >> (u_input.a.x % 32u), -arg_0) & _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, arg_0), -vec2<i32>(-1i, 0i)), ~(-_wgslsmith_div_vec2_i32(vec2<i32>(33890i, arg_0), vec2<i32>(arg_0, arg_0))), true));
    let var_2 = var_1.x;
    global0 = array<u32, 11>();
    let var_3 = false;
    return _wgslsmith_div_u32(global0[_wgslsmith_index_u32(49821u, 11u)], ~105933u | ~global0[_wgslsmith_index_u32(func_2(~0i, -var_1, vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 0u)).x, 11u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, firstLeadingBit(~global0[_wgslsmith_index_u32(func_1(25947i, Struct_1(805f, 1045f, -537f), Struct_1(769f, -960f, -1890f)), 11u)])), ~u_input.a);
    let var_1 = 837i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(815f)))) + _wgslsmith_f_op_f32(min(-414f, 1f))) * _wgslsmith_f_op_f32(414f * _wgslsmith_f_op_f32(f32(-1f) * -1727f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1203f, 1000f, -2005f, 320f)))) - _wgslsmith_f_op_f32(trunc(370f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(192f, -1427f, true)), _wgslsmith_f_op_f32(abs(2917f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1406f)) + _wgslsmith_div_f32(-620f, 1158f)))), 1f);
    global0 = array<u32, 11>();
    var var_3 = var_2;
    global0 = array<u32, 11>();
    var var_4 = true;
    let var_5 = Struct_1(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(var_3.c - _wgslsmith_div_f32(-756f, _wgslsmith_f_op_f32(326f + var_3.c)))), _wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-271f + 996f), _wgslsmith_f_op_f32(var_3.b + -1133f))))));
    var_3 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-var_1, -countOneBits(_wgslsmith_add_i32(var_1, 1i)), var_1));
}

