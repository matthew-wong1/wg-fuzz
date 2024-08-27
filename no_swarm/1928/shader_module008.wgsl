struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -26320i;

var<private> global1: vec4<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> f32 {
    global0 = _wgslsmith_sub_i32(-1i, 1i) & -(~u_input.a.x);
    global1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -917f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(357f - arg_1.x) * _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x + arg_1.x))))), _wgslsmith_f_op_f32(824f + _wgslsmith_div_f32(arg_1.x, global1.x)), -666f)));
    let var_0 = vec3<i32>(_wgslsmith_add_i32(~_wgslsmith_mult_i32(2147483647i, arg_0.x ^ 44294i), _wgslsmith_mult_i32(firstLeadingBit(u_input.a.x), _wgslsmith_mult_i32(max(u_input.a.x, arg_0.x), arg_0.x))), -8569i, -20742i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2028f))));
}

fn func_3() -> i32 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -1012f))))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(363f, 1091f, -1898f, global1.x))))))))));
    let var_0 = Struct_1(_wgslsmith_sub_i32(1i, max(0i, _wgslsmith_add_i32(-2147483647i, u_input.a.x))), select(vec3<bool>(select(true, true, true), true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, global1.x >= 1085f), true), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true))), -u_input.a.x >> (1u % 32u));
    global0 = var_0.a;
    var var_1 = !var_0.b;
    var var_2 = -853f;
    return 0i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = all(vec4<bool>(func_3() < min(u_input.a.x, i32(-1i) * -2147483647i), all(!(!vec2<bool>(arg_1.b.x, arg_1.b.x))), false, 57255u < max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 4294967295u, arg_2), vec3<u32>(arg_2, 19084u, 0u)), ~arg_2)));
    return abs(_wgslsmith_mult_i32(arg_1.a, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 1062f) * _wgslsmith_f_op_f32(-global1.x)))), 886f, -577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -799f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(global1.x)), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec4<i32>(0i, u_input.a.x, -2147483647i, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-769f, global1.x) - global1.yw))), global1.x, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(exp2(global1.x))));
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * 2163f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))) + _wgslsmith_div_vec2_f32(global1.zx, vec2<f32>(785f, global1.x))), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-120f, 1f))));
    let var_2 = abs(56786u);
    var_0 = ~_wgslsmith_mod_i32(~_wgslsmith_sub_i32(u_input.a.x, 4193i) & func_2(_wgslsmith_f_op_vec3_f32(-global1.zzw), Struct_1(u_input.a.x, vec3<bool>(false, true, false), 0i), _wgslsmith_add_u32(var_2, 0u)), -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 49932i)), -27535i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(1u) | _wgslsmith_add_u32(var_2, 4294967295u)) ^ ~min(1u, 1u), vec3<i32>(u_input.a.x, 0i, -17291i) >> (~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_2, 1u), vec3<u32>(0u, var_2, var_2)) % vec3<u32>(32u)), -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(9281i, u_input.a.x, u_input.a.x, u_input.a.x)), select(-u_input.a, -vec4<i32>(u_input.a.x, 0i, -1i, 1i), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)))), var_2);
}

