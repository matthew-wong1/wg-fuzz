struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = -1242f;
    var var_1 = select(!(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true)), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), !all(vec4<bool>(false, false, false, true))), select(vec3<bool>(true, true, any(vec4<bool>(true, false, false, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), true), true);
    var_0 = _wgslsmith_f_op_f32(-201f - 499f);
    var_1 = !(!(!select(!vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(var_1.x, false, true))));
    var var_2 = ~(~(-33825i));
    return abs(_wgslsmith_mult_i32(-_wgslsmith_div_i32(1i, i32(-1i) * -2147483647i), u_input.c));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = !(!(!vec2<bool>(false, u_input.c > 18117i)));
    var var_1 = Struct_1(vec3<i32>(u_input.c, func_3(countOneBits(arg_0)), 0i), var_0.x, reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 94830u, arg_0), vec3<u32>(33172u, 0u, 72268u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(arg_0, 65334u, arg_0))), ~vec3<u32>(4294967295u, 36668u, u_input.a))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(52472u, arg_0), vec2<u32>(u_input.b, arg_0)) & ~vec2<u32>(1u, 16864u), vec2<u32>(1u, abs(0u))) ^ vec2<u32>(3823u, arg_0), ~(_wgslsmith_add_u32(arg_0 | 31401u, 19153u & u_input.a) ^ arg_0));
    var var_2 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(~select(var_1.d, var_1.c.zx, vec2<bool>(var_0.x, false)), ~(var_1.d ^ var_1.c.yx)), u_input.a);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -265f), 697f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f) * _wgslsmith_f_op_f32(trunc(1822f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1000f, -1904f, 1806f), vec4<f32>(-718f, -1179f, 1000f, -2226f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 752f, -2790f, 1434f), vec4<f32>(-713f, -1174f, -1394f, 890f), vec4<bool>(var_0.x, var_1.b, var_1.b, true))), select(vec4<bool>(var_1.b, var_0.x, var_0.x, var_1.b), vec4<bool>(false, var_1.b, false, true), true)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f) + _wgslsmith_f_op_f32(max(-1000f, 928f))), _wgslsmith_f_op_f32(max(1825f, _wgslsmith_f_op_f32(ceil(-2252f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(339f * 1255f), _wgslsmith_f_op_f32(min(1228f, 396f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1690f))));
    global0 = -662f;
    return Struct_2(Struct_1(vec3<i32>(_wgslsmith_mod_i32(-10306i, u_input.d.x), _wgslsmith_clamp_i32(-21295i, 37732i, var_1.a.x), -22150i) >> (~(var_1.c | var_1.c) % vec3<u32>(32u)), !(true && var_1.b), var_1.c, ~vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13173u, arg_0), var_1.c)), _wgslsmith_dot_vec2_u32(abs(var_1.c.xy | vec2<u32>(u_input.a, u_input.a)), var_1.d >> (~var_1.c.zy % vec2<u32>(32u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1682f, -155f)) + -1618f)))), var_0.x, ~vec4<u32>(max(0u, arg_0), 1u, 1u, 0u) & ~abs(vec4<u32>(3016u, arg_0, 4711u, 94712u) ^ vec4<u32>(var_1.d.x, 34525u, 4294967295u, 4294967295u)), Struct_1(vec3<i32>(countOneBits(u_input.d.x), ~(~53183i), _wgslsmith_add_i32(_wgslsmith_add_i32(0i, 1i), func_3(52281u))), false, vec3<u32>(_wgslsmith_clamp_u32(abs(100959u), 0u, 4294967295u), var_1.c.x, ~u_input.b), vec2<u32>(0u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(18632u, var_1.d.x), vec2<u32>(u_input.a, 4294967295u)))), var_1.e));
}

fn func_1(arg_0: i32) -> Struct_2 {
    return func_2(_wgslsmith_sub_u32(abs(firstLeadingBit(_wgslsmith_mod_u32(u_input.b, 1u))), _wgslsmith_clamp_u32(~u_input.a, ~_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), ~u_input.a)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    return func_2(firstLeadingBit(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1206f, -616f)), _wgslsmith_f_op_f32(f32(-1f) * -1478f)))))), func_1(-2147483647i));
    var var_1 = var_0;
    let var_2 = Struct_2(var_1.a, 2720f, !var_1.a.b, vec4<u32>(func_4(1u <= ~var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(Struct_1(vec3<i32>(u_input.c, var_1.e.a.x, 3196i), false, vec3<u32>(var_0.a.d.x, var_1.d.x, var_0.d.x), vec2<u32>(var_0.e.d.x, u_input.a), 1u), var_0.b, true, var_1.d, Struct_1(var_0.e.a, true, vec3<u32>(1u, 80299u, u_input.a), vec2<u32>(31515u, u_input.b), var_0.e.d.x))).a.c.x, _wgslsmith_add_u32(countOneBits(var_0.a.e) >> (var_1.d.x % 32u), var_1.e.c.x), var_0.a.d.x, 4294967295u), func_1(u_input.c >> (func_2(4294967295u).d.x % 32u)).a);
    let var_3 = var_0.b;
    var var_4 = func_2(u_input.b).e.b & var_0.c;
    var var_5 = min(1u, ~countOneBits(~(~1u)));
    var var_6 = func_2(46995u).a.c.x;
    var_1 = func_1(max(2147483647i, -1i));
    let var_7 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-275f, -1987f), vec2<f32>(var_3, var_1.b)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b, -506f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3, var_2.b), vec2<f32>(var_1.b, var_0.b), true)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-var_3)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1147f, var_2.b)))))), vec2<f32>(var_2.b, -127f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_7, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.b)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3, var_1.b), var_7))))))));
}

