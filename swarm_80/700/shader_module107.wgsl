struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(-5231i, 0i, 6293i), vec3<i32>(0i, -24426i, -1i), vec3<i32>(0i, -70031i, 7199i), vec3<i32>(-1i, -12528i, i32(-2147483648)), vec3<i32>(26367i, 33688i, 1i), vec3<i32>(2147483647i, -46550i, -1i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(-1i, 2147483647i, -15177i), vec3<i32>(-1i, 30998i, 2147483647i), vec3<i32>(-11530i, 2147483647i, 5517i), vec3<i32>(i32(-2147483648), -11328i, 39988i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(-8550i, 1i, i32(-2147483648)), vec3<i32>(0i, -26775i, -20972i), vec3<i32>(0i, -38357i, 20530i));

var<private> global1: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_1;
    global1 = array<vec4<bool>, 23>();
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(-abs(global0[_wgslsmith_index_u32(1u, 16u)]), vec3<i32>(~0i, ~2147483647i, u_input.b.x >> (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 1u) % 32u))), 30244i, u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, -93034i));
    return select(select(select(vec3<bool>(arg_1.b, var_0.b, arg_0.b), vec3<bool>(true, arg_0.b, 3006u == u_input.c.x), arg_0.b), select(vec3<bool>(var_0.b, -866f > var_0.a, !arg_0.b), vec3<bool>(false, arg_0.c.x >= 307f, select(arg_0.b, var_0.b, arg_0.b)), any(vec2<bool>(true, true))), false), select(select(vec3<bool>(true, false || arg_0.b, !var_0.b), vec3<bool>(false, u_input.a >= -98535i, arg_1.b), select(select(vec3<bool>(true, arg_1.b, false), vec3<bool>(true, true, arg_0.b), vec3<bool>(true, arg_1.b, false)), !vec3<bool>(false, false, arg_1.b), !vec3<bool>(true, arg_1.b, arg_0.b))), vec3<bool>(arg_0.b, !any(vec3<bool>(var_0.b, true, arg_1.b)), var_0.b), true), arg_0.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(arg_1.a, 1729f, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.x)) - 1000f) != _wgslsmith_f_op_f32(ceil(406f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(421f, arg_1.c.x, arg_1.a, arg_1.a)), arg_1.c, false))));
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-106f + -159f);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1376f + 377f) - -989f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(487f + arg_1.c.x) * -1955f))), all(select(vec3<bool>(true, !arg_1.b, !arg_1.b), arg_2, arg_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-762f, var_0.c.x)), _wgslsmith_div_f32(140f, -949f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(abs(var_0.a)))) + var_0.c));
    var_0 = arg_1;
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = ~vec4<u32>(func_4(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, 26840u, 63183u, 15839u)), ~9151u, ~u_input.c.x), Struct_1(_wgslsmith_f_op_f32(-1251f - arg_0.a), 4294967295u > u_input.c.x, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(602f, -161f, -942f, arg_1.a)))), func_3(Struct_1(-325f, arg_1.b, vec4<f32>(-425f, arg_1.a, arg_0.a, arg_1.c.x)), Struct_1(arg_1.c.x, arg_1.b, arg_0.c))), u_input.c.x, abs(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) | _wgslsmith_div_u32(u_input.c.x, u_input.c.x)), ~4294967295u);
    var var_1 = ~abs(var_0.yz);
    global1 = array<vec4<bool>, 23>();
    var var_2 = vec3<i32>(-(~_wgslsmith_div_i32(u_input.a, u_input.b.x)), -1i, u_input.a) ^ countOneBits(max(global0[_wgslsmith_index_u32(min(max(u_input.c.x, 4294967295u), min(var_1.x, u_input.c.x)), 16u)], max(vec3<i32>(u_input.a, -1i, u_input.a) | global0[_wgslsmith_index_u32(45327u, 16u)], firstTrailingBit(global0[_wgslsmith_index_u32(14882u, 16u)]))));
    var var_3 = var_0.x;
    return arg_1.c.x;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = !(!(u_input.c.x != firstLeadingBit(_wgslsmith_mult_u32(10612u, u_input.c.x))));
    let var_1 = Struct_1(arg_1, true, vec4<f32>(-316f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-844f, _wgslsmith_div_f32(256f, -974f)))));
    global1 = array<vec4<bool>, 23>();
    var var_2 = ~(~countOneBits(vec3<u32>(u_input.c.x, 30757u, 4294967295u)));
    global1 = array<vec4<bool>, 23>();
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3))), any(vec4<bool>(!var_1.b, all(vec2<bool>(true, true)), func_3(Struct_1(286f, true, vec4<f32>(-419f, 1134f, arg_3, arg_1)), Struct_1(arg_2, true, var_1.c)).x, true)), vec4<f32>(-503f, _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-259f * arg_1)), _wgslsmith_f_op_f32(abs(481f))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> f32 {
    global0 = array<vec3<i32>, 16>();
    var var_0 = vec2<u32>(reverseBits(14191u), u_input.c.x & ~(~_wgslsmith_dot_vec3_u32(u_input.c.www, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))));
    global0 = array<vec3<i32>, 16>();
    let var_1 = func_5(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(183f + 3438f) + _wgslsmith_f_op_f32(f32(-1f) * -488f)) - _wgslsmith_f_op_f32(-887f * 1000f))), _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !(!arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1008f, -1285f, 156f, -2227f) * vec4<f32>(-683f, 367f, -1066f, 315f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1886f, 1053f, -120f, -1187f) * vec4<f32>(-1000f, -1240f, 657f, -1000f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1740f + -526f)), false, vec4<f32>(1378f, -1497f, _wgslsmith_f_op_f32(trunc(808f)), -582f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-801f * _wgslsmith_div_f32(-1205f, -1079f))));
    global1 = array<vec4<bool>, 23>();
    return _wgslsmith_f_op_f32(-var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-835f + _wgslsmith_f_op_f32(abs(156f))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), _wgslsmith_f_op_f32(-var_0) < 449f), vec3<bool>(true, true, true))), 1574f);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(min(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, u_input.c.x)), u_input.c.x << (~u_input.c.x % 32u), ~4294967295u, ~(u_input.c.x & 655u)))), 16u)];
    global0 = array<vec3<i32>, 16>();
    var var_3 = func_5(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -944f) * _wgslsmith_f_op_f32(step(var_0, _wgslsmith_div_f32(var_1, var_1)))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1000f))));
    global0 = array<vec3<i32>, 16>();
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1543f), _wgslsmith_div_i32(-u_input.b.x, -u_input.a));
}

