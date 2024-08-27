struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(true, Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec4<f32>(601f, -227f, 749f, 699f), vec3<bool>(true, true, true)), vec4<i32>(69722i, i32(-2147483648), 2147483647i, i32(-2147483648)), true), Struct_4(true, Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec4<f32>(-461f, -383f, -1741f, -175f), vec3<bool>(false, true, false)), vec4<i32>(9539i, -24828i, 4047i, -11887i), true), Struct_4(true, Struct_2(Struct_1(vec4<bool>(true, false, false, false)), vec4<f32>(333f, 327f, -391f, 683f), vec3<bool>(false, true, true)), vec4<i32>(-28285i, 1i, 2147483647i, 30744i), true), Struct_4(false, Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec4<f32>(-295f, 794f, 1659f, -1169f), vec3<bool>(false, false, false)), vec4<i32>(0i, -7673i, i32(-2147483648), 25898i), false), Struct_4(true, Struct_2(Struct_1(vec4<bool>(false, false, false, false)), vec4<f32>(-1364f, -707f, -781f, 1214f), vec3<bool>(true, true, true)), vec4<i32>(-32994i, -1i, i32(-2147483648), -1i), true), Struct_4(false, Struct_2(Struct_1(vec4<bool>(true, true, true, false)), vec4<f32>(1243f, -1000f, 1000f, -1000f), vec3<bool>(false, true, false)), vec4<i32>(-1i, 25189i, -80194i, 0i), true), Struct_4(true, Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec4<f32>(-1483f, 751f, -1375f, 112f), vec3<bool>(false, true, false)), vec4<i32>(-11216i, -1i, 0i, 0i), true), Struct_4(false, Struct_2(Struct_1(vec4<bool>(false, false, true, false)), vec4<f32>(150f, 1765f, -2511f, 316f), vec3<bool>(false, false, false)), vec4<i32>(2147483647i, i32(-2147483648), 7815i, i32(-2147483648)), false), Struct_4(false, Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec4<f32>(-318f, 271f, 1617f, 1169f), vec3<bool>(false, false, true)), vec4<i32>(13257i, 32682i, 2147483647i, i32(-2147483648)), true), Struct_4(false, Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec4<f32>(-1737f, -1247f, 1552f, -906f), vec3<bool>(false, false, false)), vec4<i32>(i32(-2147483648), 15817i, i32(-2147483648), 2147483647i), false), Struct_4(false, Struct_2(Struct_1(vec4<bool>(true, false, false, false)), vec4<f32>(785f, -1240f, 1177f, 223f), vec3<bool>(true, false, false)), vec4<i32>(-46549i, -1i, -1i, 2147483647i), false), Struct_4(true, Struct_2(Struct_1(vec4<bool>(false, false, true, false)), vec4<f32>(476f, 731f, -674f, 706f), vec3<bool>(false, false, false)), vec4<i32>(29059i, 2147483647i, 2147483647i, 2147483647i), true), Struct_4(true, Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec4<f32>(838f, -1936f, 670f, 1526f), vec3<bool>(true, true, false)), vec4<i32>(-1i, -1i, 1i, 7020i), true), Struct_4(true, Struct_2(Struct_1(vec4<bool>(true, true, false, false)), vec4<f32>(-2550f, -1090f, 1018f, -1000f), vec3<bool>(true, false, true)), vec4<i32>(0i, -1i, 1i, 48306i), false), Struct_4(false, Struct_2(Struct_1(vec4<bool>(true, true, false, true)), vec4<f32>(-163f, 1154f, -821f, -167f), vec3<bool>(true, false, false)), vec4<i32>(47572i, 1i, 1i, 2147483647i), true), Struct_4(false, Struct_2(Struct_1(vec4<bool>(false, true, false, true)), vec4<f32>(-419f, -1368f, -760f, 485f), vec3<bool>(false, true, false)), vec4<i32>(4853i, -21160i, i32(-2147483648), 40927i), true), Struct_4(true, Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec4<f32>(728f, -183f, 388f, 949f), vec3<bool>(true, false, true)), vec4<i32>(5624i, i32(-2147483648), -33903i, -4562i), false), Struct_4(true, Struct_2(Struct_1(vec4<bool>(false, true, true, true)), vec4<f32>(756f, -606f, 992f, -665f), vec3<bool>(true, true, false)), vec4<i32>(-1i, 2147483647i, -1i, 1i), false), Struct_4(true, Struct_2(Struct_1(vec4<bool>(true, false, false, false)), vec4<f32>(-1234f, -1516f, -303f, 1297f), vec3<bool>(false, true, false)), vec4<i32>(0i, i32(-2147483648), -50340i, 62738i), false), Struct_4(true, Struct_2(Struct_1(vec4<bool>(false, true, true, true)), vec4<f32>(989f, -1501f, -711f, -1000f), vec3<bool>(true, true, false)), vec4<i32>(-15994i, 1i, i32(-2147483648), 0i), true), Struct_4(false, Struct_2(Struct_1(vec4<bool>(false, true, true, true)), vec4<f32>(154f, -663f, -222f, 622f), vec3<bool>(false, true, false)), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 1i), false));

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec4<f32>(371f, 1019f, 213f, 672f), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec4<f32>(-282f, 1000f, -552f, -1276f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), vec4<f32>(753f, 401f, -1000f, 959f), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec4<f32>(1000f, -151f, 515f, 965f), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), vec4<f32>(-923f, 347f, 154f, 1000f), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), vec4<f32>(-593f, -465f, 656f, -1092f), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), vec4<f32>(-1000f, 850f, -845f, 699f), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), vec4<f32>(1000f, -941f, -2133f, -619f), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), vec4<f32>(110f, 191f, -1059f, 1043f), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), vec4<f32>(277f, -136f, -464f, -553f), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec4<f32>(1000f, 582f, 883f, -757f), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), vec4<f32>(-468f, -632f, -506f, 992f), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec4<f32>(-1586f, -434f, -1347f, 1173f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), vec4<f32>(180f, -332f, 1948f, 647f), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), vec4<f32>(-1000f, 283f, -229f, -1273f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), vec4<f32>(690f, 523f, -1666f, 395f), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), vec4<f32>(-330f, -115f, -883f, -594f), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), vec4<f32>(-543f, 873f, 108f, 810f), vec3<bool>(false, false, true)));

