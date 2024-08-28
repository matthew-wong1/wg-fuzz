struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> i32 {
    return ~52760i;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> vec4<f32> {
    var var_0 = 20723i;
    var_0 = firstTrailingBit(-(~(-28225i)));
    var_0 = countOneBits(func_3(!any(vec4<bool>(true, arg_0, arg_0, true)) || !(!arg_0)));
    let var_1 = Struct_1(all(vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0))), arg_0)), true, ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(1u, 38319u)), vec2<u32>(1u, 1u)));
    var_0 = u_input.a;
    return vec4<f32>(_wgslsmith_f_op_f32(round(-148f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))) + arg_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-1143f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(340f, -1359f, true))))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.x, arg_1.x)))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2.x), vec2<u32>(63554u, arg_2.x)) < firstLeadingBit(4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2475f, -1212f)))), vec4<f32>(1f, 1f, 1f, 1f)), -36714i, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(351f)))) != _wgslsmith_f_op_f32(-508f - -713f), -1i >= (i32(-1i) * -u_input.a), _wgslsmith_clamp_vec2_u32(min(arg_2.yz, arg_2.zy), _wgslsmith_mult_vec2_u32(arg_2.xy, arg_2.zz) ^ (arg_2.xy << (vec2<u32>(105287u, 0u) % vec2<u32>(32u))), arg_2.xy)), ~32345u);
    var var_1 = Struct_1(var_0.c.a, any(vec3<bool>(true, false, !arg_1.x)), _wgslsmith_mod_vec2_u32(~(~max(var_0.c.c, arg_2.xx)), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.xx, arg_2.xy, ~vec2<u32>(72854u, 4294967295u)), vec2<u32>(arg_2.x, arg_2.x), select(~vec2<u32>(1u, var_0.d), ~var_0.c.c, all(arg_1)))));
    let var_2 = abs(~vec3<i32>(func_3(arg_1.x), 29373i << (arg_2.x % 32u), -9074i)) | vec3<i32>(~(i32(-1i) * -2147483647i), -_wgslsmith_add_i32(~var_0.b, i32(-1i) * -2147483647i), var_0.b);
    let var_3 = _wgslsmith_dot_vec2_i32(~u_input.b, u_input.b);
    var_1 = Struct_1(false | any(!arg_1.zy), arg_1.x, var_0.c.c);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~1u), !vec3<bool>(true, true, select(true, true, true)), ~select(vec3<u32>(firstTrailingBit(4294967295u), 1u, 1u), ~(~vec3<u32>(45983u, 20365u, 91930u)), vec3<bool>(true, true, true)));
    var_0 = func_1(9677u, !vec3<bool>(true, !var_0.c.b, true), ~(~abs(~vec3<u32>(var_0.d, var_0.c.c.x, var_0.c.c.x))));
    var var_1 = _wgslsmith_sub_u32(var_0.c.c.x, ~1u);
    let var_2 = !vec3<bool>(true, !(var_0.c.c.x >= 0u), all(!(!vec2<bool>(var_0.c.a, var_0.c.a))));
    var var_3 = -16573i;
    var_3 = 0i;
    var var_4 = vec2<i32>(1i >> (~(_wgslsmith_sub_u32(var_0.c.c.x, var_0.c.c.x) & ~4294967295u) % 32u), -var_0.b | 1i);
    let var_5 = 212f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.c.c, var_0.c.c), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.d, ~var_0.c.c.x), var_0.c.c)));
}

