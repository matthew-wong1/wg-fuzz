struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(1i, 0i, -14479i, -33571i, i32(-2147483648), i32(-2147483648), -19979i, -6526i, -49413i, -1i, 9375i, 2147483647i, -29942i, 5657i, -51176i, 11835i, 0i, 2147483647i, -39616i, -4034i, -28540i, 0i, -55576i, 0i, 10422i, 0i, -109607i, -1i, i32(-2147483648), i32(-2147483648));

var<private> global1: vec3<u32> = vec3<u32>(11936u, 0u, 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> bool {
    return arg_3.b;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = Struct_1(0i, !func_3(_wgslsmith_div_vec2_u32(global1.xz, max(global1.zy, vec2<u32>(global1.x, u_input.c))), u_input.b.x | select(arg_1.a, u_input.b.x, arg_1.b), u_input.a.x, Struct_1(select(14245i, u_input.a.x, arg_0.b), true, !arg_0.c)), arg_1.c);
    return Struct_1(-49973i, !(~30582u >= u_input.c), !arg_1.c);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global0 = array<i32, 30>();
    var var_0 = arg_1;
    var var_1 = u_input.b.xw;
    var_0 = Struct_1(20180i, false, vec3<bool>(all(vec2<bool>(true, true)), all(!arg_1.c), false));
    var var_2 = func_2(arg_1, arg_1);
    return Struct_1(countOneBits(firstLeadingBit(_wgslsmith_dot_vec3_i32(-u_input.b.xzw, u_input.b.wwz))), 27253i != ~(-u_input.b.x), vec3<bool>(var_0.b, true, !all(vec2<bool>(arg_1.b, true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = countOneBits(~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, global1.x, 55697u), vec4<u32>(global1.x, 0u, u_input.c, 1u)), ~(~96215u), u_input.c));
    global0 = array<i32, 30>();
    let var_0 = _wgslsmith_mod_u32(global1.x >> (select(u_input.c, global1.x, false) % 32u), u_input.c);
    global0 = array<i32, 30>();
    let var_1 = Struct_1(-2147483647i, func_3(global1.xx, _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, arg_1.a) | global0[_wgslsmith_index_u32(var_0, 30u)], _wgslsmith_add_i32(-26935i, -393i)), max(countOneBits(1i), 15937i >> (u_input.c % 32u)) ^ 33337i, func_1(1u, func_1(_wgslsmith_add_u32(global1.x, 1u), Struct_1(u_input.b.x, false, arg_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-591f, arg_2, arg_2, arg_2) - vec4<f32>(arg_2, arg_2, arg_2, 544f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), 1000f, arg_2, _wgslsmith_f_op_f32(-arg_2)))), arg_0.c);
    return func_1(var_0, func_1(1u, func_1(0u, func_2(func_1(0u, Struct_1(arg_0.a, arg_1.b, vec3<bool>(arg_0.c.x, arg_1.c.x, true)), vec4<f32>(613f, arg_2, arg_2, arg_2)), Struct_1(arg_0.a, var_1.b, arg_3.c)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1370f, -1511f, 1000f, -141f) - vec4<f32>(1410f, arg_2, arg_2, 1571f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-565f, arg_2, arg_2, arg_2) + vec4<f32>(-1000f, -941f, -895f, arg_2))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, arg_2, arg_2, -322f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(floor(-278f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-283f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.c >> (min(~abs(25917u), u_input.c) % 32u));
    var var_1 = -countOneBits(-4268i);
    global0 = array<i32, 30>();
    var var_2 = func_4(func_1(~4294967295u, Struct_1(global0[_wgslsmith_index_u32(15114u, 30u)], !all(vec4<bool>(true, false, false, true)), vec3<bool>(true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-132f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1383f * -721f) + -114f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(188f, 1000f)))), -1036f)), func_1(~countOneBits(~var_0), func_2(func_1(u_input.c, Struct_1(u_input.b.x, false, vec3<bool>(true, false, true)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1000f, 228f, 1394f), vec4<f32>(-1058f, -906f, -486f, 662f))), func_1(~var_0, func_1(4294967295u, Struct_1(global0[_wgslsmith_index_u32(global1.x, 30u)], true, vec3<bool>(false, false, false)), vec4<f32>(519f, -1000f, -2145f, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(1024f, 390f, -586f, 1220f), vec4<f32>(126f, -368f, 318f, -958f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-221f + 632f))), 524f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1320f)), _wgslsmith_f_op_f32(min(-100f, -192f))), -271f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-150f + -1059f)))), func_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(27343i, -2147483647i, 13071i), vec3<i32>(1i, 1i, 1i)), 22642i), any(func_1(4294967295u, Struct_1(-2147483647i, false, vec3<bool>(true, true, false)), vec4<f32>(-1087f, -839f, -1000f, 696f)).c), vec3<bool>(true, true, true)), Struct_1(u_input.a.x, func_3(global1.zz, u_input.b.x, global0[_wgslsmith_index_u32(~15946u, 30u)], func_2(Struct_1(-1i, false, vec3<bool>(true, true, false)), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 30u)], true, vec3<bool>(true, false, true)))), func_1(_wgslsmith_dot_vec2_u32(global1.yy, vec2<u32>(0u, 4294967295u)), Struct_1(u_input.b.x, true, vec3<bool>(false, false, true)), vec4<f32>(-517f, 1534f, 939f, 1053f)).c)));
    var_1 = func_1(u_input.c, func_1(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, var_0, 39035u, 1u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(51515u, 0u, 1u, u_input.c), vec4<u32>(21842u, var_0, 1u, var_0))), Struct_1(select(~u_input.b.x, var_2.a & var_2.a, true), true, var_2.c), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(562f, 1909f, 1000f, -1124f), vec4<f32>(-1669f, -107f, 662f, -1409f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1163f, 841f, -860f, 1474f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(467f, -710f, -438f, -3367f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-269f, 157f, -211f, -1131f), vec4<f32>(-1385f, -232f, 739f, 1946f), vec4<bool>(true, var_2.b, var_2.c.x, var_2.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, 3216f, -874f, 1562f)))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec4_u32(~(vec4<u32>(var_0, 0u, var_0, 0u) & vec4<u32>(0u, global1.x, global1.x, global1.x)), vec4<u32>(global1.x, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, var_0), vec3<u32>(20149u, global1.x, 4294967295u)), 147894u)), vec4<u32>(120323u, 0u, _wgslsmith_clamp_u32(~0u, var_0, ~815u), u_input.c), any(func_4(func_2(Struct_1(4763i, var_2.b, var_2.c), Struct_1(-29168i, true, var_2.c)), Struct_1(0i, true, vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -2022f), Struct_1(-1i, false, var_2.c)).c.yx)), _wgslsmith_f_op_f32(f32(-1f) * -387f), u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1680f, -2189f, 1321f, -1516f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1338f, 416f, 1000f, 1076f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1025f, 1542f, -1599f, 619f)))))));
}

