struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = Struct_1(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_div_f32(-503f, 1151f)), arg_1.e, _wgslsmith_dot_vec2_i32(arg_1.d.yz, min(~arg_1.d.yy >> (vec2<u32>(40740u, u_input.a) % vec2<u32>(32u)), vec2<i32>(arg_1.c, _wgslsmith_mod_i32(arg_1.e, arg_1.e)))), ~vec3<i32>(-(arg_1.e << (u_input.a % 32u)), arg_1.b, select(arg_1.b, arg_1.e, true)), ~(~(-2147483647i)));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2022f, -1978f, _wgslsmith_f_op_f32(-arg_2.x), -173f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(164f, 101f, arg_1.a.x, var_0.a.x) + vec4<f32>(594f, -1000f, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(828f, var_0.a.x, arg_1.a.x, arg_1.a.x)))))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1212f, _wgslsmith_f_op_f32(step(-180f, var_0.a.x)), -1135f))))), var_0.b << (~(~(u_input.a & 1u)) % 32u), _wgslsmith_clamp_i32(arg_1.c, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~var_0.d.zy, ~arg_1.d.zy), vec2<i32>(max(66512i, 0i), arg_1.c)), -var_0.e), arg_1.d, _wgslsmith_mod_i32(~65768i, -2147483647i));
    var var_4 = var_3.d.x;
    return select(var_0.d, _wgslsmith_clamp_vec3_i32(var_3.d, select(vec3<i32>(select(var_3.d.x, var_3.c, false), _wgslsmith_clamp_i32(2147483647i, -31030i, -31479i), 2147483647i), _wgslsmith_div_vec3_i32(var_0.d ^ var_3.d, _wgslsmith_mult_vec3_i32(vec3<i32>(34322i, var_3.c, 51331i), var_3.d)), arg_0.x && any(vec4<bool>(true, arg_0.x, false, arg_0.x))), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(var_0.d, vec3<i32>(2147483647i, var_3.e, -2147483647i))), select(!select(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(true, false, arg_0.x), arg_0.x), !vec3<bool>(false, arg_0.x, arg_0.x), any(arg_0)), !(!select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x))), !(!select(vec3<bool>(false, true, true), vec3<bool>(arg_0.x, true, false), vec3<bool>(false, arg_0.x, false)))));
}

fn func_2() -> vec3<f32> {
    let var_0 = !vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true, true);
    let var_1 = var_0;
    var var_2 = ~(~(_wgslsmith_mod_u32(u_input.a, 62576u) >> (u_input.a % 32u)) ^ ~(_wgslsmith_sub_u32(u_input.a, u_input.a) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, 3630u), vec4<u32>(19565u, 25348u, 24103u, 1u))));
    var_2 = u_input.a | u_input.a;
    var var_3 = ~func_3(vec2<bool>(true, true), Struct_1(vec3<f32>(346f, 1000f, -1970f), 103662i, 0i, ~vec3<i32>(-37283i, -29140i, 0i), ~(-20613i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, -846f)))) << (~vec3<u32>(21553u, u_input.a, ~max(0u, u_input.a)) % vec3<u32>(32u));
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -1217f), _wgslsmith_f_op_f32(round(-602f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1465f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f * _wgslsmith_f_op_f32(sign(346f)))))));
}

fn func_1() -> f32 {
    let var_0 = vec2<u32>(min(_wgslsmith_sub_u32(~(~u_input.a), u_input.a), 39997u), firstLeadingBit(_wgslsmith_sub_u32(u_input.a << (u_input.a % 32u), 3334u)));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()))), 51421i, abs(58490i), vec3<i32>(firstTrailingBit(-(i32(-1i) * -2147483647i)), firstLeadingBit(0i) & firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-65280i, 1i), vec2<i32>(0i, -16339i))), -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-1i, 11369i), 17041i), vec2<i32>(firstTrailingBit(-1i), ~(-1i))));
    var var_2 = _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-457f + _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2()))))), -var_1.b, var_1.e, var_1.d, _wgslsmith_dot_vec2_i32(var_1.d.xy, var_1.d.xx));
    var var_4 = -_wgslsmith_sub_i32(-1i, 47664i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(ceil(1940f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(671f, -627f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-713f, _wgslsmith_f_op_f32(ceil(-1766f))))), vec2<f32>(_wgslsmith_f_op_f32(max(225f, _wgslsmith_f_op_f32(f32(-1f) * -710f))), 1651f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-622f * 2284f) + -393f)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1499f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))));
    let var_3 = false;
    let var_4 = -700f;
    let var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2333f, -2059f, -573f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, 783f, 646f) + vec3<f32>(var_2.x, 436f, -1000f))))), select(-select(_wgslsmith_mult_i32(1i, 62848i), _wgslsmith_dot_vec4_i32(vec4<i32>(10564i, -32428i, -60065i, 0i), vec4<i32>(-427i, -1i, -14847i, 0i)), true), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, _wgslsmith_clamp_i32(2147483647i, 48301i, 0i), _wgslsmith_sub_i32(32926i, 8274i)), ~max(vec4<i32>(-2147483647i, -44992i, -50863i, -1i), vec4<i32>(-2147483647i, 29125i, 2147483647i, -38039i))), false), 1i >> ((_wgslsmith_sub_u32(75089u, 53989u & var_0) >> (var_0 % 32u)) % 32u), ~func_3(!vec2<bool>(var_3, false), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(535f, var_2.x, var_4) - vec3<f32>(var_2.x, 1267f, var_2.x)), 32354i, firstLeadingBit(1i), vec3<i32>(-65516i, -2147483647i, 0i), select(2147483647i, 2147483647i, false)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1176f, 339f)))))), 1i);
    var var_6 = _wgslsmith_f_op_f32(-1247f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - -1555f));
    var_6 = var_2.x;
    var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1376f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, countOneBits(var_5.d.zy), _wgslsmith_add_u32(u_input.a, ~select(28014u, ~40183u, any(vec3<bool>(var_3, true, false)))), var_5.d.xx, 13040u);
}

