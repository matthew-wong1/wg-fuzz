struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = vec2<u32>(arg_0.b, ~_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_sub_u32(arg_0.b, 4294967295u)), arg_0.b));
    var_0 = max(_wgslsmith_div_vec2_u32(min(vec2<u32>(6774u, ~4294967295u), abs(vec2<u32>(73230u, 9668u))), firstTrailingBit(min(~vec2<u32>(arg_0.b, arg_2.b), reverseBits(vec2<u32>(0u, 1u))))), ~(~vec2<u32>(1u, u_input.c | var_0.x)));
    var var_1 = _wgslsmith_add_vec2_u32(~firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 37278u), vec2<u32>(u_input.c, 4294967295u))), vec2<u32>(_wgslsmith_add_u32(countOneBits(4294967295u & var_0.x), min(firstLeadingBit(var_0.x), ~55146u)), var_0.x));
    var_1 = ~(~select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, var_0.x), vec2<u32>(arg_2.b, 113040u)), ~vec2<u32>(4294967295u, arg_2.b), vec2<bool>(false, arg_1.a))) >> (abs(vec2<u32>(_wgslsmith_clamp_u32(arg_0.b, 42369u, u_input.c) >> (~arg_1.b.b % 32u), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, arg_1.b.b, 0u), vec3<u32>(4294967295u, 57767u, u_input.c))))) % vec2<u32>(32u));
    let var_2 = -2147483647i ^ -_wgslsmith_sub_i32(u_input.b.x, min(2147483647i, countOneBits(2147483647i)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-693f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_1.b.a.x), _wgslsmith_f_op_f32(min(arg_1.b.a.x, arg_0.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-588f, -1301f, arg_2.a.x, -444f))) - arg_2.a)), vec4<f32>(_wgslsmith_div_f32(-1111f, 1589f), _wgslsmith_f_op_f32(f32(-1f) * -286f), -248f, _wgslsmith_div_f32(arg_1.b.a.x, _wgslsmith_f_op_f32(1780f - arg_0.a.x))))) + vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1328f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -905f), arg_0.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> i32 {
    let var_0 = vec4<bool>(arg_0.a, all(vec4<bool>(false, -710f <= _wgslsmith_f_op_f32(-938f * arg_0.b.a.x), _wgslsmith_f_op_f32(arg_2.b.a.x + arg_2.b.a.x) <= _wgslsmith_f_op_f32(arg_2.b.a.x + arg_0.b.a.x), any(select(vec4<bool>(true, arg_1.x, arg_0.a, true), vec4<bool>(true, true, true, arg_0.a), arg_0.c)))), any(vec2<bool>(any(vec4<bool>(false, arg_1.x, true, arg_1.x)), any(!arg_1))), arg_1.x);
    let var_1 = arg_0;
    var var_2 = var_1.b;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.a.x, var_2.a.x) + var_2.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-348f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -138f))), _wgslsmith_f_op_f32(var_1.b.a.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_2.b.a.x)), arg_0.b.a.x))))), var_2.a.x);
    var_2 = arg_2.b;
    return _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 19242i, 1i, -32679i), u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(35582i, 0i, u_input.a, -1i), vec4<i32>(u_input.a, 2147483647i, 1i, -6343i), u_input.b)), u_input.b ^ u_input.b), vec4<i32>(i32(-1i) * -1i, -1i, u_input.a, _wgslsmith_sub_i32(1i, abs(~(-21919i)))));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = ~(-u_input.a | 2147483647i) | func_4(Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(236f, -534f, -662f, 899f), 1u), Struct_2(arg_0, Struct_1(vec4<f32>(-175f, -166f, -1792f, -782f), 0u), true), Struct_1(vec4<f32>(-1106f, -856f, 833f, -427f), u_input.c))), _wgslsmith_div_u32(u_input.c, 0u)), 1f == _wgslsmith_f_op_f32(sign(-762f))), select(!(!vec2<bool>(arg_0, true)), vec2<bool>(all(vec3<bool>(arg_0, false, true)), true), true), Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(331f, -518f, 1067f, 551f) * vec4<f32>(-632f, 279f, 2626f, 934f)), ~1u), false));
    var var_1 = true;
    var var_2 = 1u;
    var_1 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1182f, -721f), -652f))))));
    return ~var_0;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = vec2<i32>((func_2(any(vec4<bool>(true, true, false, true))) | firstTrailingBit(0i << (u_input.c % 32u))) << (~_wgslsmith_mod_u32(~71921u, 1u) % 32u), -34152i);
    var_0 = _wgslsmith_mult_vec2_i32(u_input.b.wz, abs(vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b.yxw), -u_input.b.yxx), _wgslsmith_dot_vec4_i32(-u_input.b, -u_input.b))));
    var_0 = _wgslsmith_sub_vec2_i32(-vec2<i32>(abs(1i), ~u_input.a) << (~max(arg_2, abs(vec2<u32>(arg_2.x, u_input.c))) % vec2<u32>(32u)), vec2<i32>(u_input.b.x, max(max(-27351i, ~arg_1), func_4(Struct_2(true, Struct_1(vec4<f32>(-678f, 436f, -1049f, 2218f), 0u), true), vec2<bool>(true, true), Struct_2(false, Struct_1(vec4<f32>(1064f, 145f, 1000f, 946f), 1u), false)))));
    var_0 = -vec2<i32>(firstLeadingBit(-(~(-4509i))), countOneBits(5219i));
    let var_1 = vec4<u32>(~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2.x, 25461u), ~u_input.c)), select(46572u, _wgslsmith_mod_u32(arg_0.x << (1u % 32u), ~arg_0.x), !any(vec2<bool>(true, true))), reverseBits(arg_2.x << (~u_input.c % 32u)) << (4294967295u % 32u), ~arg_0.x);
    return !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, _wgslsmith_f_op_f32(1014f * 620f), _wgslsmith_f_op_f32(step(-537f, 1085f)), -1405f)), u_input.c), any(func_1(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(4294967295u, u_input.c, 0u))), -u_input.a, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 1u))))));
    let var_1 = Struct_2(var_0.b.b <= ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 0u)), vec2<u32>(u_input.c, 1u) << (vec2<u32>(u_input.c, var_0.b.b) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(1172f * -1985f), 266f, 669f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.b.a - vec4<f32>(var_0.b.a.x, -1000f, -1000f, -1000f)))))), ~_wgslsmith_clamp_u32(~u_input.c, 6347u, 8079u)), var_0.c);
    var_0 = var_1;
    var var_2 = 38666u;
    let var_3 = Struct_2(var_0.c, var_0.b, false);
    let var_4 = var_0.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.yy), _wgslsmith_mod_i32(-2147483647i, 7420i)), -6445i, firstLeadingBit(vec2<u32>(countOneBits(var_0.b.b) & ~u_input.c, ~40542u)), var_0.b.a.x, u_input.b.ww);
}

