struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(592f, -1062f, -756f);

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-598f, Struct_1(vec3<bool>(false, false, true), vec3<i32>(2147483647i, 20172i, 15347i), 337f), vec4<bool>(true, false, false, true), Struct_1(vec3<bool>(false, false, true), vec3<i32>(2050i, -1i, 53328i), -632f)), Struct_2(891f, Struct_1(vec3<bool>(true, false, true), vec3<i32>(0i, 2147483647i, 34967i), -1691f), vec4<bool>(false, false, false, true), Struct_1(vec3<bool>(false, false, false), vec3<i32>(46885i, -27088i, -3221i), 430f)), Struct_2(-976f, Struct_1(vec3<bool>(true, true, true), vec3<i32>(-1i, i32(-2147483648), -20914i), -1102f), vec4<bool>(true, true, false, true), Struct_1(vec3<bool>(true, true, false), vec3<i32>(40458i, -1i, -1i), 2031f)), Struct_2(-858f, Struct_1(vec3<bool>(false, false, true), vec3<i32>(-9485i, 5010i, 0i), 456f), vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(true, false, false), vec3<i32>(0i, 31426i, -1i), 496f)), Struct_2(-2166f, Struct_1(vec3<bool>(true, false, true), vec3<i32>(-32639i, -21910i, 30853i), -148f), vec4<bool>(false, false, false, true), Struct_1(vec3<bool>(true, false, true), vec3<i32>(-13939i, 1i, -48060i), -326f)), Struct_2(-696f, Struct_1(vec3<bool>(false, false, true), vec3<i32>(2147483647i, 31783i, -1i), 2567f), vec4<bool>(true, true, false, true), Struct_1(vec3<bool>(false, false, false), vec3<i32>(88594i, 0i, 2147483647i), -1000f)), Struct_2(366f, Struct_1(vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), -329f), vec4<bool>(false, false, false, true), Struct_1(vec3<bool>(true, true, false), vec3<i32>(32231i, 25211i, -1i), -1000f)), Struct_2(-1751f, Struct_1(vec3<bool>(false, true, false), vec3<i32>(-1i, 63814i, 0i), 908f), vec4<bool>(false, true, true, false), Struct_1(vec3<bool>(true, true, false), vec3<i32>(0i, -16924i, 1i), 246f)), Struct_2(1445f, Struct_1(vec3<bool>(true, false, true), vec3<i32>(-4805i, -47799i, 1i), -185f), vec4<bool>(true, false, true, false), Struct_1(vec3<bool>(true, false, false), vec3<i32>(9597i, -1i, 1649i), -276f)), Struct_2(515f, Struct_1(vec3<bool>(true, true, false), vec3<i32>(-1i, 28583i, 26033i), -834f), vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(false, false, true), vec3<i32>(1i, 4953i, i32(-2147483648)), -472f)), Struct_2(915f, Struct_1(vec3<bool>(true, true, true), vec3<i32>(-25365i, 1i, 1i), -1162f), vec4<bool>(true, true, false, false), Struct_1(vec3<bool>(false, true, true), vec3<i32>(32043i, -1i, -7708i), -1072f)), Struct_2(398f, Struct_1(vec3<bool>(true, true, false), vec3<i32>(2147483647i, 34739i, 9416i), -650f), vec4<bool>(true, false, true, true), Struct_1(vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), -1i, 0i), 1000f)), Struct_2(1529f, Struct_1(vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), -24655i, 1i), 490f), vec4<bool>(false, false, false, false), Struct_1(vec3<bool>(false, true, false), vec3<i32>(-234i, 0i, 1i), -887f)), Struct_2(397f, Struct_1(vec3<bool>(true, true, true), vec3<i32>(-1i, i32(-2147483648), 0i), -1994f), vec4<bool>(true, false, true, false), Struct_1(vec3<bool>(true, true, false), vec3<i32>(0i, -1i, 0i), -2476f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = ~vec3<u32>(~max(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~2420u), ~26373u, _wgslsmith_dot_vec4_u32(~vec4<u32>(37251u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.c.x), u_input.c.x, u_input.b.x, ~u_input.c.x)));
    var var_1 = reverseBits(u_input.d.x);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-690f * -1113f), arg_0.c, -456f);
    let var_2 = global1[_wgslsmith_index_u32(1u, 14u)];
    return (35413i >= ~(~u_input.a.x)) || var_2.b.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!vec3<bool>(true, func_3(Struct_1(vec3<bool>(false, false, false), vec3<i32>(u_input.a.x, u_input.a.x, -10935i), global0.x)), true && select(false, false, true)), -vec3<i32>(i32(-1i) * -39759i, 0i, reverseBits(-2147483647i)), global0.x);
    var var_1 = var_0.a;
    let var_2 = Struct_2(var_0.c, var_0, vec4<bool>(false, any(vec4<bool>(!var_1.x, false, false, true)), var_1.x, reverseBits(reverseBits(var_0.b.x)) != 1i), var_0);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(round(var_0.c)), -850f);
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-abs(var_0.b), vec3<i32>(countOneBits(abs(1i)), 63009i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(22434i, 17481i)), 2619i ^ u_input.d.x, var_0.b.x))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(firstLeadingBit(1i), var_0.b.x), -2147483647i));
    return var_2.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = global0.x;
    let var_1 = arg_1;
    var var_2 = global1[_wgslsmith_index_u32(min(4294967295u, u_input.b.x), 14u)];
    var var_3 = -1127f;
    let var_4 = u_input.b.wzw;
    return func_2();
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global0 = vec3<f32>(global0.x, arg_0.d.c, -228f);
    let var_0 = arg_0.d;
    let var_1 = var_0;
    global1 = array<Struct_2, 14>();
    let var_2 = all(arg_0.c);
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-547f - 1749f);
    let var_1 = _wgslsmith_div_f32(arg_3.c, -293f);
    global0 = vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(643f, -1683f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.c + _wgslsmith_f_op_f32(sign(-1524f))), _wgslsmith_f_op_f32(step(func_1(vec3<f32>(arg_2.c, arg_3.c, 580f), u_input.d.x, Struct_1(arg_3.a, arg_2.b, var_1), Struct_2(arg_1.b.c, arg_3, vec4<bool>(arg_2.a.x, true, false, false), Struct_1(arg_2.a, vec3<i32>(u_input.d.x, arg_1.d.b.x, 0i), var_0))).c, _wgslsmith_f_op_f32(-arg_1.a)))))));
    var var_2 = abs(~vec2<u32>((4294967295u | arg_0) ^ arg_0, abs(arg_0 | u_input.b.x)));
    var var_3 = global1[_wgslsmith_index_u32(~u_input.b.x, 14u)];
    return arg_0;
}

