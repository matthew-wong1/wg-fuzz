struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: f32;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec4<f32>(539f, -930f, -196f, -427f), true, Struct_1(vec3<f32>(1077f, -692f, -1592f), 924f)), Struct_3(vec4<f32>(-323f, -1283f, -864f, -1000f), false, Struct_1(vec3<f32>(-1096f, -1000f, 743f), -1472f)), Struct_3(vec4<f32>(-423f, 2296f, -705f, 2139f), false, Struct_1(vec3<f32>(-450f, -271f, -1600f), 1000f)), Struct_3(vec4<f32>(305f, 545f, -1512f, -358f), true, Struct_1(vec3<f32>(238f, 1947f, -1000f), 1074f)), Struct_3(vec4<f32>(1146f, -519f, -1284f, 388f), false, Struct_1(vec3<f32>(-439f, -1064f, 702f), -1534f)), Struct_3(vec4<f32>(-983f, 1601f, 519f, 1478f), true, Struct_1(vec3<f32>(-895f, 1097f, 105f), -1835f)), Struct_3(vec4<f32>(249f, 893f, -1189f, 693f), false, Struct_1(vec3<f32>(428f, 736f, 545f), 541f)), Struct_3(vec4<f32>(1651f, 1007f, -481f, -1070f), true, Struct_1(vec3<f32>(137f, -1000f, -1434f), 260f)), Struct_3(vec4<f32>(1691f, -517f, -1000f, -1143f), false, Struct_1(vec3<f32>(-740f, -1000f, -964f), -141f)), Struct_3(vec4<f32>(-636f, 1368f, 190f, 210f), true, Struct_1(vec3<f32>(-796f, 1100f, 672f), -2144f)), Struct_3(vec4<f32>(127f, -936f, 660f, -1341f), false, Struct_1(vec3<f32>(-283f, 552f, 776f), -155f)), Struct_3(vec4<f32>(-895f, -627f, 1669f, 313f), true, Struct_1(vec3<f32>(198f, -366f, -1180f), -883f)), Struct_3(vec4<f32>(2959f, -359f, -161f, -932f), false, Struct_1(vec3<f32>(-384f, 1076f, 803f), -1000f)), Struct_3(vec4<f32>(1511f, 827f, -678f, 1042f), false, Struct_1(vec3<f32>(-490f, -723f, -2062f), -242f)), Struct_3(vec4<f32>(-580f, -2120f, -608f, 654f), true, Struct_1(vec3<f32>(858f, 207f, -919f), -482f)), Struct_3(vec4<f32>(127f, 1435f, -1931f, -636f), false, Struct_1(vec3<f32>(389f, -1256f, -578f), 513f)), Struct_3(vec4<f32>(1169f, 1000f, 1000f, 790f), true, Struct_1(vec3<f32>(1000f, 2151f, 157f), -1641f)), Struct_3(vec4<f32>(226f, -1229f, -517f, 167f), true, Struct_1(vec3<f32>(142f, 712f, -281f), 859f)), Struct_3(vec4<f32>(889f, -246f, -294f, 1520f), true, Struct_1(vec3<f32>(1146f, 132f, -1087f), 1461f)), Struct_3(vec4<f32>(1978f, -1076f, -1231f, -957f), false, Struct_1(vec3<f32>(876f, -214f, -198f), -1099f)), Struct_3(vec4<f32>(-261f, 947f, -370f, -1000f), true, Struct_1(vec3<f32>(-961f, -1675f, -1549f), -759f)), Struct_3(vec4<f32>(1466f, 808f, -503f, 1992f), false, Struct_1(vec3<f32>(145f, 825f, 276f), -1000f)));

var<private> global3: Struct_3;

var<private> global4: array<vec3<i32>, 14>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> bool {
    var var_0 = u_input.c;
    var var_1 = 2102f;
    let var_2 = ~(~3969i);
    let var_3 = global3.c.a;
    global2 = array<Struct_3, 22>();
    return true;
}

