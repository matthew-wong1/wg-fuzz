struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: bool) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * 377f)))))) - arg_1.a.b.d);
}

fn func_2() -> Struct_5 {
    return Struct_5(Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(987f + -733f), _wgslsmith_f_op_f32(func_3(vec2<f32>(-2200f, -1648f), Struct_5(Struct_3(vec2<f32>(-228f, -560f), Struct_2(vec2<u32>(22824u, 13076u), u_input.a, Struct_1(false, vec3<f32>(-168f, 1274f, 1172f), vec4<f32>(1316f, -604f, -1419f, -217f), u_input.a, u_input.a), -752f, vec2<i32>(u_input.c.x, -1i))), Struct_4(10429u, vec2<u32>(u_input.a, u_input.a), u_input.c, 602f)), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-146f, 358f) - vec2<f32>(-216f, 568f)) + vec2<f32>(1000f, 1000f))), Struct_2(vec2<u32>(_wgslsmith_mult_u32(14151u, u_input.a), u_input.a | u_input.a), 24524u, Struct_1(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-635f, -284f, 917f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1768f, -334f, -1228f, -666f) - vec4<f32>(-279f, -1132f, -680f, 138f)), u_input.a, select(9653u, 27655u, false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(503f - -398f))), u_input.c.zx)), Struct_4(u_input.a, max(~(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 7260u)), firstLeadingBit(~vec2<u32>(u_input.a, 0u))), u_input.d.xyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1465f)))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: f32, arg_3: u32) -> Struct_5 {
    var var_0 = func_2();
    let var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.yx, u_input.d.xy), -2147483647i) | vec2<i32>(select(u_input.c.x, arg_1.x, var_0.a.b.c.a), max(10394i, var_0.b.c.x)), vec2<i32>(_wgslsmith_clamp_i32(2147483647i, ~(-23481i), -1i), _wgslsmith_div_i32(arg_1.x, max(1i, u_input.c.x))));
    var_0 = Struct_5(var_0.a, func_2().b);
    var_0 = func_2();
    var var_2 = func_2().a;
    return func_2();
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5) -> vec4<bool> {
    let var_0 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-661f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f + _wgslsmith_f_op_f32(func_3(vec2<f32>(arg_1.b.d, -525f), arg_1, arg_1.a.b.c.a))) - arg_1.b.d)), -953f);
    let var_1 = !arg_1.a.b.c.a;
    var var_2 = vec4<u32>(min(~(abs(u_input.a) ^ 1u), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1.b.a, arg_1.a.b.b), ~0u)), u_input.a, min(1u, _wgslsmith_clamp_u32(~(arg_1.a.b.c.e << (arg_1.b.b.x % 32u)), arg_1.b.b.x, _wgslsmith_dot_vec2_u32(arg_1.b.b, countOneBits(vec2<u32>(35092u, arg_1.a.b.a.x))))), ~_wgslsmith_mod_u32(1u, ~(~arg_1.a.b.a.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zz));
    var var_4 = arg_1.a.b;
    return select(!(!vec4<bool>(var_1, false, var_1 | var_4.c.a, false)), !vec4<bool>(!var_4.c.a, countOneBits(55464i) > _wgslsmith_add_i32(arg_1.a.b.e.x, arg_1.a.b.e.x), var_4.c.c.x <= _wgslsmith_f_op_f32(var_4.c.c.x + 902f), _wgslsmith_f_op_f32(-var_0.x) > -1930f), ~firstTrailingBit(_wgslsmith_mult_u32(arg_1.a.b.c.d, var_2.x)) <= firstTrailingBit(select(var_4.b, 1u, false) ^ func_2().b.b.x));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_2(~(vec2<u32>(~21170u, select(3987u, u_input.a, arg_2.x)) ^ vec2<u32>(~u_input.a, ~u_input.a)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(func_1(Struct_4(1u, vec2<u32>(u_input.a, u_input.a), vec3<i32>(-34801i, u_input.b, 61192i), -353f), u_input.d, 598f, 26455u).a.b.c.d, _wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 6195u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))), vec3<u32>(firstTrailingBit(u_input.a), u_input.a, firstTrailingBit(4294967295u))), _wgslsmith_clamp_u32(u_input.a, 4294967295u ^ ~u_input.a, 12048u)), func_1(Struct_4(u_input.a, vec2<u32>(1u, 1u), firstLeadingBit(-vec3<i32>(u_input.b, u_input.d.x, u_input.d.x)), 1f), ~firstLeadingBit(-vec4<i32>(-5374i, u_input.d.x, -78231i, 0i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-312f, 972f), Struct_5(Struct_3(vec2<f32>(1189f, 505f), Struct_2(vec2<u32>(u_input.a, 1u), 1u, Struct_1(true, vec3<f32>(-114f, 797f, 1243f), vec4<f32>(121f, -204f, -1883f, 1034f), u_input.a, 1u), -1000f, vec2<i32>(0i, u_input.d.x))), Struct_4(1u, vec2<u32>(2186u, u_input.a), vec3<i32>(u_input.b, u_input.b, 7879i), 1071f)), arg_0))))), 6378u).a.b.c, _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(173f - -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-443f, 851f))))), vec2<i32>(1i, u_input.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(-var_0.c.c.wwx);
    let var_2 = !(!arg_1.xy);
    var var_3 = u_input.d;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_4(19709u, var_0.a, u_input.d.yyw, var_0.d), u_input.d, var_1.x, 53492u).a.b.c.c.wy - var_0.c.c.xy), vec2<f32>(_wgslsmith_f_op_f32(-236f - 1885f), _wgslsmith_f_op_f32(min(var_0.d, -1329f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_4.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1098f)), _wgslsmith_f_op_f32(round(934f)), true))))) - _wgslsmith_f_op_f32(f32(-1f) * -1321f));
    let var_1 = u_input.d.wy;
    var var_2 = _wgslsmith_f_op_f32(step(1199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(337f, -452f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0)) - _wgslsmith_f_op_f32(func_5(all(vec4<bool>(true, false, false, true)), func_4(vec3<f32>(var_0, -799f, -2008f), func_1(Struct_4(126686u, vec2<u32>(47463u, u_input.a), vec3<i32>(0i, u_input.c.x, 2147483647i), -240f), vec4<i32>(u_input.c.x, var_1.x, u_input.b, 0i), -455f, u_input.a)), vec4<bool>(true, true, true, true))))));
    let var_3 = func_1(func_2().b, -(~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 0i, -50084i, u_input.b), u_input.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_1.x, var_1.x, u_input.b), u_input.d, u_input.d))), _wgslsmith_f_op_f32(func_5(true, vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), func_4(vec3<f32>(var_0, var_0, -1000f), Struct_5(Struct_3(vec2<f32>(-149f, -1000f), Struct_2(vec2<u32>(u_input.a, u_input.a), 5935u, Struct_1(false, vec3<f32>(1008f, 1348f, var_0), vec4<f32>(1232f, var_0, var_0, -956f), u_input.a, u_input.a), var_0, vec2<i32>(var_1.x, -1i))), Struct_4(19171u, vec2<u32>(u_input.a, u_input.a), vec3<i32>(u_input.c.x, var_1.x, u_input.c.x), var_0))), vec4<bool>(true, true, true, true)))), func_1(func_1(func_1(func_2().b, firstLeadingBit(vec4<i32>(-2147483647i, u_input.b, var_1.x, 2147483647i)), _wgslsmith_f_op_f32(var_0 * 1162f), 0u).b, vec4<i32>(var_1.x, i32(-1i) * -16248i, var_1.x, countOneBits(u_input.b)), 1271f, abs(u_input.a)).b, u_input.d, var_0, 16765u).b.a);
    let var_4 = func_2().a.b.e.x;
    var var_5 = func_4(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1000f)))), -1269f, var_3.a.a.x), func_2()).yzy;
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) - -1254f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-142f))))), var_0));
    let var_6 = func_2().a;
    let var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(-2147483647i) | (var_4 ^ _wgslsmith_mult_i32(var_6.b.e.x, var_1.x)), var_4), var_7.b.e.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -1788f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-695f, -729f))) * var_7.b.c.c.yz), var_3, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-var_3.a.b.c.b.x)), var_7.b.e.x);
}

