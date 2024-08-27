struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
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

var<private> global0: i32;

var<private> global1: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(vec2<f32>(-190f, -438f), false, vec4<i32>(15615i, 4633i, -26037i, 1i), vec4<f32>(668f, -140f, 1000f, -1000f)), Struct_4(vec2<f32>(-648f, 612f), true, vec4<i32>(0i, -12309i, i32(-2147483648), -1i), vec4<f32>(-628f, -1880f, 1221f, -274f)), Struct_4(vec2<f32>(-1617f, -552f), true, vec4<i32>(2147483647i, -2501i, 1i, -81397i), vec4<f32>(-1635f, 872f, 764f, 191f)), Struct_4(vec2<f32>(596f, 1092f), true, vec4<i32>(46129i, 22447i, 3980i, 36789i), vec4<f32>(-235f, 869f, -1005f, 415f)), Struct_4(vec2<f32>(-470f, 250f), true, vec4<i32>(-1i, 2147483647i, -1i, -29513i), vec4<f32>(-1685f, 1371f, 1000f, 330f)), Struct_4(vec2<f32>(1105f, 747f), false, vec4<i32>(28263i, -45382i, 2147483647i, 7906i), vec4<f32>(1215f, -552f, 1202f, -866f)), Struct_4(vec2<f32>(752f, -304f), true, vec4<i32>(52805i, 2147483647i, i32(-2147483648), 24362i), vec4<f32>(2556f, -893f, 544f, 1369f)), Struct_4(vec2<f32>(2062f, -805f), false, vec4<i32>(28535i, 1i, -5308i, -59927i), vec4<f32>(187f, -228f, -1322f, 1431f)), Struct_4(vec2<f32>(258f, 138f), true, vec4<i32>(i32(-2147483648), 2147483647i, 27381i, 36957i), vec4<f32>(1744f, 350f, -655f, -177f)), Struct_4(vec2<f32>(-1058f, 2189f), false, vec4<i32>(-53641i, 1i, i32(-2147483648), 0i), vec4<f32>(1072f, -1091f, -1108f, -128f)), Struct_4(vec2<f32>(-1472f, -397f), false, vec4<i32>(i32(-2147483648), -76507i, 19078i, 0i), vec4<f32>(-725f, 1800f, -741f, -1000f)), Struct_4(vec2<f32>(604f, -491f), true, vec4<i32>(-1i, -9981i, 0i, i32(-2147483648)), vec4<f32>(205f, -809f, -1359f, 1000f)), Struct_4(vec2<f32>(1000f, -143f), true, vec4<i32>(-61354i, i32(-2147483648), -38528i, 0i), vec4<f32>(-585f, -783f, 1072f, -1053f)), Struct_4(vec2<f32>(977f, -1318f), true, vec4<i32>(1i, 91619i, 27555i, -16493i), vec4<f32>(1146f, 1000f, -438f, -317f)), Struct_4(vec2<f32>(-497f, 202f), false, vec4<i32>(2147483647i, 36924i, -11054i, -6929i), vec4<f32>(521f, -776f, -176f, 2225f)), Struct_4(vec2<f32>(576f, 1645f), false, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -1i), vec4<f32>(998f, 506f, -1451f, -1000f)), Struct_4(vec2<f32>(-309f, -1036f), false, vec4<i32>(8857i, 2147483647i, -48826i, i32(-2147483648)), vec4<f32>(491f, -678f, -758f, 270f)), Struct_4(vec2<f32>(-1000f, 592f), true, vec4<i32>(-1i, 0i, -1i, 2147483647i), vec4<f32>(636f, -589f, 251f, 1029f)), Struct_4(vec2<f32>(-1183f, -671f), true, vec4<i32>(-1i, 818i, 20869i, i32(-2147483648)), vec4<f32>(1467f, 683f, 1171f, 632f)), Struct_4(vec2<f32>(-106f, -2223f), false, vec4<i32>(-487i, 2147483647i, 2147483647i, -5170i), vec4<f32>(-975f, 1374f, -469f, -413f)), Struct_4(vec2<f32>(982f, -855f), false, vec4<i32>(i32(-2147483648), -1i, -34725i, 35158i), vec4<f32>(1082f, -1439f, -836f, -2447f)), Struct_4(vec2<f32>(1802f, 2084f), true, vec4<i32>(2147483647i, -11282i, -1i, 0i), vec4<f32>(-495f, -1275f, 713f, 877f)), Struct_4(vec2<f32>(688f, 2432f), false, vec4<i32>(2147483647i, 12284i, 0i, 0i), vec4<f32>(1966f, 555f, -311f, -598f)), Struct_4(vec2<f32>(146f, 830f), false, vec4<i32>(-1i, 1i, 46131i, 2147483647i), vec4<f32>(-390f, -169f, -639f, 958f)), Struct_4(vec2<f32>(104f, -2033f), true, vec4<i32>(i32(-2147483648), 41248i, 2147483647i, 2147483647i), vec4<f32>(-2346f, -634f, -1000f, -974f)));