fn func_6(arg_0: u32) -> vec2<f32> {
    let var_0 = abs(firstLeadingBit(vec3<i32>(u_input.d.x, ~(-u_input.d.x), u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.x))))))));
    let var_2 = global1[_wgslsmith_index_u32(arg_0, 14u)];
    return var_1.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 14>();
    let var_0 = global1[_wgslsmith_index_u32(~(_wgslsmith_div_u32(u_input.b.x >> (abs(68043u) % 32u), 1u) << (min(reverseBits(_wgslsmith_sub_u32(u_input.b.x, 18723u)), ~1u) % 32u)), 14u)];
    var var_1 = u_input.a.zxz ^ var_0.d.b;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(var_0.b.c * global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))), -1232f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(-global0.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_6(func_5(0u, func_4(Struct_2(_wgslsmith_div_f32(global0.x, 515f), func_1(vec3<f32>(global0.x, global0.x, -345f), u_input.a.x, Struct_1(vec3<bool>(true, false, var_0.b.a.x), u_input.a.xxz, global0.x), Struct_2(-409f, Struct_1(var_0.c.zxy, vec3<i32>(-1i, 11126i, 0i), 1000f), vec4<bool>(var_0.c.x, var_0.d.a.x, false, var_0.c.x), Struct_1(var_0.d.a, vec3<i32>(var_0.b.b.x, 24654i, u_input.a.x), global0.x))), !vec4<bool>(var_0.d.a.x, var_0.d.a.x, false, false), func_2())), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(913f, var_0.d.c, var_0.d.c) * vec3<f32>(-607f, 1961f, -1228f))), func_2().b.x, var_0.d, global1[_wgslsmith_index_u32(1u, 14u)]), var_0.d)));
    let var_3 = -17408i;
    let var_4 = func_4(func_4(Struct_2(global0.x, func_2(), var_0.c, func_4(global1[_wgslsmith_index_u32(~1u, 14u)]).b)));
    let var_5 = var_0.b.a.x;
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(27290u, vec4<i32>(var_6.d.b.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, ~var_0.d.b.x), func_4(Struct_2(var_6.b.c, Struct_1(vec3<bool>(false, false, true), vec3<i32>(var_6.d.b.x, var_6.b.b.x, var_6.d.b.x), var_2.x), vec4<bool>(true, var_6.d.a.x, var_4.b.a.x, var_4.c.x), var_0.b)).b.b.x), _wgslsmith_dot_vec3_i32(-u_input.a.yxx, ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_3, 25771i, var_3), vec3<i32>(u_input.d.x, var_3, 2147483647i))), abs(-1i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_div_f32(-1964f, var_6.b.c)))))), ~24802u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(216f, var_6.a, var_6.d.c, var_6.b.c))))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, var_6.d.c, var_2.x, -260f), vec4<f32>(-1300f, global0.x, -1719f, 771f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1041f, -137f, var_0.a, -496f), vec4<f32>(1816f, var_0.a, -1074f, var_2.x), var_0.c))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_4.d.c, 307f, 483f, var_0.d.c), vec4<f32>(438f, var_0.b.c, 941f, -839f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, var_4.d.c, -242f, 524f), vec4<f32>(849f, -413f, global0.x, 203f), vec4<bool>(true, var_0.b.a.x, true, true)))))))));
}