fn func_3(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(global3.a.wyz, _wgslsmith_f_op_vec3_f32(sign(global3.a.ywy))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.c.b - _wgslsmith_f_op_f32(f32(-1f) * -802f)))))));
    global4 = array<vec3<i32>, 14>();
    global3 = global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(min(~79010u, ~2780u), u_input.c.x, 16730u), countOneBits(~countOneBits(vec3<u32>(47216u, 0u, 1u)))), 4357u), 22u)];
    var var_1 = select(select(!vec4<bool>(!arg_0, true, global3.b, global3.c.a.x > -429f), !vec4<bool>(!arg_0, arg_0, false, !arg_0), (u_input.d ^ min(u_input.d, u_input.d)) > 1i), vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.c.b + -1205f), _wgslsmith_f_op_f32(f32(-1f) * -846f), true)) < _wgslsmith_f_op_f32(-397f - _wgslsmith_f_op_f32(global3.a.x * 1029f)), all(!select(vec3<bool>(global3.b, false, true), vec3<bool>(global3.b, global3.b, false), global3.b)), global3.b || true, false || arg_0), select(select(vec4<bool>(true, any(vec4<bool>(true, global3.b, arg_0, true)), global3.b == false, func_1(Struct_4(Struct_1(var_0.a, var_0.a.x), arg_0, Struct_3(global3.a, false, Struct_1(var_0.a, -710f)), Struct_2(global3.b, arg_0, Struct_1(global3.c.a, var_0.b), u_input.d)), vec3<bool>(global3.b, global3.b, true), vec4<i32>(49820i, u_input.d, u_input.d, u_input.d), vec4<f32>(-622f, arg_1, global3.a.x, 523f))), select(!vec4<bool>(arg_0, arg_0, global3.b, true), select(vec4<bool>(arg_0, global3.b, false, arg_0), vec4<bool>(false, false, false, false), vec4<bool>(arg_0, false, global3.b, false)), select(vec4<bool>(false, false, true, arg_0), vec4<bool>(false, arg_0, false, arg_0), true)), select(vec4<bool>(global3.b, global3.b, false, global3.b), !vec4<bool>(arg_0, true, false, false), vec4<bool>(false, true, true, true))), vec4<bool>(all(!vec3<bool>(global3.b, arg_0, global3.b)), (27313i <= u_input.d) && false, false, false), !(!vec4<bool>(arg_0, arg_0, true, true))));
    global2 = array<Struct_3, 22>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 1699f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)) + _wgslsmith_f_op_f32(var_0.a.x * -747f))), _wgslsmith_div_f32(387f, arg_1)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: bool) -> vec2<bool> {
    global1 = global3.a.x;
    let var_0 = max(-55419i << (u_input.c.x % 32u), arg_0.x);
    global4 = array<vec3<i32>, 14>();
    let var_1 = _wgslsmith_f_op_f32(func_3(arg_2, global3.c.b));
    var var_2 = Struct_3(_wgslsmith_div_vec4_f32(global3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(188f, -309f, var_1, 1472f) + vec4<f32>(694f, global3.a.x, 745f, var_1))) - _wgslsmith_f_op_vec4_f32(global3.a * global3.a))), !(31485i <= _wgslsmith_mult_i32(u_input.d, -37297i)), global3.c);
    return select(select(!vec2<bool>(!arg_2, arg_2 || arg_2), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(global3.b, global3.b), vec2<bool>(var_2.b, false)), select(vec2<bool>(false, arg_2), vec2<bool>(true, global3.b), global3.b)), vec2<bool>(global3.b, !global3.b)), vec2<bool>(global3.b, arg_2), select(select(!(!vec2<bool>(var_2.b, arg_2)), !select(vec2<bool>(true, global3.b), vec2<bool>(var_2.b, global3.b), true), select(select(vec2<bool>(false, global3.b), vec2<bool>(false, arg_2), global3.b), select(vec2<bool>(false, true), vec2<bool>(var_2.b, false), global3.b), !vec2<bool>(true, var_2.b))), select(vec2<bool>(global3.b, global3.b), !select(vec2<bool>(true, global3.b), vec2<bool>(true, false), vec2<bool>(var_2.b, global3.b)), vec2<bool>(false, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 22>();
    global3 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1028f, 954f, global3.c.b, global3.c.b) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.c.b), vec4<f32>(408f, global3.a.x, 115f, -1992f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.a.x, global3.c.b, global3.c.b, global3.a.x)))), global3.b)))), any(!(!vec2<bool>(global3.b, true))), global3.c);
    var var_0 = select(select(!func_2(vec2<i32>(u_input.d, u_input.d), _wgslsmith_div_vec2_i32(vec2<i32>(37673i, u_input.d), vec2<i32>(-26266i, u_input.d)), func_1(Struct_4(Struct_1(global3.a.zyy, global3.c.a.x), false, Struct_3(global3.a, global3.b, global3.c), global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec3<bool>(false, false, global3.b), vec4<i32>(u_input.d, u_input.d, 1i, u_input.d), global3.a)), vec2<bool>(any(!vec3<bool>(global3.b, global3.b, global3.b)), global3.b), global3.b), !func_2(-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-14977i, u_input.d)), abs(select(vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, u_input.d), global3.b)), global3.b), true);
    var var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 22u)];
    let var_2 = !(all(!func_2(vec2<i32>(0i, -30432i), vec2<i32>(u_input.d, 0i), true)) & var_1.b);
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(global3.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)))), select(all(!vec2<bool>(var_0.x, var_1.b)), false, var_2) | all(!(!vec3<bool>(var_2, global3.b, true))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 953f, global3.a.x), var_1.c.a) - vec3<f32>(_wgslsmith_f_op_f32(select(var_1.c.b, -334f, false)), _wgslsmith_f_op_f32(abs(-907f)), 722f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_1.c.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f - var_1.c.a.x))))));
    var var_4 = Struct_2(var_2 | true, true, var_3.c, u_input.d);
    var var_5 = ~vec3<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(reverseBits(33616u), u_input.e.x)), max(~countOneBits(u_input.e.x), firstLeadingBit(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec4<i32>(-16676i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-22343i, var_4.d), -2147483647i) >> (_wgslsmith_sub_u32(~1u, 94290u) % 32u), 0i, u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.a.x * 1619f) - _wgslsmith_f_op_f32(sign(var_4.c.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(494f, 658f) * var_1.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_3.c.b)))))), firstTrailingBit(~abs(vec3<u32>(var_5.x, u_input.a.x, u_input.b.x))) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(select(4294967295u, 0u, true), ~0u, 3768u), _wgslsmith_mod_vec3_u32(~vec3<u32>(106250u, u_input.e.x, u_input.e.x), vec3<u32>(30578u, var_5.x, u_input.e.x)), firstTrailingBit(select(vec3<u32>(u_input.a.x, 0u, var_5.x), vec3<u32>(var_5.x, 11245u, u_input.c.x), vec3<bool>(var_1.b, false, true)))), firstTrailingBit(vec4<i32>(0i, reverseBits(-1i), var_4.d, -(-4265i >> (1u % 32u)))));
}

