struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(-36882i, -1628i, 20321i, -31219i, -2950i, i32(-2147483648), i32(-2147483648), 1i, 2147483647i, 15434i, 2147483647i, 23295i, 18946i, i32(-2147483648), 2147483647i, -1i, 5252i, 22553i, 2147483647i, -14052i, -1i, -1i, i32(-2147483648), 23103i, i32(-2147483648));

var<private> global1: array<vec2<i32>, 10>;

var<private> global2: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-32207i, 2928i, 74595i), vec3<i32>(-15214i, 42203i, -1i), vec3<i32>(15215i, 1i, -32659i), vec3<i32>(-11873i, 8675i, 0i), vec3<i32>(-31874i, -44197i, 2147483647i), vec3<i32>(-10787i, -12575i, 0i), vec3<i32>(9272i, 14228i, 6871i), vec3<i32>(2147483647i, i32(-2147483648), -21321i), vec3<i32>(0i, -44544i, -37500i), vec3<i32>(-4570i, -45491i, -1i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-41620i, -47239i, i32(-2147483648)), vec3<i32>(0i, 19285i, 1i), vec3<i32>(37838i, 38719i, -8429i), vec3<i32>(18255i, 9343i, -49278i), vec3<i32>(-29328i, 0i, 2147483647i), vec3<i32>(-1i, 30891i, 25833i), vec3<i32>(1i, -17446i, -26335i), vec3<i32>(1i, i32(-2147483648), -41837i), vec3<i32>(-14192i, -20188i, -21298i), vec3<i32>(0i, -12881i, 1i), vec3<i32>(1599i, 0i, i32(-2147483648)), vec3<i32>(14991i, 11878i, -40079i), vec3<i32>(2147483647i, 0i, -91019i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), 26501i, -1i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_4) -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.x) + _wgslsmith_f_op_f32(abs(437f))), arg_3.d.x));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: i32) -> vec4<f32> {
    global1 = array<vec2<i32>, 10>();
    let var_0 = Struct_5(Struct_2(~0u, countOneBits(u_input.b << (15754u % 32u)) | 37660u, Struct_1(~vec4<u32>(4294967295u, u_input.b, 0u, 18318u), _wgslsmith_f_op_vec4_f32(floor(arg_1.a))), vec2<bool>(true, true), select(vec3<bool>(all(vec3<bool>(true, false, false)), true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, true))), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(218f + arg_0.x), _wgslsmith_f_op_f32(-1010f + -403f), 938f, _wgslsmith_f_op_f32(min(-1776f, 418f))) - vec4<f32>(arg_1.d.x, -825f, _wgslsmith_f_op_f32(min(arg_0.x, 1748f)), _wgslsmith_f_op_f32(arg_1.d.x - arg_1.a.x))) * vec4<f32>(886f, -1000f, -2041f, -1506f)), ~vec3<u32>(~10220u, 16787u, u_input.a));
    global1 = array<vec2<i32>, 10>();
    global1 = array<vec2<i32>, 10>();
    let var_1 = var_0;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-172f - arg_1.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - arg_1.d.x)), var_0.c.x)), var_1.a.c.b);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) * vec3<f32>(arg_2.x, -1794f, -317f)), Struct_4(vec4<f32>(arg_2.x, arg_2.x, 326f, -895f), arg_2, vec4<f32>(234f, 307f, arg_2.x, arg_2.x), vec4<f32>(1054f, 444f, -1130f, 831f), 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) - arg_2.yz), abs(global0[_wgslsmith_index_u32(u_input.a, 25u)]))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(arg_2, vec3<f32>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(true, false, true)))))), arg_2), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2160f, -446f)), arg_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x))), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-1059f * arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(abs(arg_2.x))), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(select(1244f, -812f, arg_0.x))))), 2011f, _wgslsmith_f_op_f32(-arg_2.x)), u_input.b);
    let var_1 = Struct_3(arg_0.x, global2[_wgslsmith_index_u32(var_0.e, 26u)] | (-global2[_wgslsmith_index_u32(~var_0.e, 26u)] << (arg_1 % vec3<u32>(32u))), Struct_2(~_wgslsmith_div_u32(71858u, ~var_0.e), 1u, Struct_1(max(~vec4<u32>(var_0.e, arg_1.x, var_0.e, arg_1.x), firstLeadingBit(vec4<u32>(var_0.e, var_0.e, u_input.a, var_0.e))), var_0.a), vec2<bool>((false != arg_0.x) & true, any(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), vec3<bool>(!(!arg_0.x), !select(arg_0.x, arg_0.x, arg_0.x), !arg_0.x)), false);
    let var_2 = Struct_5(var_1.c, var_1.c.e.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.c.c.b)))), var_1.c.c.b), min(select(~vec3<u32>(u_input.a, arg_1.x, 1u), vec3<u32>(1u, arg_1.x, 1u) >> (arg_1 % vec3<u32>(32u)), !(!var_1.c.e)), (vec3<u32>(4294967295u, var_0.e, arg_1.x) & ~var_1.c.c.a.zyy) | vec3<u32>(1u, 1u, reverseBits(u_input.a))));
    global0 = array<i32, 25>();
    var var_3 = 942f;
    return var_0;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_5 {
    global1 = array<vec2<i32>, 10>();
    let var_0 = vec3<u32>(_wgslsmith_div_u32(0u, 1u ^ u_input.a), max(abs(u_input.b), u_input.a ^ ~0u), arg_0.e);
    let var_1 = Struct_5(Struct_2(var_0.x, 4294967295u, Struct_1(firstLeadingBit(~vec4<u32>(50653u, var_0.x, arg_0.e, 1u)), arg_0.d), vec2<bool>(any(vec3<bool>(true, true, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_0.a, vec4<f32>(arg_0.d.x, arg_0.d.x, 1384f, arg_0.c.x)))))), firstLeadingBit(~max(var_0, vec3<u32>(var_0.x, var_0.x, 4294967295u))));
    let var_2 = Struct_5(var_1.a, !select(select(var_1.b, false, true), true, any(!vec3<bool>(var_1.b, var_1.a.e.x, true))), vec4<f32>(var_1.a.c.b.x, _wgslsmith_f_op_f32(341f * 138f), -221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(713f))))), ~firstLeadingBit(~vec3<u32>(138941u, 0u, u_input.b) | var_0));
    global0 = array<i32, 25>();
    return Struct_5(Struct_2(57845u, 41333u, Struct_1(var_2.a.c.a, arg_1), var_2.a.d, var_2.a.e), all(select(select(!var_2.a.e, !var_2.a.e, vec3<bool>(var_1.b, var_1.a.e.x, var_2.b)), !var_2.a.e, var_2.a.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a.c.b))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(arg_0.e), var_2.a.c.a.x & 0u, u_input.b), select(max(vec3<u32>(var_0.x, arg_0.e, var_2.d.x), vec3<u32>(20008u, 4186u, 86479u)), ~vec3<u32>(arg_0.e, 43660u, 1u), vec3<bool>(false, var_1.a.d.x, var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_2(vec2<bool>(false, !(global0[_wgslsmith_index_u32(u_input.a, 25u)] > global0[_wgslsmith_index_u32(1u, 25u)])), vec3<u32>(max(~u_input.b, u_input.b | u_input.a), u_input.a, 0u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -695f, 384f), vec3<f32>(-310f, -268f, 195f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1019f, 1704f, -1420f) + vec3<f32>(-657f, 1044f, 439f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), global1[_wgslsmith_index_u32(94956u, 10u)], -1i, Struct_4(vec4<f32>(209f, -1081f, 341f, -1973f), vec3<f32>(369f, -810f, 1854f), vec4<f32>(1000f, 332f, -244f, -194f), vec4<f32>(1042f, 497f, -198f, 1421f), u_input.a))), _wgslsmith_f_op_f32(-1000f + 271f)), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1760f, -954f, 1018f, 175f) * vec4<f32>(-467f, -570f, -1032f, -1551f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), vec2<i32>(global0[_wgslsmith_index_u32(40182u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]), 0i, Struct_4(vec4<f32>(-1543f, -324f, -899f, -2949f), vec3<f32>(1000f, 1221f, 319f), vec4<f32>(268f, -610f, 574f, -1882f), vec4<f32>(-1000f, 563f, -184f, 1193f), u_input.b))), 1046f, 1468f, -617f))));
    let var_1 = Struct_5(func_4(func_2(func_4(Struct_4(var_0.c, vec3<f32>(var_0.a.c.b.x, var_0.c.x, var_0.c.x), vec4<f32>(var_0.c.x, var_0.a.c.b.x, -611f, -480f), var_0.c, var_0.a.c.a.x), vec4<f32>(-430f, var_0.c.x, var_0.c.x, var_0.a.c.b.x)).a.d, var_0.a.c.a.zyx | _wgslsmith_mult_vec3_u32(vec3<u32>(1983u, 19980u, 50079u), vec3<u32>(30436u, u_input.a, 4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-577f, var_0.c.x, 1145f))) * _wgslsmith_f_op_vec3_f32(exp2(var_0.c.zwz)))), func_2(vec2<bool>(var_0.b, var_0.b), select(var_0.d, var_0.a.c.a.yxy, select(var_0.a.e, var_0.a.e, var_0.a.e.x)), var_0.c.wxw).c).a, !(!(!all(var_0.a.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.c.b.x, 1004f, 465f, var_0.c.x), var_0.a.c.b)) - var_0.c) + var_0.c)), vec3<u32>(~abs(76u), ~4294967295u, ~(~0u)));
    var var_2 = !(reverseBits(~func_4(Struct_4(var_1.c, var_1.c.wzy, var_0.c, vec4<f32>(842f, var_1.c.x, 433f, -543f), var_0.d.x), vec4<f32>(var_0.a.c.b.x, 1000f, -443f, 910f)).a.a) == 10427u);
    let var_3 = func_4(Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.x, -1349f, var_1.c.x, var_0.c.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), var_0.c.x, _wgslsmith_div_f32(var_0.c.x, -447f), var_1.a.c.b.x)), func_4(Struct_4(_wgslsmith_f_op_vec4_f32(abs(var_0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x)), var_1.a.c.b, vec4<f32>(var_1.a.c.b.x, var_0.c.x, var_1.a.c.b.x, var_1.c.x), var_1.a.a), var_0.c).a.c.b.xzx, vec4<f32>(var_1.c.x, -1277f, -648f, _wgslsmith_f_op_f32(select(func_2(var_0.a.d, vec3<u32>(4294967295u, var_1.d.x, 30290u), vec3<f32>(669f, var_1.c.x, var_0.a.c.b.x)).c.x, 487f, var_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.c.b))), 1u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(var_1.c.ywx, func_2(var_1.a.e.xx, var_0.d, var_0.c.xwy), var_1.c.xy, min(global0[_wgslsmith_index_u32(var_0.d.x, 25u)], global0[_wgslsmith_index_u32(var_0.a.b, 25u)]))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + var_1.a.c.b.x)), 560f, _wgslsmith_f_op_f32(floor(-2359f)))))).a;
    var var_4 = abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.a & 1u, 4355u, var_3.a | u_input.b), var_1.d)) ^ (var_1.a.c.a.xyz | abs(~(~var_0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-688f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(var_0.a.c.b, vec3<f32>(var_0.c.x, 959f, 154f), var_3.c.b, var_1.a.c.b, var_1.d.x), vec4<f32>(var_0.c.x, -1000f, -1153f, -501f)).a.c.b.wxz - vec3<f32>(var_1.a.c.b.x, var_3.c.b.x, 480f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1242f, var_1.c.x, -1238f) * vec3<f32>(var_0.c.x, var_3.c.b.x, var_3.c.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.b.x, var_3.c.b.x, 1007f)))) - var_0.a.c.b.xwy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-616f + var_3.c.b.x)))));
}

