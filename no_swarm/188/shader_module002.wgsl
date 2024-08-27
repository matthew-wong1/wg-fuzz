struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = true;
    var var_1 = !vec3<bool>(true, all(vec3<bool>(true, true, true)), true);
    var_0 = true;
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(1u >> (_wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(arg_0, arg_1, 72822u) << (u_input.a % vec3<u32>(32u))) % 32u), _wgslsmith_mod_u32(4294967295u, u_input.c), ~countOneBits(~4985u), abs(52406u)), vec4<u32>(arg_0, arg_0, _wgslsmith_dot_vec4_u32(min(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0, arg_1, arg_1), vec4<u32>(24245u, 4294967295u, 35835u, 54047u)), vec4<u32>(1u, u_input.a.x, 61727u, arg_0)), (vec4<u32>(0u, u_input.c, arg_1, 25969u) >> (vec4<u32>(arg_1, u_input.a.x, u_input.c, 4294967295u) % vec4<u32>(32u))) | abs(vec4<u32>(89365u, 0u, 1u, arg_1))), _wgslsmith_div_u32(1u, 16577u)));
    var_1 = vec3<bool>(((all(vec3<bool>(var_1.x, true, var_1.x)) && false) != select(false, var_1.x, u_input.b > 1i)) || (1i >= -u_input.b), true, var_1.x);
    return ~(~_wgslsmith_dot_vec4_u32(~(var_2 ^ vec4<u32>(0u, arg_0, 70088u, arg_1)), firstLeadingBit(vec4<u32>(4294967295u, arg_0, 25566u, 14660u)) | var_2));
}

fn func_2() -> i32 {
    var var_0 = 0u;
    var_0 = 8944u;
    var_0 = func_3(u_input.c, abs(~_wgslsmith_mult_u32(u_input.c, 1u)));
    let var_1 = countOneBits(~129698u);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(723f, 220f)), _wgslsmith_f_op_f32(sign(375f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(298f, _wgslsmith_f_op_f32(step(1067f, 1355f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(892f)))), -1542f), vec4<f32>(1f, 1f, 1f, 1f), u_input.a);
    return _wgslsmith_sub_i32(-34193i, (0i ^ _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b, u_input.b, 9625i, -30494i), vec4<i32>(u_input.b, -1i, 27126i, u_input.b)), vec4<i32>(u_input.b, 0i, u_input.b, 8271i) ^ vec4<i32>(620i, u_input.b, u_input.b, u_input.b))) << (_wgslsmith_clamp_u32(abs(select(4294967295u, 4294967295u, false)), min(25998u, _wgslsmith_clamp_u32(38458u, u_input.a.x, u_input.a.x)), select(4294967295u, 6809u, false) << (40094u % 32u)) % 32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = firstLeadingBit(u_input.a) >> (abs(vec3<u32>(_wgslsmith_sub_u32(~1u, 48098u), abs(u_input.c), ~func_3(6377u, 7649u))) % vec3<u32>(32u));
    var var_1 = Struct_4(Struct_2(!(!arg_1.x) && all(!vec4<bool>(true, arg_1.x, false, false)), abs(16685u)), true, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-787f)) * _wgslsmith_f_op_f32(step(-766f, 1309f))), -382f, _wgslsmith_f_op_f32(select(149f, _wgslsmith_f_op_f32(-234f + -1728f), all(arg_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1179f)), _wgslsmith_f_op_f32(ceil(-1281f)), -1689f, _wgslsmith_f_op_f32(-1141f - 1061f))), abs(~firstLeadingBit(u_input.a))), vec3<bool>(arg_1.x, all(arg_1.yy), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1020f, _wgslsmith_f_op_f32(f32(-1f) * -1101f)))) * -981f));
    let var_2 = 0i;
    let var_3 = Struct_2(any(select(vec4<bool>(arg_1.x, all(vec3<bool>(true, arg_1.x, false)), any(var_1.d.yy), var_1.b), !vec4<bool>(true, arg_1.x, var_1.d.x, true), !vec4<bool>(var_1.d.x, var_1.b, false, false))), 25508u | ~u_input.a.x);
    var var_4 = Struct_5(abs(max(~(~91661u), var_3.b)), arg_1.yx, var_1.c.b.wyy, var_1.c.c.zx, Struct_3(Struct_2(false, _wgslsmith_div_u32(~var_0.x, 61158u))));
    return vec2<bool>(true, true);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_5) -> u32 {
    var var_0 = 4294967295u;
    let var_1 = func_4(vec2<i32>(abs(u_input.b), func_2()) ^ (countOneBits(vec2<i32>(-7553i, -29491i) | vec2<i32>(u_input.b, 55760i)) & _wgslsmith_div_vec2_i32(vec2<i32>(0i, 23455i) >> (arg_1.d % vec2<u32>(32u)), -vec2<i32>(u_input.b, u_input.b))), vec3<bool>(!all(select(vec4<bool>(true, arg_1.b.x, arg_1.b.x, false), vec4<bool>(true, arg_1.e.a.a, arg_1.b.x, arg_1.e.a.a), vec4<bool>(arg_1.e.a.a, arg_1.e.a.a, false, true))), false, arg_1.b.x && any(!vec3<bool>(arg_1.b.x, arg_1.e.a.a, false))));
    let var_2 = vec3<i32>(-1i, -1i, select(u_input.b, u_input.b, false));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(arg_1.c.yy)), vec2<f32>(-157f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.x, 1058f), -637f)), arg_0.x != u_input.a.x));
    var var_4 = true;
    return _wgslsmith_mod_u32(arg_1.e.a.b, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(func_1(vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x), Struct_5(u_input.c, vec2<bool>(false, true), vec3<f32>(-1000f, 203f, -1092f), u_input.a.yx, Struct_3(Struct_2(false, u_input.c)))) < _wgslsmith_mod_u32(2629u, 68u), true, abs(u_input.b) <= ~0i, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)))));
    let var_1 = !func_4(-min(countOneBits(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(21530i, u_input.b) >> (u_input.a.xx % vec2<u32>(32u))), !var_0.wyx).x;
    var_0 = select(vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.x, var_1), true)) | var_1, var_0.x, !var_1, any(var_0.xw)), select(vec4<bool>(var_0.x, all(vec2<bool>(true, var_1)) & var_0.x, true, true), !select(!vec4<bool>(var_1, var_0.x, false, true), select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, var_1, var_1, false), vec4<bool>(true, var_1, true, true)), true || var_1), vec4<bool>(select(true, var_0.x, var_0.x), reverseBits(0i) > u_input.b, !(true && var_0.x), true)), func_4(-vec2<i32>(max(10514i, u_input.b), ~u_input.b), !var_0.wxw).x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(firstTrailingBit(vec4<i32>(u_input.b, u_input.b, -25051i, u_input.b)) << (vec4<u32>(u_input.a.x, 4294967295u, 0u, 10993u) % vec4<u32>(32u)))));
}

