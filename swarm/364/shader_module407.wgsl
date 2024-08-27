struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true));

var<private> global1: array<u32, 30>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_3(Struct_2(true), true, vec2<i32>(-34601i, 1i), 669f), Struct_1(vec2<f32>(1510f, 1826f), vec3<bool>(false, false, false), 49406i, false), vec3<f32>(-433f, 1280f, -279f), vec4<u32>(91436u, 0u, 24029u, 5786u), -20914i), Struct_4(Struct_3(Struct_2(true), false, vec2<i32>(50848i, -29989i), -963f), Struct_1(vec2<f32>(1040f, 154f), vec3<bool>(true, false, true), 10719i, true), vec3<f32>(1314f, 264f, 1103f), vec4<u32>(4294967295u, 4294967295u, 37450u, 1u), 1i), Struct_4(Struct_3(Struct_2(true), true, vec2<i32>(i32(-2147483648), 2147483647i), 1742f), Struct_1(vec2<f32>(-604f, 240f), vec3<bool>(true, true, false), 13451i, false), vec3<f32>(463f, -957f, 141f), vec4<u32>(24250u, 31567u, 1u, 52992u), 2147483647i), Struct_4(Struct_3(Struct_2(true), false, vec2<i32>(i32(-2147483648), 6997i), -471f), Struct_1(vec2<f32>(398f, -846f), vec3<bool>(false, true, false), -11847i, false), vec3<f32>(673f, 2141f, 267f), vec4<u32>(0u, 27189u, 47165u, 1u), 47482i), Struct_4(Struct_3(Struct_2(false), true, vec2<i32>(2147483647i, i32(-2147483648)), 398f), Struct_1(vec2<f32>(-1000f, -1000f), vec3<bool>(true, false, true), -5102i, false), vec3<f32>(356f, 1000f, -1005f), vec4<u32>(1105u, 39010u, 1u, 1u), -6754i), Struct_4(Struct_3(Struct_2(false), true, vec2<i32>(1i, -10907i), -487f), Struct_1(vec2<f32>(460f, -1000f), vec3<bool>(false, true, false), -86095i, true), vec3<f32>(-274f, 194f, 1124f), vec4<u32>(55379u, 1u, 1u, 39904u), 0i), Struct_4(Struct_3(Struct_2(false), false, vec2<i32>(2147483647i, 27915i), 1281f), Struct_1(vec2<f32>(580f, -1401f), vec3<bool>(false, false, true), 113360i, true), vec3<f32>(-1311f, 151f, -1211f), vec4<u32>(4294967295u, 0u, 77077u, 20710u), 66983i), Struct_4(Struct_3(Struct_2(false), true, vec2<i32>(-1i, -39284i), -355f), Struct_1(vec2<f32>(-2444f, 289f), vec3<bool>(true, false, true), -1i, true), vec3<f32>(-714f, -239f, -529f), vec4<u32>(48271u, 4294967295u, 4190u, 1u), -47960i), Struct_4(Struct_3(Struct_2(false), true, vec2<i32>(-1i, 6582i), 546f), Struct_1(vec2<f32>(-841f, -1410f), vec3<bool>(true, true, true), -1i, false), vec3<f32>(-178f, 2492f, 1510f), vec4<u32>(0u, 63606u, 0u, 4294967295u), 0i), Struct_4(Struct_3(Struct_2(false), false, vec2<i32>(-4713i, 9413i), -1081f), Struct_1(vec2<f32>(402f, 637f), vec3<bool>(false, true, false), 39320i, true), vec3<f32>(2333f, 1668f, -1252f), vec4<u32>(84870u, 0u, 1u, 0u), 10890i), Struct_4(Struct_3(Struct_2(false), false, vec2<i32>(-1i, -13891i), -729f), Struct_1(vec2<f32>(-352f, -226f), vec3<bool>(true, true, true), -1i, true), vec3<f32>(-555f, 1980f, -1647f), vec4<u32>(30507u, 1u, 1u, 0u), -81522i), Struct_4(Struct_3(Struct_2(false), false, vec2<i32>(2147483647i, -1i), -1243f), Struct_1(vec2<f32>(-251f, 124f), vec3<bool>(false, true, false), 6162i, true), vec3<f32>(-557f, 131f, -103f), vec4<u32>(4294967295u, 16482u, 25119u, 1u), 81417i), Struct_4(Struct_3(Struct_2(false), false, vec2<i32>(-31789i, -40999i), 1200f), Struct_1(vec2<f32>(-237f, -143f), vec3<bool>(false, true, false), 7105i, false), vec3<f32>(746f, 258f, -348f), vec4<u32>(18209u, 7285u, 0u, 284u), 2147483647i), Struct_4(Struct_3(Struct_2(false), false, vec2<i32>(1400i, 17063i), 562f), Struct_1(vec2<f32>(-129f, -1000f), vec3<bool>(false, true, false), 7674i, true), vec3<f32>(280f, 1570f, 2247f), vec4<u32>(19578u, 32763u, 4294967295u, 0u), 0i), Struct_4(Struct_3(Struct_2(true), true, vec2<i32>(14515i, 40306i), -272f), Struct_1(vec2<f32>(-515f, 207f), vec3<bool>(true, false, false), -1i, true), vec3<f32>(-398f, -616f, 2086f), vec4<u32>(11166u, 13605u, 19215u, 42463u), 1i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> f32 {
    global2 = vec2<bool>(!global2.x, !(!all(select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, false), true))));
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1003f - arg_0)), 1f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))))))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -1929f);
    global1 = array<u32, 30>();
    var var_2 = ~(i32(-1i) * -13640i) <= _wgslsmith_add_i32(1i, max(_wgslsmith_add_i32(-17186i, u_input.b.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x)))));
    return -1346f;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = Struct_2(true);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_3) - -1000f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_3, arg_3)))) * -144f)))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> bool {
    global0 = array<Struct_2, 11>();
    var var_0 = arg_0;
    global2 = vec2<bool>(false, !any(vec2<bool>(all(arg_1), global2.x)));
    let var_1 = ~((_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(36807u, 0u, 16978u), vec3<u32>(4294967295u, 77513u, global1[_wgslsmith_index_u32(75558u, 30u)]))) ^ 4294967295u) & ~_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(31466u, 30u)], 164120u));
    var var_2 = select(_wgslsmith_sub_i32(max(_wgslsmith_div_i32(~2147483647i, _wgslsmith_add_i32(-2147483647i, u_input.b.x)), 40842i), _wgslsmith_add_i32(u_input.b.x, 28267i)), _wgslsmith_clamp_i32(~u_input.b.x, abs(u_input.b.x), -(~(~2147483647i))), (u_input.a.x >= 1u) && false);
    return _wgslsmith_f_op_f32(func_2(Struct_2(!arg_1.x), ~_wgslsmith_add_i32(47732i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1879f, -1814f) + vec2<f32>(1536f, 1000f)) - vec2<f32>(-837f, -224f)), vec3<bool>(true, all(vec4<bool>(true, false, global2.x, arg_1.x)), true), u_input.b.x, false), 621f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1336f * -267f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(-1133f + -596f))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    global2 = vec2<bool>(true, !(abs(~global1[_wgslsmith_index_u32(u_input.a.x, 30u)]) <= 27376u));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-235f)) * arg_1.a.d)), 438f)));
    let var_1 = arg_3;
    global2 = vec2<bool>(false != !(arg_3.b.x | true), false);
    let var_2 = _wgslsmith_add_i32(var_1.c, -29919i) >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)])), ~_wgslsmith_add_vec2_u32(arg_1.d.zx, vec2<u32>(21076u, 21637u))), ~(~arg_1.d.xw)), 30u)] % 32u);
    return select(var_1.b.xy, vec2<bool>(!(!arg_3.d), func_1(u_input.a.x, !arg_3.b)), !all(vec2<bool>(arg_2.a.a, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(4294967295u, 71097u);
    global2 = select(!func_4(func_1(~1392u, vec3<bool>(true, true, true)), global3[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(4294967295u, 30u)] ^ 4294967295u), 15u)], Struct_3(Struct_2(global2.x), true, -vec2<i32>(54491i, 25530i), _wgslsmith_f_op_f32(-1156f - 1096f)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2702f, 1598f)), !vec3<bool>(true, false, global2.x), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), true)), vec2<bool>(false, true), select(select(func_4(true, Struct_4(Struct_3(global0[_wgslsmith_index_u32(var_0.x, 11u)], false, vec2<i32>(1i, u_input.b.x), -842f), Struct_1(vec2<f32>(-287f, -401f), vec3<bool>(false, true, false), 2147483647i, false), vec3<f32>(-795f, 1016f, -635f), u_input.a, 0i), Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false, vec2<i32>(u_input.b.x, 6550i), -1021f), Struct_1(vec2<f32>(-224f, -426f), vec3<bool>(global2.x, true, true), u_input.b.x, true)), !func_4(global2.x, Struct_4(Struct_3(Struct_2(true), global2.x, u_input.b, 1915f), Struct_1(vec2<f32>(-428f, 870f), vec3<bool>(false, false, global2.x), 7848i, true), vec3<f32>(-568f, -1189f, -787f), u_input.a, u_input.b.x), Struct_3(global0[_wgslsmith_index_u32(1477u, 11u)], true, u_input.b, 1096f), Struct_1(vec2<f32>(336f, 1388f), vec3<bool>(false, global2.x, true), 2147483647i, true)), true), !(!select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(false, false))), !select(!vec2<bool>(global2.x, true), select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true), global2.x), select(global2.x, false, global2.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -477f) + -523f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1204f), -355f))), 572f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f - -225f) * 131f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1938f, -1990f)))) + vec3<f32>(1774f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(617f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_2(false), 49097i, Struct_1(vec2<f32>(1000f, -838f), vec3<bool>(false, false, global2.x), 11601i, global2.x), -1034f))))))));
    var_0 = vec2<u32>(~(~u_input.a.x), 25983u ^ ~(~global1[_wgslsmith_index_u32(99301u, 30u)] >> (max(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)]) % 32u)));
    var_0 = select(_wgslsmith_div_vec2_u32(vec2<u32>(56971u, _wgslsmith_clamp_u32(var_0.x, var_0.x, 1u)), ~_wgslsmith_div_vec2_u32(u_input.a.zy, vec2<u32>(global1[_wgslsmith_index_u32(57238u, 30u)], var_0.x))), countOneBits(~u_input.a.xx & firstLeadingBit(u_input.a.zw)), !global2.x) >> ((abs(abs(u_input.a.yw)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a.x, 0u), max(~u_input.a.yz, vec2<u32>(29420u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)])))) % vec2<u32>(32u));
    let var_2 = Struct_3(Struct_2(global2.x), all(select(!(!vec3<bool>(false, global2.x, global2.x)), vec3<bool>(false, true, any(vec4<bool>(false, false, false, false))), global2.x)), select(firstLeadingBit(-vec2<i32>(1i, u_input.b.x)), vec2<i32>(-1i, -(~(-1i))), !func_4(global2.x, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(19126u, 0u, var_0.x), 15u)], Struct_3(Struct_2(global2.x), global2.x, u_input.b, var_1.x), Struct_1(var_1.zx, vec3<bool>(false, global2.x, false), -1i, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~vec2<u32>(var_0.x, global1[_wgslsmith_index_u32(24853u, 30u)])) ^ u_input.a.wx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zy + var_1.zz)), var_1.yx)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-626f, _wgslsmith_f_op_f32(1457f - var_2.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(719f, -1038f) * var_1.yx))), func_4(true, global3[_wgslsmith_index_u32(~20373u, 15u)], Struct_3(var_2.a, global2.x != true, -vec2<i32>(var_2.c.x, u_input.b.x), _wgslsmith_f_op_f32(max(-430f, 633f))), Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.xy), vec3<bool>(false, global2.x, true), ~var_2.c.x, var_2.a.a)))));
}

