struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    return all(!(!select(!arg_1, vec4<bool>(true, false, false, false), true)));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(func_3(arg_0, !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), Struct_1(!(u_input.a.x != 1i)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(340f * var_0), _wgslsmith_f_op_f32(-206f - -663f)), -971f, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), -1160f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(460f + -669f), arg_0, arg_0, -979f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -128f, var_0, -1000f)))))));
    var_1 = Struct_1(false);
    var_1 = Struct_1(!any(vec3<bool>(true, true, true)));
    return var_0;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(min(30858i, 2147483647i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), _wgslsmith_sub_i32(~u_input.a.x, i32(-1i) * -88831i)) == u_input.a.x);
    let var_1 = !vec2<bool>(all(!(!vec3<bool>(var_0.a, var_0.a, var_0.a))), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-239f, -817f, 373f, 1226f), vec4<f32>(384f, -686f, -2537f, -1102f))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(328f)), _wgslsmith_f_op_f32(func_2(781f)), _wgslsmith_f_op_f32(f32(-1f) * -1127f), _wgslsmith_f_op_f32(trunc(455f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, -1000f, -293f, -513f)))))));
    let var_3 = firstLeadingBit(-2147483647i);
    var var_4 = select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~abs(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_mod_u32(abs(17458u), ~abs(2827u)), var_1.x | var_1.x);
    return Struct_1(var_1.x != all(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<u32>) -> i32 {
    var var_0 = arg_0;
    var var_1 = !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2)), -1410f, _wgslsmith_f_op_f32(782f * arg_2) != -304f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(512f * arg_2))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, arg_2, arg_0.a)))));
    let var_2 = func_1();
    var var_3 = Struct_1(false);
    var var_4 = countOneBits(u_input.a.x);
    return reverseBits(23745i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x & u_input.a.x;
    var_0 = min(u_input.a.x, func_4(func_1(), -select(min(u_input.a.wyx, vec3<i32>(-81906i, -2147483647i, 0i)), abs(vec3<i32>(0i, -22255i, 5733i)), u_input.a.x == u_input.a.x), 895f, ~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(59065u, 6138u), vec2<u32>(56085u, 1208u)), select(1211u, 1u, true), _wgslsmith_sub_u32(59541u, 18057u))));
    let x = u_input.a;
    s_output = StorageBuffer(~25300i, u_input.a.x, 1u, firstTrailingBit(4294967295u), vec2<u32>(_wgslsmith_mod_u32(~min(36297u, 35446u), 1u), firstLeadingBit(0u)));
}

