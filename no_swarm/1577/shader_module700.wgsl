struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    var var_0 = u_input.c.x;
    var_0 = u_input.a;
    let var_1 = Struct_1(-1822f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -1958f))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-168f)))))), 30900u, u_input.d.x);
    let var_2 = _wgslsmith_mod_u32(~32059u, ~_wgslsmith_mod_u32(7544u, ~_wgslsmith_div_u32(arg_0.x, var_1.c)));
    let var_3 = _wgslsmith_clamp_i32(0i, ~(-1i), u_input.a);
    return _wgslsmith_div_f32(var_1.b.x, -261f);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    global1 = select(vec2<bool>(true, !any(vec2<bool>(true, global1.x))), vec2<bool>(true, true), u_input.c.x <= (abs(-u_input.a) ^ u_input.a));
    global1 = !vec2<bool>(true, global1.x);
    var var_0 = arg_0;
    var var_1 = arg_1.zy;
    global0 = array<vec3<u32>, 16>();
    return Struct_1(833f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -304f, var_1.x, _wgslsmith_f_op_f32(arg_1.x + var_1.x)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(max(-426f, var_1.x)), _wgslsmith_f_op_f32(select(arg_0, 432f, true))), true || (u_input.b.x == 28536u))))), reverseBits(u_input.e), 0u);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec4<bool>) -> f32 {
    global0 = array<vec3<u32>, 16>();
    var var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) + _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-658f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, global1.x)))), _wgslsmith_f_op_f32(func_2(~arg_0, arg_0.x >> (125153u % 32u), select(arg_0.xx, vec2<u32>(arg_0.x, 1u), arg_2.zz)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1, vec3<f32>(2317f, -598f, arg_1.x)) * vec3<f32>(arg_1.x, 1000f, arg_1.x)) * vec3<f32>(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(round(arg_1.x)), -2376f))));
    let var_1 = global1.x;
    var var_2 = _wgslsmith_div_vec4_f32(var_0.b, var_0.b);
    let var_3 = ~(min(firstLeadingBit(max(vec2<u32>(var_0.d, arg_0.x), vec2<u32>(var_0.d, var_0.c))), vec2<u32>(var_0.d, var_0.d) ^ u_input.d.xx) | ~min(u_input.b.zx, arg_0.wz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * var_0.b.x) + -1000f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), var_0.a))))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = ~(-u_input.c) ^ u_input.c;
    var var_1 = _wgslsmith_f_op_f32(func_2(~firstLeadingBit(_wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, 43850u, u_input.b.x, 12997u)), ~vec4<u32>(u_input.b.x, 20867u, u_input.b.x, 63300u))), 28063u, ~vec2<u32>(~u_input.d.x, 4171u)));
    let var_2 = func_3(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-513f, -347f, _wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.www) * vec3<f32>(601f, arg_0.x, 194f)), global1.x))));
    var var_3 = vec3<i32>(var_0.x, ~(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -11752i), vec2<i32>(-51576i, -47278i)))), abs(reverseBits(-47465i)));
    var var_4 = any(select(vec4<bool>(all(vec2<bool>(global1.x, false)), global1.x, true, all(vec3<bool>(global1.x, global1.x, global1.x))), select(select(vec4<bool>(global1.x, true, global1.x, global1.x), !vec4<bool>(false, global1.x, global1.x, true), select(global1.x, true, global1.x)), !(!vec4<bool>(true, global1.x, global1.x, global1.x)), all(vec4<bool>(true, false, false, true))), true));
    return func_3(_wgslsmith_f_op_f32(-arg_0.x), arg_0.wwz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(2147483647i);
    var var_1 = vec2<bool>(global1.x, any(vec4<bool>(true, !any(vec3<bool>(global1.x, false, true)), !all(vec4<bool>(global1.x, global1.x, true, false)), select(global1.x, global1.x, global1.x) & (false & global1.x))));
    var var_2 = _wgslsmith_sub_i32(u_input.c.x, ~(~((u_input.c.x | u_input.c.x) >> (1u % 32u))));
    let var_3 = func_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.e, u_input.d.x, u_input.d.x, 9906u), vec3<f32>(-677f, -1186f, 1104f), vec4<bool>(true, true, false, var_1.x))) + -106f), _wgslsmith_f_op_f32(ceil(1000f)), func_3(_wgslsmith_f_op_f32(-577f + 1448f), vec3<f32>(539f, 510f, -580f)).b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec4<u32>(35780u, 1u, 12949u, u_input.e), u_input.b.x, u_input.b.yx)), _wgslsmith_div_f32(546f, -468f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1331f, 885f, 1400f, 1000f), vec4<f32>(165f, -1000f, 680f, 146f))), vec4<f32>(343f, 745f, -1014f, -943f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(429f, -223f, 802f, -1732f) - vec4<f32>(452f, -1618f, -1000f, 2553f))))))));
    var var_4 = Struct_2(abs(_wgslsmith_add_vec2_u32(firstLeadingBit(u_input.d.zx & u_input.d.zz), u_input.d.xz)), vec4<bool>(all(vec2<bool>(true, true)), true, !(any(vec3<bool>(false, global1.x, var_1.x)) || !global1.x), all(!vec4<bool>(global1.x, true, true, false))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-703f)), -171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.a)) + -217f))), ~_wgslsmith_mult_vec2_u32(u_input.d.xx, u_input.b.xy), select(vec3<bool>(-2147483647i > u_input.c.x, false, !var_1.x), select(vec3<bool>(false, global1.x & false, true), vec3<bool>(true, !var_1.x, global1.x), all(!vec4<bool>(global1.x, false, true, true))), select(!vec3<bool>(var_1.x, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, global1.x), true), vec3<bool>(false, false, global1.x))));
    var_0 = u_input.a << (~u_input.d.x % 32u);
    let var_5 = _wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(var_3.c, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, var_3.d, u_input.b.x), vec4<u32>(33520u, var_4.a.x, var_3.d, 4294967295u)), reverseBits(vec4<u32>(4532u, 77257u, 0u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(104f, var_4.c.a), var_3.b.ww, abs(~(~vec2<u32>(var_5, u_input.d.x))) >> (~(u_input.b.yz ^ var_4.d) % vec2<u32>(32u)));
}

