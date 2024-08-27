struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    let var_0 = !select(vec3<bool>(true, _wgslsmith_sub_u32(u_input.d, 49074u) < _wgslsmith_div_u32(u_input.d, 1u), !(u_input.a == 0u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)));
    var var_1 = true;
    var_1 = !any(!vec4<bool>(true, var_0.x, false, true));
    let var_2 = (((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(1u, 1u)) | u_input.d) << (select(u_input.a, u_input.d, var_0.x) % 32u)) | (u_input.d | _wgslsmith_sub_u32(u_input.a, u_input.d))) >= 4294967295u;
    let var_3 = u_input.b.x | _wgslsmith_add_i32(1i >> (u_input.a % 32u), abs(u_input.c.x) ^ (abs(-2147483647i) << ((u_input.a | 39569u) % 32u)));
    return vec2<bool>(true, false);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<bool>) -> vec4<i32> {
    let var_0 = any(select(vec2<bool>(arg_0.x, true), !arg_0.zw, !func_3()));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(1608f)), _wgslsmith_f_op_f32(trunc(-816f)))))));
    var var_2 = !vec2<bool>(func_3().x, select(true, !(arg_0.x || arg_0.x), false));
    var_2 = arg_2;
    var_2 = func_3();
    return u_input.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -583f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(619f, var_0))))), arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-arg_0.b.x))) - arg_1.a), arg_0.a);
    let var_2 = -arg_2;
    var var_3 = false;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    return var_2.x;
}

fn func_5(arg_0: bool, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1306f, 1499f) - _wgslsmith_f_op_f32(ceil(-848f))) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-630f - -1000f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 716f, 1755f))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1018f + _wgslsmith_div_f32(288f, 682f))));
    var var_2 = select(true && !(!(!arg_0)), var_0.a > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, false)) * -1000f))), !(min(u_input.d, arg_1.x) == 0u));
    var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1328f + var_1.a)))))));
    var var_3 = abs(vec4<u32>(max(_wgslsmith_mod_u32(arg_1.x, u_input.d), firstTrailingBit(15673u)), arg_1.x, firstLeadingBit(~0u), 0u) | ~(~vec4<u32>(arg_1.x, 25083u, 4294967295u, 10919u)));
    return Struct_2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b * var_0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1495f, var_1.a, var_1.a) * vec3<f32>(1805f, var_0.a, 720f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -1000f, -549f)) + _wgslsmith_f_op_vec3_f32(-var_0.b))))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = -max(u_input.c.zx, u_input.b.xz);
    return func_5(func_4(Struct_2(1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -672f, -627f))), arg_0, func_2(vec4<bool>(true, true, true, true), countOneBits(u_input.b.x), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), 346f) == -(min(u_input.b.x, -21043i) >> (_wgslsmith_add_u32(u_input.d, 1u) % 32u)), firstTrailingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.d), ~vec3<u32>(u_input.a, u_input.d, 36967u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1095f + -266f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(851f * -1542f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-467f + 956f)))))) - -962f);
    var var_1 = 33093u;
    let var_2 = u_input.c.x;
    var var_3 = 0u;
    let var_4 = func_1(Struct_1(_wgslsmith_f_op_f32(round(1415f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~41071u, 21126u, u_input.a, ~(~u_input.a) & reverseBits(57616u)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_4.a + _wgslsmith_div_f32(858f, var_4.b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_4.b.x)), _wgslsmith_div_f32(-411f, _wgslsmith_f_op_f32(var_4.a - var_4.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1274f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2091f, -294f, true)))), var_4.a), -_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), select(vec3<i32>(_wgslsmith_mult_i32(abs(-23807i), 1i), abs(~u_input.b.x), 0i), u_input.b.yzy, func_3().x));
}

