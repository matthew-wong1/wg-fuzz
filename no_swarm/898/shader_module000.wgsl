struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(min(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(-2147483647i, 1i, abs(0i), ~countOneBits(2147483647i))), ~2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~max(vec4<i32>(2147483647i, -1i, 22269i, -1i), vec4<i32>(2147483647i, 11846i, -1i, 2147483647i)), vec4<i32>(2147483647i, 27362i, -1i, -2147483647i) << (~vec4<u32>(u_input.a, 0u, u_input.a, 1u) % vec4<u32>(32u))), 44757i), _wgslsmith_dot_vec4_i32(reverseBits(countOneBits(vec4<i32>(-2147483647i, 0i, -1i, -2147483647i)) ^ select(vec4<i32>(2147483647i, -1i, -9997i, 5643i), vec4<i32>(0i, 15955i, -2147483647i, -1i), true)), ~(~abs(vec4<i32>(-43195i, -2258i, 0i, 16178i)))));
    var var_1 = select(-101587i, _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.x, -_wgslsmith_sub_i32(var_0.x, 15855i)), -52027i), 16843u <= _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u) << (vec3<u32>(u_input.a, u_input.a, 83356u) % vec3<u32>(32u)), select(vec3<u32>(1797u, u_input.a, u_input.a), vec3<u32>(88485u, 0u, 0u), vec3<bool>(false, true, false))), (vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 17992u, u_input.a) % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.a, 0u, u_input.a)));
    let var_2 = Struct_1(false, 2384f, max(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(max(u_input.a, 57371u), ~u_input.a, 30154u)) ^ select(~vec3<u32>(0u, 1u, 1u), vec3<u32>(u_input.a, u_input.a, 1u) ^ reverseBits(vec3<u32>(6683u, 0u, 0u)), vec3<bool>(true, true, true)), select(vec4<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), true, all(vec2<bool>(true, true))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)), true), vec4<bool>(all(vec2<bool>(true, true)), select(false, true, false) & true, true | all(vec2<bool>(true, true)), true)));
    let var_3 = var_2.c;
    var_0 = vec4<i32>(-_wgslsmith_add_i32(-4996i, 0i), _wgslsmith_sub_i32(~var_0.x, 0i), firstTrailingBit(var_0.x), max(abs(~_wgslsmith_div_i32(50387i, var_0.x)), ~var_0.x | -var_0.x));
    return var_3.x > 0u;
}

fn func_2(arg_0: vec2<u32>) -> bool {
    var var_0 = Struct_1(!(!any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1088f - 2144f)), _wgslsmith_f_op_f32(-502f + -1391f))), abs(~(vec3<u32>(arg_0.x, 1u, 4294967295u) ^ ~vec3<u32>(u_input.a, 81312u, u_input.a))), !vec4<bool>(func_3() && any(vec4<bool>(true, false, true, true)), func_3(), true, true));
    let var_1 = Struct_1(true, -818f, firstLeadingBit(var_0.c) | vec3<u32>(343u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), arg_0)), arg_0.x), select(!(!(!var_0.d)), vec4<bool>(false, all(vec4<bool>(false, true, true, var_0.d.x)) || true, all(select(var_0.d.yx, vec2<bool>(true, false), var_0.a)), true), func_3() != all(select(var_0.d.wy, var_0.d.xw, vec2<bool>(var_0.a, false)))));
    var_0 = var_1;
    var_0 = Struct_1(var_1.d.x, var_1.b, vec3<u32>(81512u, 0u, abs(var_1.c.x & 17987u)), !(!select(var_1.d, vec4<bool>(false, true, var_1.d.x, var_0.a), var_0.d.x)));
    var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + var_1.b)))))), max(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(80523u, u_input.a, var_1.c.x) | vec3<u32>(var_1.c.x, 15441u, var_1.c.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, 4294967295u), vec3<u32>(u_input.a, arg_0.x, 1u), var_0.c)), vec3<u32>(~u_input.a, 1u, 155910u)), ~_wgslsmith_add_vec3_u32(var_0.c, vec3<u32>(var_0.c.x, 245u, 0u)) ^ abs(abs(var_0.c))), select(vec4<bool>(var_0.a, true, var_1.a, func_3()), vec4<bool>(true, var_1.a, all(!vec4<bool>(var_1.a, var_0.d.x, var_0.d.x, var_1.d.x)), var_0.a), any(select(var_1.d, !var_0.d, vec4<bool>(var_1.d.x, false, false, true)))));
    return var_0.a;
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = !select(!vec3<bool>(true, any(vec4<bool>(false, false, true, false)), all(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, all(vec2<bool>(true, false)))), func_2((vec2<u32>(1u, arg_0) & vec2<u32>(0u, u_input.a)) ^ (vec2<u32>(1u, 4294967295u) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))));
    var var_1 = var_0.x;
    return vec3<u32>(countOneBits(21965u), _wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, u_input.a, 4294967295u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(57984u, arg_0, u_input.a), vec3<u32>(u_input.a, 0u, 0u)))), 53229u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(92778u, u_input.a, 0u) >> (vec3<u32>(4294967295u, u_input.a, 53369u) % vec3<u32>(32u)), ~vec3<u32>(9087u, u_input.a, 0u)) >> (func_1(13960u) % vec3<u32>(32u)), vec3<u32>(1u, 15524u, 4294967295u & u_input.a) | min(max(vec3<u32>(u_input.a, 42046u, 66244u), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(6570u, u_input.a, 0u))), ~_wgslsmith_mult_u32(4294967295u, 1u), 4294967295u, ~u_input.a << (abs(0u) % 32u));
    let var_1 = Struct_1(((1u | (0u << (u_input.a % 32u))) << (_wgslsmith_dot_vec3_u32(~var_0.wxz, vec3<u32>(u_input.a, u_input.a, 27561u)) % 32u)) > firstLeadingBit(~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-218f - _wgslsmith_f_op_f32(abs(-1546f)))) * -1187f), var_0.zyy, !vec4<bool>(true, false, !func_3(), false));
    let var_2 = var_1;
    var var_3 = -1325f == _wgslsmith_f_op_f32(min(var_2.b, _wgslsmith_f_op_f32(trunc(var_1.b))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -244f);
    var_3 = false;
    var var_5 = var_1.c.x;
    let var_6 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(397f, _wgslsmith_f_op_f32(min(var_2.b, var_2.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.b, -1144f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(step(var_1.b, var_2.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.b, 717f), vec2<f32>(var_1.b, -1109f))))), !vec2<bool>(false, !var_1.a))), vec2<bool>(false, var_2.a)));
    var var_7 = Struct_1(false, _wgslsmith_f_op_f32(trunc(841f)), var_1.c, select(select(var_1.d, vec4<bool>(var_1.d.x, false, var_1.a, true), !var_2.a && true), select(select(var_1.d, !var_1.d, select(var_2.d, var_2.d, var_2.d)), vec4<bool>(!var_2.a, var_1.a, !var_2.d.x, func_2(vec2<u32>(var_1.c.x, 0u))), select(!vec4<bool>(var_2.a, var_1.a, true, true), select(vec4<bool>(false, var_1.d.x, false, var_1.a), vec4<bool>(var_2.d.x, var_2.a, var_2.d.x, true), vec4<bool>(false, true, var_1.a, true)), var_1.d)), false));
    let x = u_input.a;
    s_output = StorageBuffer(~1i);
}

