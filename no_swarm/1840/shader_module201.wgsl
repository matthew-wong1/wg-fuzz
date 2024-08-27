struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-975f, 628f, arg_0.a, arg_0.a), vec4<f32>(arg_0.a, -1158f, arg_0.a, -3374f)), vec4<f32>(-366f, 253f, arg_0.a, arg_0.a)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, 2863f, arg_0.a, arg_0.a), vec4<f32>(arg_0.a, arg_0.a, 581f, arg_0.a)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, arg_0.a, arg_0.a, 1332f)))))))) * vec4<f32>(arg_0.a, arg_0.a, 1f, arg_0.a));
    let var_1 = _wgslsmith_add_vec3_i32((vec3<i32>(_wgslsmith_mult_i32(arg_0.d.x, 9178i), -2147483647i, -u_input.a) & -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, arg_0.d.x, 2147483647i), vec3<i32>(23143i, -2147483647i, u_input.a), arg_0.d)) | vec3<i32>(1i, -reverseBits(-21873i), u_input.a), ~((~vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(arg_0.d.x, arg_0.d.x, -2147483647i)) | arg_0.d));
    var var_2 = _wgslsmith_clamp_vec2_i32(~arg_0.d.yz, arg_0.d.xy, vec2<i32>(19125i, -max(~var_1.x, arg_0.d.x)));
    var_2 = var_1.xy;
    let var_3 = true;
    return arg_0;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = u_input.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + arg_0.a));
    global0 = _wgslsmith_f_op_f32(step(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(510f))))));
    global0 = _wgslsmith_f_op_f32(select(arg_2.a, 437f, arg_1.x));
    var var_1 = vec2<bool>(false, arg_1.x);
    return arg_1;
}

fn func_3() -> bool {
    let var_0 = ~max(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1089u, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(14842u, 0u))), vec2<u32>(~u_input.b, ~u_input.b)), ~(~vec2<u32>(78874u, u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1057f, 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-425f * 1648f))))));
    global0 = _wgslsmith_f_op_f32(1928f * _wgslsmith_f_op_f32(f32(-1f) * -192f));
    var var_2 = !(!vec2<bool>(!any(vec3<bool>(true, true, false)), false));
    var_2 = !vec2<bool>(true, true || (1u < max(12902u, var_0.x)));
    return !(!func_2(func_1(Struct_2(-748f, 14499u, 39061u, vec3<i32>(u_input.a, 75439i, -1523i))), vec4<bool>(!var_2.x, func_2(Struct_2(-1175f, var_0.x, var_0.x, vec3<i32>(-1i, u_input.a, u_input.a)), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), Struct_2(1027f, u_input.b, var_0.x, vec3<i32>(10633i, u_input.a, u_input.a))).x, !var_2.x, false), func_1(Struct_2(-1000f, var_0.x, 4294967295u, vec3<i32>(42109i, -2147483647i, u_input.a)))).x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_0 = all(vec4<bool>(_wgslsmith_sub_u32(u_input.b, ~u_input.b) >= u_input.b, all(func_2(func_1(Struct_2(-728f, 10094u, u_input.b, vec3<i32>(2147483647i, -1i, u_input.a))), vec4<bool>(false, false, false, true), func_1(Struct_2(336f, u_input.b, 1u, vec3<i32>(-1i, 1i, -38179i))))), true, !func_3()));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(min(1i, -1i), (u_input.a ^ 2147483647i) >> (u_input.b % 32u), -1i, ~1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 2147483647i, -19789i)), ~select(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a) << (vec4<u32>(u_input.b, 7462u, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.a, u_input.a, 26663i), false)));
}

