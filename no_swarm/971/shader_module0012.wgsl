struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-306f, -658f, 540f, 1000f), vec4<f32>(-1000f, 1220f, -210f, 142f), vec4<f32>(1244f, 879f, -298f, -2293f), vec4<f32>(1000f, 1426f, -697f, 582f), vec4<f32>(-2807f, -401f, 1197f, 1217f), vec4<f32>(700f, 617f, 293f, 1000f), vec4<f32>(1025f, 741f, 1191f, 1501f), vec4<f32>(-675f, -1330f, 547f, -1009f), vec4<f32>(-1000f, -396f, 355f, -541f), vec4<f32>(961f, -1000f, 714f, -938f), vec4<f32>(1000f, -1003f, -691f, -890f), vec4<f32>(-1278f, 1263f, 707f, 628f), vec4<f32>(1070f, 1394f, -1674f, -402f), vec4<f32>(188f, 227f, 1000f, 210f), vec4<f32>(537f, 1000f, -230f, -1682f), vec4<f32>(-133f, -1121f, 158f, -485f), vec4<f32>(-898f, -1091f, -912f, 359f), vec4<f32>(631f, 740f, -353f, 647f), vec4<f32>(1286f, -1273f, 791f, -1287f));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(1i, -1i), vec3<u32>(64289u, 15096u, 4294967295u), 67648u);

var<private> global2: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(532f, 1953f, 209f, 818f), vec4<f32>(-689f, 2287f, 419f, -1674f), vec4<f32>(1020f, 656f, 1475f, -406f), vec4<f32>(497f, 121f, -592f, -1075f), vec4<f32>(-1000f, 1258f, 1000f, 1707f), vec4<f32>(1685f, -2023f, 1080f, -1000f), vec4<f32>(199f, 1481f, -518f, 1330f), vec4<f32>(-569f, 687f, -931f, 317f), vec4<f32>(-277f, 694f, 434f, -1194f), vec4<f32>(1357f, -168f, 521f, -2414f), vec4<f32>(-1194f, -606f, 1480f, 481f), vec4<f32>(2178f, 824f, -188f, -1000f), vec4<f32>(-1270f, 899f, 239f, -1148f), vec4<f32>(-212f, -2071f, -757f, 872f), vec4<f32>(1410f, 1506f, 687f, -1000f), vec4<f32>(-554f, 749f, 130f, -737f), vec4<f32>(-1562f, -160f, 1092f, -1000f), vec4<f32>(-1582f, 1385f, 1321f, -136f), vec4<f32>(1000f, -1919f, -956f, -839f), vec4<f32>(1960f, -1829f, 684f, 580f));

var<private> global3: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global4: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.c))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -988f);
    let var_1 = vec2<bool>(true, true);
    global0 = array<vec4<f32>, 19>();
    let var_2 = vec2<i32>(-7211i, countOneBits(-22954i) | arg_0.d.a.x);
    return u_input.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>) -> u32 {
    let var_0 = arg_1.x;
    global2 = array<vec4<f32>, 20>();
    global2 = array<vec4<f32>, 20>();
    let var_1 = arg_0;
    global2 = array<vec4<f32>, 20>();
    return 112082u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: u32) -> f32 {
    global4 = -(~(~global1.a.x));
    global0 = array<vec4<f32>, 19>();
    var var_0 = Struct_1(global1.a, vec3<u32>(func_4(select(select(vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, false)), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, arg_0.x)), vec3<u32>(23383u, _wgslsmith_sub_u32(global1.c, 42131u), func_3(Struct_2(1u, u_input.a.zwx, -133f, Struct_1(vec2<i32>(global3.x, 0i), u_input.a.xww, arg_2))))), ~72281u, ~(firstLeadingBit(27420u) & arg_2)), _wgslsmith_sub_u32(abs(global1.b.x << (abs(0u) % 32u)), abs(abs(u_input.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + -179f);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    global2 = array<vec4<f32>, 20>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -579f))) * _wgslsmith_f_op_f32(-944f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(arg_0, arg_0), global2[_wgslsmith_index_u32(69699u, 20u)], global1.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))) * 370f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(-255f - -1448f)) * _wgslsmith_f_op_f32(f32(-1f) * -447f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))) - 811f));
    global3 = global1.a;
    var var_1 = vec2<i32>(global3.x >> (arg_1.c % 32u), abs(global3.x));
    let var_2 = Struct_2(max(_wgslsmith_mod_u32(63144u, arg_1.c), u_input.a.x), vec3<u32>(~0u, ~1123u, ~abs(u_input.a.x)), _wgslsmith_f_op_f32(max(var_0.x, 1638f)), arg_1);
    return 1539f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -1i;
    let var_0 = vec4<bool>(true, true, true, any(vec4<bool>(true, any(vec4<bool>(true, false, false, true)), false, !(u_input.a.x != global1.c))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-185f, _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(f32(-1f) * -891f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -488f) - _wgslsmith_f_op_f32(func_1(var_0.x, Struct_1(vec2<i32>(global1.a.x, u_input.b), global1.b, 4638u)))) + _wgslsmith_f_op_f32(select(-212f, -618f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2010f)))), 826f));
    var var_2 = Struct_2(~(1u ^ u_input.a.x), vec3<u32>(~_wgslsmith_div_u32(~u_input.c, _wgslsmith_dot_vec2_u32(u_input.a.ww, global1.b.zz)), select(~(~global1.b.x), ~firstLeadingBit(u_input.c), false), global1.b.x >> (global1.b.x % 32u)), var_1.x, Struct_1(vec2<i32>(_wgslsmith_add_i32(4851i | global1.a.x, max(global3.x, -2147483647i)), abs(_wgslsmith_add_i32(u_input.d.x, 33096i))), ~u_input.a.xyz, func_3(Struct_2(global1.c | u_input.c, vec3<u32>(0u, global1.b.x, 31791u) << (vec3<u32>(u_input.a.x, 4294967295u, 1u) % vec3<u32>(32u)), -2387f, Struct_1(vec2<i32>(20458i, 26995i), global1.b, 1u)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_1.yzx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) * _wgslsmith_div_f32(825f, 138f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.c)), _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    var var_4 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4.c, var_4.b.x), 2147483647i, 1u);
}

