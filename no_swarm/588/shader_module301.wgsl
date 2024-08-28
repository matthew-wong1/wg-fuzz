struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = -max(~(~vec2<i32>(-2147483647i, u_input.a) << (~vec2<u32>(321u, 6021u) % vec2<u32>(32u))), -_wgslsmith_clamp_vec2_i32(vec2<i32>(65422i, u_input.a), vec2<i32>(1i, u_input.a), abs(vec2<i32>(1i, u_input.a))));
    var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 58830i), vec2<i32>(0i, var_0.x)) << (4294967295u % 32u)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-2147483647i, var_0.x))), vec2<i32>(u_input.a, 1i));
    let var_1 = _wgslsmith_f_op_f32(round(-539f));
    var_0 = -(select(~(-vec2<i32>(var_0.x, -21467i)), vec2<i32>(1i, 6891i) ^ firstTrailingBit(vec2<i32>(-1i, 1i)), vec2<bool>(true, 55478u > u_input.c)) & vec2<i32>(0i, ~var_0.x | 1i));
    var var_2 = Struct_2(2235f, vec4<bool>(true, true, true, any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(-var_1)), var_1, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1, 980f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-644f, var_1, -1315f), vec3<f32>(162f, var_1, 1000f))))), vec3<f32>(-1572f, _wgslsmith_f_op_f32(ceil(var_1)), var_1))), var_0.x);
    return select(select(!select(select(var_2.b, var_2.b, true), var_2.b, !vec4<bool>(var_2.b.x, true, true, false)), var_2.b, vec4<bool>(all(select(var_2.b.yx, vec2<bool>(true, var_2.b.x), var_2.b.xy)), (u_input.b << (6842u % 32u)) <= u_input.b, any(!var_2.b), !var_2.b.x && var_2.b.x)), !vec4<bool>(!(!var_2.b.x), !(!var_2.b.x), var_2.b.x, ~u_input.b != ~u_input.c), var_2.b.x);
}

fn func_2() -> f32 {
    var var_0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -271f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-303f, -1130f), _wgslsmith_div_f32(-1000f, -424f)))), select(func_3(), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), func_3()), true), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-383f + -320f), _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-285f)) * _wgslsmith_f_op_f32(-782f * 1082f)), -174f))), ~u_input.a);
    let var_2 = !any(!var_1.b.xx);
    let var_3 = var_1.c;
    var var_4 = Struct_1(35677i, var_1.b, !var_1.b.wwy, false, var_1.b.yz);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-346f, 1000f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.x * -295f)))))));
}

fn func_4(arg_0: f32) -> Struct_2 {
    let var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - _wgslsmith_f_op_f32(func_2())), _wgslsmith_div_f32(_wgslsmith_div_f32(456f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-arg_0)));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(-select(vec2<i32>(0i, u_input.a), vec2<i32>(43704i, u_input.a), true) | abs(vec2<i32>(-2147483647i, -4380i)), firstLeadingBit(firstLeadingBit(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))))), !func_3(), vec3<bool>(true, true, true), true, vec2<bool>(((2950i >> (u_input.d % 32u)) == countOneBits(1i)) | true, false));
    let var_2 = _wgslsmith_clamp_u32(u_input.c, u_input.d, _wgslsmith_mod_u32(u_input.c, 10227u));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1804f)), var_1.b, vec3<f32>(_wgslsmith_f_op_f32(arg_0 + 288f), var_0.x, -998f), _wgslsmith_mod_i32(-1i, 2147483647i));
    var var_4 = 4294967295u & var_2;
    return var_3;
}

fn func_1() -> Struct_2 {
    let var_0 = countOneBits(~0i);
    let var_1 = 1i;
    let var_2 = true;
    let var_3 = func_4(_wgslsmith_f_op_f32(func_2()));
    let var_4 = _wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_f32(select(var_3.c.x, 661f, !select(false, true, true)))).c.x);
    return Struct_2(var_4, func_3(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-970f * var_4), _wgslsmith_f_op_f32(var_4 * 1080f), _wgslsmith_f_op_f32(-var_4)) - vec3<f32>(_wgslsmith_f_op_f32(ceil(var_3.c.x)), var_3.a, _wgslsmith_f_op_f32(round(1072f))))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!all(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true, true, any(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), false)));
    let var_1 = func_1();
    var var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.x - var_1.a), _wgslsmith_f_op_f32(-var_1.c.x)))));
    let var_3 = var_1;
    var var_4 = false;
    var var_5 = _wgslsmith_f_op_vec3_f32(floor(var_2.c));
    let var_6 = ~(~_wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_1.d, var_1.d, u_input.a, 2147483647i), vec4<i32>(2147483647i, var_3.d, var_3.d, var_1.d) >> (vec4<u32>(1u, 0u, u_input.c, 47117u) % vec4<u32>(32u))), vec4<i32>(-63899i, u_input.a, 1i, -1i) | select(vec4<i32>(var_1.d, -2147483647i, -3738i, u_input.a), vec4<i32>(1i, var_2.d, 75128i, -13303i), true), vec4<i32>(var_2.d, abs(var_1.d), u_input.a, -2147483647i)));
    let var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i, -2147483647i) & reverseBits(var_7.d), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_6.x, u_input.a, 2147483647i), ~vec4<i32>(-28146i, u_input.a, var_6.x, 2147483647i)), max(-4035i, -2147483647i)), var_3.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_5.x, 1426f, var_5.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, var_5.x, var_7.a, var_5.x))))))), vec3<f32>(var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_7.c.x), var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))));
}

