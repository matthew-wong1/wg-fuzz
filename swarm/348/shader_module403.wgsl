struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = vec2<i32>(-(-45202i >> (~u_input.b % 32u)), i32(-1i) * -(i32(-1i) * -1i));
    let var_1 = !vec2<bool>(all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), true);
    var_0 = vec2<i32>(-1i) * -(vec2<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a), var_0.x) >> (abs(~vec2<u32>(u_input.b, 4294967295u)) % vec2<u32>(32u)));
    var var_2 = Struct_1(max(vec3<u32>(u_input.b, _wgslsmith_mod_u32(34364u, 36883u), 1u), select(reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.b)), ~vec3<u32>(1u, u_input.b, u_input.b), vec3<bool>(false, var_1.x, var_1.x))) & vec3<u32>(~min(0u, u_input.b), ~firstTrailingBit(u_input.b), u_input.b & _wgslsmith_mult_u32(u_input.b, 4294967295u)));
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), reverseBits(vec3<u32>(u_input.b, 18363u, 25696u))), ~82649u, 4294967295u));
    return !select(select(select(select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(true, true, false, var_1.x), vec4<bool>(false, false, true, true)), vec4<bool>(var_1.x, true, false, false), var_1.x), !vec4<bool>(true, true, var_1.x, var_1.x), true), !select(vec4<bool>(var_1.x, true, var_1.x, true), select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), false), !select(select(vec4<bool>(true, false, true, var_1.x), vec4<bool>(false, var_1.x, true, true), false), vec4<bool>(var_1.x, false, false, true), select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    let var_1 = arg_3;
    let var_2 = -2147483647i;
    let var_3 = vec2<bool>(all(func_3()), true);
    var var_4 = var_1.a.x;
    return arg_3.a.x;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_u32(reverseBits(arg_3.a.x), ~arg_2.a.x);
    var_0 = u_input.b;
    var_0 = ~(92289u ^ func_2(_wgslsmith_mod_vec2_u32(arg_2.a.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.a.x, arg_1.x), vec2<u32>(arg_2.a.x, 0u), vec2<u32>(4294967295u, arg_3.a.x))), _wgslsmith_mult_vec2_u32(arg_2.a.xx, arg_3.a.yy), true, Struct_1(~vec3<u32>(1u, arg_3.a.x, arg_1.x))));
    var var_1 = arg_2;
    var_0 = u_input.b;
    return _wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.a, 0i) & min(~_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-28998i, u_input.a)), -(~vec2<i32>(1i, -1i))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(arg_0, -62027i)), vec2<i32>(4826i, u_input.a) << (vec2<u32>(4294967295u, arg_2.a.x) % vec2<u32>(32u)))), -(~vec2<i32>(u_input.a, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a & u_input.a, u_input.a, -countOneBits(u_input.a)) ^ vec3<i32>(u_input.a, _wgslsmith_sub_i32(-u_input.a, -2147483647i) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -9104i) | vec2<i32>(2147483647i, -8406i), func_1(-1i, vec4<u32>(u_input.b, u_input.b, u_input.b, 23756u), Struct_1(vec3<u32>(u_input.b, 15746u, 5366u)), Struct_1(vec3<u32>(8718u, u_input.b, 4294967295u)))), func_1(-u_input.a, vec4<u32>(u_input.b, countOneBits(u_input.b), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(39774u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))), Struct_1(abs(vec3<u32>(u_input.b, 4294967295u, 21554u))), Struct_1(~vec3<u32>(u_input.b, 0u, 33262u))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(604f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(581f)), _wgslsmith_f_op_f32(f32(-1f) * -1330f), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)))))), -var_0.yy, 12501u, u_input.a);
}

