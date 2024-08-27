struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<i32>(1i, 9090i, 1i), -1i, vec2<f32>(-802f, 806f), vec2<f32>(-906f, 681f)), Struct_1(vec3<i32>(-31509i, 1739i, 25099i), 53571i, vec2<f32>(-1074f, 542f), vec2<f32>(978f, 722f)), Struct_1(vec3<i32>(-12797i, -1147i, i32(-2147483648)), -41781i, vec2<f32>(573f, -1070f), vec2<f32>(-801f, -338f)), Struct_1(vec3<i32>(i32(-2147483648), 45478i, -18240i), -1i, vec2<f32>(-2220f, -213f), vec2<f32>(1760f, 383f)), Struct_1(vec3<i32>(-59899i, 0i, 56987i), 30637i, vec2<f32>(-2167f, -183f), vec2<f32>(-750f, 384f)), Struct_1(vec3<i32>(43532i, -4864i, -27945i), 6909i, vec2<f32>(-2002f, -937f), vec2<f32>(-1000f, -489f)), Struct_1(vec3<i32>(27387i, -60213i, 19288i), -1i, vec2<f32>(-200f, 1000f), vec2<f32>(-1592f, 496f)), Struct_1(vec3<i32>(-22752i, i32(-2147483648), 49301i), 103005i, vec2<f32>(1121f, -2232f), vec2<f32>(3101f, 147f)), Struct_1(vec3<i32>(i32(-2147483648), 20481i, 2147483647i), 75488i, vec2<f32>(574f, 1545f), vec2<f32>(209f, 154f)), Struct_1(vec3<i32>(-1i, 22408i, -1i), 32092i, vec2<f32>(2067f, -343f), vec2<f32>(738f, 1517f)), Struct_1(vec3<i32>(12437i, 1i, 0i), i32(-2147483648), vec2<f32>(-568f, 1119f), vec2<f32>(1308f, -1157f)), Struct_1(vec3<i32>(63480i, 46378i, 2147483647i), 33012i, vec2<f32>(-576f, -1112f), vec2<f32>(-518f, 1176f)), Struct_1(vec3<i32>(7968i, 2147483647i, 2147483647i), 2147483647i, vec2<f32>(-2461f, 748f), vec2<f32>(149f, -409f)), Struct_1(vec3<i32>(i32(-2147483648), -8546i, -400i), 0i, vec2<f32>(-1009f, -1207f), vec2<f32>(1330f, -1233f)), Struct_1(vec3<i32>(31814i, -1i, 1i), 0i, vec2<f32>(1549f, -1367f), vec2<f32>(-1479f, 104f)), Struct_1(vec3<i32>(38575i, 5695i, -46374i), i32(-2147483648), vec2<f32>(-790f, -455f), vec2<f32>(-289f, 2494f)), Struct_1(vec3<i32>(-45060i, -1i, -28640i), -1i, vec2<f32>(774f, 1502f), vec2<f32>(1207f, -204f)), Struct_1(vec3<i32>(1i, 51439i, -25668i), 0i, vec2<f32>(-186f, 779f), vec2<f32>(-668f, -1034f)), Struct_1(vec3<i32>(1i, 0i, -44588i), 0i, vec2<f32>(1000f, 1902f), vec2<f32>(1468f, -675f)), Struct_1(vec3<i32>(1i, 34281i, -8073i), 62633i, vec2<f32>(552f, -893f), vec2<f32>(1000f, -766f)), Struct_1(vec3<i32>(18055i, i32(-2147483648), 2147483647i), 66908i, vec2<f32>(1051f, -886f), vec2<f32>(-320f, -1200f)), Struct_1(vec3<i32>(-69765i, 32874i, 25769i), 2147483647i, vec2<f32>(633f, -299f), vec2<f32>(1689f, 769f)), Struct_1(vec3<i32>(1i, -1i, 1668i), 21514i, vec2<f32>(-1953f, -1030f), vec2<f32>(-459f, -1961f)), Struct_1(vec3<i32>(-8405i, -1i, -1i), 10361i, vec2<f32>(266f, -1547f), vec2<f32>(1000f, 1330f)), Struct_1(vec3<i32>(8054i, i32(-2147483648), 2147483647i), 68690i, vec2<f32>(-491f, 922f), vec2<f32>(-573f, 810f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.c.x)))), 1321f);
    let var_1 = !(!vec4<bool>(true, true, true, ~u_input.b.x > (u_input.a & u_input.a)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.d))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0), arg_0.c.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.d), arg_1.c)))));
    global2 = array<Struct_1, 25>();
    var var_3 = false;
    return ~(-(~arg_1.a.x));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    global1 = all(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))) && (false | any(vec4<bool>(true, all(vec4<bool>(true, false, true, true)), true, all(vec2<bool>(false, true)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, arg_0, arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(arg_0 + global0[_wgslsmith_index_u32(64617u, 21u)]), global0[_wgslsmith_index_u32(~arg_1, 21u)], _wgslsmith_f_op_f32(round(arg_2.d.x))))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(select(select(vec3<i32>(arg_2.a.x, 12568i, arg_2.b), vec3<i32>(arg_2.b, arg_2.a.x, 52494i), vec3<bool>(true, true, arg_1)) | vec3<i32>(-2761i, arg_2.b, 30070i), ~arg_2.a, true) ^ (vec3<i32>(_wgslsmith_sub_i32(-1i, arg_2.a.x), 2147483647i, arg_2.b) << (u_input.b.xww % vec3<u32>(32u))), _wgslsmith_div_i32(arg_2.a.x, arg_2.a.x), arg_2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_2.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 21u)], -387f) + vec2<f32>(arg_0, arg_2.d.x))))));
    global1 = all(vec3<bool>(_wgslsmith_clamp_u32(5601u, 88171u, u_input.b.x) == ~max(u_input.b.x, 24912u), true, false));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(1636f, ~(~u_input.a), arg_2)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2064f, arg_2.d.x, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_2.d.x, 777f)))));
    global1 = true;
    let var_2 = _wgslsmith_sub_i32(-arg_2.b, arg_2.b);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, 211f))), _wgslsmith_f_op_f32(floor(arg_2.d.x)), 1000f, var_1.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-303f, var_0.d.x, arg_0, 392f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.d.x, -1938f, 1977f, var_1.x), vec4<f32>(arg_2.c.x, var_0.d.x, arg_0, -1341f))))) - vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 21u)] + var_0.d.x), 847f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 850f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_mod_i32(-1i, select(func_1(global2[_wgslsmith_index_u32(22945u, 25u)], global2[_wgslsmith_index_u32(25060u, 25u)]), 44725i >> (1u % 32u), true))), abs(-63860i) << (u_input.b.x % 32u));
    global2 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(~firstTrailingBit(51390u), 21u)], global0[_wgslsmith_index_u32(select(1u, ~u_input.b.x, true), 21u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], -1000f)), vec2<f32>(-1913f, global0[_wgslsmith_index_u32(56267u, 21u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 1038f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(419f, 248f)))))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_1.x)), global0[_wgslsmith_index_u32(~8883u, 21u)]))), _wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~1u, 21u)], 1803f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 21u)]) * _wgslsmith_f_op_f32(ceil(254f))), -1726f, -1000f, 880f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(-1109f, false, global2[_wgslsmith_index_u32(24887u, 25u)])), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 1064f, -1467f, -1000f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -559f), 1680f, -290f, 258f)), vec4<bool>(!(global0[_wgslsmith_index_u32(u_input.b.x, 21u)] > global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), true, u_input.a >= countOneBits(u_input.b.x), any(vec4<bool>(false, false, true, true))))));
    let var_3 = Struct_1(-(-_wgslsmith_div_vec3_i32(vec3<i32>(var_0, 1i, var_0), vec3<i32>(var_0, var_0, var_0)) | firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-24653i, var_0, var_0), vec3<i32>(14213i, -1340i, var_0)))), var_0, vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), global0[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1, var_1)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(776f, var_2.x))), _wgslsmith_f_op_vec2_f32(var_1 - vec2<f32>(var_1.x, 1043f))))));
    let x = u_input.a;
    s_output = StorageBuffer(542f, u_input.b.wxw, _wgslsmith_sub_i32(var_3.b ^ var_0, 11759i), _wgslsmith_div_f32(var_3.d.x, 1f));
}