var<private> global2: vec2<f32> = vec2<f32>(-787f, -3054f);

var<private> global3: Struct_3;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(439f, arg_2.d.x, arg_2.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-851f, -765f, 243f))) * arg_2.d.yzx) * arg_2.d.wyw), _wgslsmith_f_op_vec3_f32(-arg_2.d.xyx));
    var var_1 = global3.c;
    let var_2 = ~(~(~countOneBits(global3.a.e)));
    var var_3 = global1[_wgslsmith_index_u32(global3.c.a, 25u)];
    let var_4 = var_3.c;
    return all(vec4<bool>(arg_2.b, false, any(select(vec4<bool>(arg_1, var_3.b, arg_2.b, true), vec4<bool>(true, false, arg_1, arg_2.b), arg_1)) || arg_2.b, false));
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = !all(vec4<bool>(all(vec2<bool>(true, true)), false, 0u >= _wgslsmith_sub_u32(arg_0.e, u_input.b.x), func_3(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global3.c.c.a, 11028i), vec3<i32>(-2147483647i, 11716i, u_input.a.x)), true, Struct_4(vec2<f32>(1000f, -706f), true, vec4<i32>(1780i, 49731i, 2147483647i, -1i), vec4<f32>(arg_0.d, global3.c.d, 517f, global3.a.d)))));
    let var_1 = vec4<i32>(-u_input.a.x, countOneBits(_wgslsmith_clamp_i32(u_input.a.x, arg_0.b.a, -23553i)), arg_0.b.a, -firstLeadingBit(-reverseBits(global3.b.a)));
    var var_2 = global1[_wgslsmith_index_u32(max(max(global3.c.e, 4294967295u), u_input.b.x), 25u)];
    let var_3 = global2.x;
    let var_4 = select(~_wgslsmith_mod_vec2_i32(var_1.zw, max(abs(vec2<i32>(25826i, u_input.a.x)), max(vec2<i32>(arg_0.c.a, arg_0.b.a), u_input.a.zz))), vec2<i32>(2147483647i, 35748i), select(select(select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, false)), vec2<bool>(var_0, var_0), !vec2<bool>(var_0, true)), select(select(vec2<bool>(var_0, var_2.b), vec2<bool>(false, false), true), vec2<bool>(var_2.b, var_2.b), select(vec2<bool>(true, false), vec2<bool>(var_0, false), true)), any(vec4<bool>(var_0, true, true, var_2.b))), vec2<bool>(-u_input.a.x < (var_1.x ^ 45512i), true), vec2<bool>(select(!var_0, var_2.b, any(vec2<bool>(var_0, true))), var_2.b)));
    return -abs(_wgslsmith_add_i32(~(-13515i), var_2.c.x) & var_2.c.x);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> bool {
    global0 = 111i;
    var var_0 = vec4<f32>(-610f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f + arg_1)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1637f + 1182f) * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(537f)) * arg_1))), global3.c.d)));
    let var_1 = ~vec4<i32>(-countOneBits(_wgslsmith_mult_i32(global3.a.b.a, u_input.a.x)), u_input.a.x, func_2(arg_0), -max(-global3.a.b.a, global3.c.c.a | -7085i));
    var var_2 = 1u;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(118f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -414f)))))) - _wgslsmith_f_op_vec2_f32(var_0.wz * var_0.ww));
    return true || select(true, false | ((u_input.b.x << (4294967295u % 32u)) >= 66736u), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1469f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.d, global2.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global3.a.d, global2.x), vec2<f32>(global3.c.d, global3.a.d)), false))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1480f)), _wgslsmith_f_op_f32(ceil(global2.x)))))));
    var var_0 = ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.c.a, 719u, global3.d.x, u_input.b.x), vec4<u32>(60937u, u_input.b.x, 26829u, 19423u) << (vec4<u32>(global3.a.e, u_input.b.x, global3.a.e, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, 80837u, global3.d.x, 1u))));
    let var_1 = global3.a;
    let var_2 = vec3<bool>(true, !(!func_1(Struct_2(1u, Struct_1(global3.c.b.a), var_1.b, -684f, u_input.b.x), var_1.d)), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-401f, 777f) + vec2<f32>(852f, global2.x))))));
    var var_4 = min(-vec4<i32>(-var_1.b.a, u_input.a.x >> (4294967295u % 32u), _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(var_1.b.a, var_1.c.a)) >> (~29045u % 32u), var_1.b.a), select(vec4<i32>(min(-2147483647i, global3.b.a), -2147483647i, global3.a.b.a | 9921i, abs(2147483647i >> (global3.a.e % 32u))), abs(countOneBits(vec4<i32>(0i, 10761i, u_input.a.x, -969i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global3.c.c.a, var_1.c.a, 44680i), vec4<i32>(var_1.c.a, -12239i, u_input.a.x, -9754i))), var_2.x));
    var var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(49124i, _wgslsmith_f_op_f32(step(var_1.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global3.a.d)))))), var_1.b.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(226f, 485f)))), _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(-1438f - 636f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1402f, var_1.d)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.c.d, 823f)))), 1000f));
}

