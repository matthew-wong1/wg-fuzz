struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x * _wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(round(arg_2.c.x)))));
    var_0 = _wgslsmith_f_op_f32(-arg_2.c.x);
    var_0 = _wgslsmith_f_op_f32(ceil(-321f));
    let var_1 = Struct_4(vec4<u32>(11741u, 1u, reverseBits(arg_1.x), u_input.a));
    var var_2 = Struct_3(arg_2.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-761f, var_2.a))))), var_2.a)));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<i32>(-7446i, 24169i, 0i, -1i), vec3<u32>(40888u, u_input.a, u_input.a), Struct_1(vec3<bool>(false, false, false), vec4<i32>(-37754i, 0i, 1i, 83558i), vec2<f32>(321f, arg_0), true, 2147483647i))), _wgslsmith_f_op_f32(arg_0 - arg_0), 1000f))) - vec3<f32>(498f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -3250f))), _wgslsmith_f_op_f32(sign(arg_0))), arg_0));
    return arg_0;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> i32 {
    var var_0 = vec4<u32>(95537u, ~u_input.a, 13443u, arg_1.x);
    let var_1 = Struct_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec3<bool>(true, true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(-1i), ~(-30839i), i32(-1i) * -1i), countOneBits(-vec3<i32>(1i, 9214i, 0i))), 1i, _wgslsmith_mod_i32(-1i, 54715i), select(1i << (_wgslsmith_div_u32(0u, 1u) % 32u), 3839i, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-641f, 1015f), vec2<f32>(-106f, arg_0.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -1674f) - vec2<f32>(arg_0.a, -737f)))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.a + arg_0.a))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_1(-859f)), _wgslsmith_f_op_f32(max(arg_0.a, 1373f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1148f, arg_0.a))) + vec2<f32>(271f, arg_0.a))))), !select(true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), false), 2147483647i);
    var var_2 = _wgslsmith_sub_u32(var_0.x, arg_1.x);
    var var_3 = select(select(!var_1.a.yy, select(!var_1.a.xy, var_1.a.zz, any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.d, false, var_1.d), true))), var_1.a.xz), !(!var_1.a.xz), select(!select(select(var_1.a.yx, vec2<bool>(var_1.a.x, true), true), select(var_1.a.xy, vec2<bool>(false, var_1.d), var_1.a.x), -7276i <= var_1.e), var_1.a.yx, var_1.a.xy));
    let var_4 = var_1.e;
    return _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_4, var_4) | vec2<i32>(var_4, -18984i), var_1.b.xy | var_1.b.wz), ~var_1.b.ww)), ~var_1.b.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(Struct_3(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(186f, -822f, true)), 1000f))))), vec3<u32>(u_input.a, ~u_input.a, _wgslsmith_mult_u32(27699u >> (max(u_input.a, u_input.a) % 32u), _wgslsmith_div_u32(select(u_input.a, u_input.a, true), 12164u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1811f, -869f, 369f, -822f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1068f, 320f, -400f, -598f))) + vec4<f32>(-293f, _wgslsmith_f_op_f32(-1000f - -630f), _wgslsmith_f_op_f32(func_1(219f)), _wgslsmith_f_op_f32(func_1(2688f))))));
    var var_2 = true;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, -1668f))), -938f, var_1.x) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1405f, -363f, var_1.x)))), vec3<f32>(var_1.x, var_1.x, 2298f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1640f * var_1.x))), -491f, var_1.x))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1f)))) * _wgslsmith_f_op_f32(-var_1.x)));
    let var_5 = select(0u, u_input.a, true);
    let var_6 = 4294967295u << ((var_5 << (var_5 % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(13481i, var_1);
}