var<private> global2: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: u32) -> vec2<bool> {
    global0 = array<Struct_4, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-538f, -1000f, -130f) - vec3<f32>(-1361f, 665f, 2063f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1121f, -209f, 673f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1174f, -122f, -1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(308f, 1378f, 624f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(189f, -1000f, -360f), vec3<f32>(-1278f, 730f, 1435f)))))));
    global1 = array<Struct_2, 18>();
    global2 = vec4<bool>(false, true, all(select(vec2<bool>(arg_1.x, true && global2.x), select(vec2<bool>(arg_1.x, arg_1.x), arg_1, global2.x), arg_1)), true & global2.x);
    return select(select(global2.xw, !(!vec2<bool>(arg_1.x, true)), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(false, true, true, any(global2.wz))), arg_1.x), select(global2.wy, select(arg_1, global2.zy, !global2.wy), all(select(arg_1, vec2<bool>(arg_1.x, arg_1.x), select(vec2<bool>(false, false), vec2<bool>(arg_1.x, true), arg_1)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    let var_0 = arg_1.d.a.ww;
    var var_1 = vec3<bool>(true == all(select(var_0, select(vec2<bool>(arg_1.d.a.x, false), vec2<bool>(arg_2.b.c.x, var_0.x), vec2<bool>(false, true)), !vec2<bool>(global2.x, false))), all(!select(func_3(arg_2.c.zxy, var_0, 7437u), global2.yw, !global2.x)), arg_1.d.a.x);
    var var_2 = arg_2.c.yxx;
    var var_3 = func_3(vec3<i32>(1i, -abs(i32(-1i) * -23944i), ~_wgslsmith_mult_i32(var_2.x, u_input.c & -2147483647i)), vec2<bool>(!global2.x, !arg_2.d), 48557u).x;
    let var_4 = !func_3(arg_2.c.zxw, vec2<bool>(var_0.x, global2.x), ~firstLeadingBit(arg_1.a.x));
    return _wgslsmith_mult_u32(~arg_1.a.x, arg_1.a.x);
}

fn func_1() -> f32 {
    global2 = !vec4<bool>(!(!any(global2.wy)), false, true, all(!global2.yzz));
    global2 = !(!(!(!vec4<bool>(global2.x, true, true, global2.x))));
    var var_0 = min(u_input.a.x, u_input.a.x);
    var var_1 = vec4<u32>(1u, countOneBits(~1u), 1u, ~func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-238f, -1189f, -1000f) + vec3<f32>(-1392f, -1383f, 1360f)), Struct_3(vec4<u32>(4294967295u, 0u, 1u, 63120u), -35087i, Struct_1(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), Struct_1(vec4<bool>(global2.x, true, global2.x, global2.x))), global0[_wgslsmith_index_u32(min(15525u, 4294967295u), 21u)])) & vec4<u32>(1u, 1u, 1u, 1u);
    var var_2 = var_1.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -317f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(sign(-2242f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(176f + 1085f) * _wgslsmith_f_op_f32(round(-504f))), !(false | global2.x))), -304f)));
    global2 = vec4<bool>(global2.x, false, !select(false, global2.x, global2.x), false);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -280f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-137f, _wgslsmith_f_op_f32(f32(-1f) * -454f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1125f))))));
    var var_3 = vec3<i32>(-1i, 21239i, abs(~(~(-2147483647i))));
    var var_4 = var_2;
    let var_5 = Struct_1(!(!vec4<bool>(select(false, false, false), all(global2.wy), true, global2.x)));
    let var_6 = Struct_3(~vec4<u32>(1u, 1u, 1u, 1u), 6085i, Struct_1(vec4<bool>(!(!global2.x), (var_3.x >= var_3.x) | false, any(select(vec4<bool>(global2.x, true, false, false), vec4<bool>(var_5.a.x, global2.x, var_5.a.x, false), vec4<bool>(false, global2.x, var_5.a.x, var_5.a.x))), var_5.a.x)), Struct_1(!vec4<bool>(global2.x && var_5.a.x, true, var_4.x <= var_2.x, func_3(vec3<i32>(-1i, u_input.c, var_3.x), vec2<bool>(global2.x, true), 0u).x)));
    let var_7 = global1[_wgslsmith_index_u32(~var_6.a.x, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(-171f, ~_wgslsmith_add_u32(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, var_7.b.x, -538f))), var_6, global0[_wgslsmith_index_u32(select(31504u, 0u, var_6.c.a.x), 21u)]), var_6.a.x));
}

