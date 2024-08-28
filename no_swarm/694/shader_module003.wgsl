struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-1863f, 679f, 1562f, -343f), vec4<f32>(409f, 173f, -1043f, 2080f), vec4<f32>(1058f, 941f, 253f, -778f), vec4<f32>(1397f, -842f, -2091f, 701f), vec4<f32>(1813f, 923f, -1395f, 1280f), vec4<f32>(-560f, 1091f, -1000f, 1000f), vec4<f32>(463f, 1000f, 389f, -1353f), vec4<f32>(-393f, -1000f, 328f, -288f), vec4<f32>(1790f, 2303f, -803f, 1613f), vec4<f32>(944f, -1364f, 172f, -537f), vec4<f32>(-1239f, -1971f, -1000f, -320f), vec4<f32>(1422f, -695f, 1000f, 544f), vec4<f32>(446f, -939f, -931f, -1943f), vec4<f32>(-173f, 1278f, -1918f, 298f), vec4<f32>(1896f, 469f, -181f, 239f), vec4<f32>(-1517f, -754f, 885f, 1562f), vec4<f32>(-593f, 1773f, -773f, -1649f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global0 = min(4294967295u, u_input.b.x);
    global1 = Struct_1(true);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -423f)))))), -1000f);
    global2 = array<vec4<f32>, 17>();
    var var_1 = firstLeadingBit(u_input.a.yzz);
    return !(!vec4<bool>(_wgslsmith_div_u32(u_input.b.x, u_input.e) < u_input.c.x, global1.a, arg_0.a, global1.a));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<u32> {
    global0 = max(max(abs(~(~u_input.c.x)), ~u_input.e), u_input.e);
    global2 = array<vec4<f32>, 17>();
    let var_0 = Struct_1(false);
    let var_1 = 2147483647i;
    return select(_wgslsmith_sub_vec3_u32(u_input.c, u_input.b), ~u_input.b, u_input.a.x >= var_1) ^ vec3<u32>(1u, reverseBits(31485u), u_input.e);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~max(select(func_4(func_3(Struct_1(false)), arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(1228f, 161f) - vec2<f32>(514f, 371f))), _wgslsmith_div_vec3_u32(~u_input.b, vec3<u32>(u_input.b.x, 1u, u_input.e)), ~(-2147483647i) != u_input.a.x), countOneBits(abs(_wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(395u, u_input.b.x, 4294967295u)))));
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(u_input.e, ~_wgslsmith_mult_u32(var_0.x, firstLeadingBit(u_input.e)), _wgslsmith_mod_u32(~var_0.x, 1164u)), countOneBits(min(_wgslsmith_mult_u32(1u, 4294967295u), 1u)), 27879u);
    let var_2 = -1451f;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, 510f, -313f), vec3<f32>(1000f, var_2, -890f), arg_0.a)))), vec3<f32>(_wgslsmith_f_op_f32(549f * _wgslsmith_f_op_f32(-var_2)), -1000f, var_2))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(561f, 922f, var_2))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2, var_2, var_2), vec3<f32>(141f, -224f, var_2)))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1127f, var_2, -719f)))), vec3<f32>(var_2, _wgslsmith_f_op_f32(288f * 222f), -145f))));
    var var_4 = u_input.a.ywx;
    return arg_0;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(global1.a);
    var var_1 = firstLeadingBit(-_wgslsmith_add_vec3_i32(-u_input.a.zxy, -u_input.a.xyx));
    var_1 = ~vec3<i32>(u_input.a.x, var_1.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, var_1.x) << (4294967295u % 32u), reverseBits(-33995i)));
    var var_2 = vec4<u32>(0u, _wgslsmith_sub_u32(u_input.b.x, 86589u), ~(~0u), u_input.e);
    global1 = func_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, 46585i, 27161i), u_input.a) > var_1.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1391f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(149f)) * _wgslsmith_f_op_f32(f32(-1f) * -255f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(363f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 2236f) - _wgslsmith_f_op_f32(abs(-2210f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-586f, _wgslsmith_div_f32(1707f, 520f))), _wgslsmith_f_op_f32(-531f - 1490f))), -120f), !((_wgslsmith_mod_u32(u_input.b.x, 0u) > (4294967295u | u_input.b.x)) && !(true | global1.a))));
    let var_1 = false;
    let var_2 = ~1u;
    let var_3 = func_2(Struct_1(var_1 || !any(vec3<bool>(var_1, false, false))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, 100f), _wgslsmith_f_op_f32(exp2(var_0)));
    global1 = func_2(var_3);
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(!(!vec4<bool>(var_3.a, true, true, false)), Struct_1(all(select(vec4<bool>(var_1, false, var_1, global1.a), vec4<bool>(global1.a, var_1, true, false), global1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_4) - vec2<f32>(var_0, var_0))))).x, 6392i, countOneBits(39118i), 8181i, u_input.a.zwz);
}

