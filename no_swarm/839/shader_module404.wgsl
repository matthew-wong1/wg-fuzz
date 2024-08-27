struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_2(false, 99041u, false), false, vec4<f32>(-316f, -495f, 992f, -957f), vec3<i32>(2147483647i, i32(-2147483648), 0i)), Struct_3(Struct_2(false, 1u, true), false, vec4<f32>(2260f, -944f, -294f, 1995f), vec3<i32>(-3098i, -6539i, 0i)), Struct_3(Struct_2(true, 4294967295u, true), false, vec4<f32>(203f, -250f, 751f, 1369f), vec3<i32>(51922i, -1i, -1i)), Struct_3(Struct_2(false, 7735u, true), false, vec4<f32>(1718f, 703f, 743f, 207f), vec3<i32>(i32(-2147483648), 27891i, 0i)), Struct_3(Struct_2(true, 56775u, false), true, vec4<f32>(258f, 1000f, -172f, -103f), vec3<i32>(-43537i, -19846i, 1149i)), Struct_3(Struct_2(false, 0u, true), true, vec4<f32>(674f, 1316f, 1122f, 2996f), vec3<i32>(-4805i, -13708i, 21684i)), Struct_3(Struct_2(true, 27090u, true), true, vec4<f32>(310f, -3665f, 1003f, 169f), vec3<i32>(28458i, 63899i, 2147483647i)), Struct_3(Struct_2(true, 103459u, true), false, vec4<f32>(1098f, 1730f, 1000f, 447f), vec3<i32>(48871i, -1i, 1i)), Struct_3(Struct_2(false, 75621u, true), false, vec4<f32>(2078f, 1180f, 393f, -598f), vec3<i32>(25583i, -1i, -2392i)), Struct_3(Struct_2(true, 21944u, false), true, vec4<f32>(491f, 911f, -506f, 590f), vec3<i32>(882i, 34449i, i32(-2147483648))), Struct_3(Struct_2(true, 0u, true), true, vec4<f32>(1000f, -794f, -788f, -1168f), vec3<i32>(-38525i, -1i, i32(-2147483648))), Struct_3(Struct_2(true, 4294967295u, false), false, vec4<f32>(-532f, -371f, -436f, 446f), vec3<i32>(i32(-2147483648), 15815i, -1i)));

var<private> global1: Struct_2 = Struct_2(false, 4294967295u, false);

var<private> global2: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-1000f, 218f, -1797f), vec3<f32>(-1024f, -420f, 500f), vec3<f32>(695f, -374f, -944f), vec3<f32>(-1471f, 1269f, 944f), vec3<f32>(803f, 441f, -198f));

var<private> global3: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_2(true, 1u, true), false, vec4<f32>(675f, -489f, 1251f, 677f), vec3<i32>(2147483647i, -1i, 72003i)), Struct_3(Struct_2(false, 4294967295u, true), false, vec4<f32>(604f, -556f, 2905f, 1526f), vec3<i32>(0i, 1i, 1188i)), Struct_3(Struct_2(true, 78111u, true), false, vec4<f32>(-658f, -766f, 1285f, -1391f), vec3<i32>(4063i, 2147483647i, 25679i)), Struct_3(Struct_2(true, 38787u, true), false, vec4<f32>(-441f, 477f, -838f, 1000f), vec3<i32>(1i, 11836i, i32(-2147483648))), Struct_3(Struct_2(false, 0u, true), true, vec4<f32>(1583f, -2114f, -440f, 372f), vec3<i32>(i32(-2147483648), -1i, 2147483647i)), Struct_3(Struct_2(true, 1u, false), false, vec4<f32>(1544f, -300f, 1282f, -478f), vec3<i32>(1i, i32(-2147483648), 4773i)), Struct_3(Struct_2(true, 17538u, true), false, vec4<f32>(555f, 1014f, 404f, -458f), vec3<i32>(-1i, 34779i, 2147483647i)), Struct_3(Struct_2(true, 0u, false), true, vec4<f32>(-361f, 1000f, 1229f, -1126f), vec3<i32>(-13346i, -1i, 2147483647i)), Struct_3(Struct_2(false, 90438u, true), false, vec4<f32>(1086f, 3442f, 1000f, -442f), vec3<i32>(47438i, i32(-2147483648), i32(-2147483648))), Struct_3(Struct_2(true, 4644u, false), true, vec4<f32>(518f, 576f, -1000f, 560f), vec3<i32>(36624i, 0i, i32(-2147483648))), Struct_3(Struct_2(true, 4294967295u, false), false, vec4<f32>(815f, -215f, -1000f, 1034f), vec3<i32>(-44460i, -1i, 0i)), Struct_3(Struct_2(true, 4294967295u, false), false, vec4<f32>(-380f, -416f, 178f, -1299f), vec3<i32>(1i, 146i, i32(-2147483648))), Struct_3(Struct_2(false, 42530u, true), true, vec4<f32>(-1750f, 1286f, 1000f, 397f), vec3<i32>(-32i, -1i, -5360i)), Struct_3(Struct_2(true, 0u, true), true, vec4<f32>(-1615f, -320f, -2406f, 1668f), vec3<i32>(i32(-2147483648), -53439i, 2877i)), Struct_3(Struct_2(false, 0u, false), true, vec4<f32>(-1172f, 1813f, 230f, 582f), vec3<i32>(-1i, -1i, i32(-2147483648))), Struct_3(Struct_2(true, 72256u, true), true, vec4<f32>(-624f, -292f, 981f, 1051f), vec3<i32>(15322i, 9514i, -32254i)), Struct_3(Struct_2(true, 75358u, false), false, vec4<f32>(1846f, 1999f, 1860f, -119f), vec3<i32>(-33298i, -10182i, 11281i)), Struct_3(Struct_2(true, 55712u, false), true, vec4<f32>(-1409f, -900f, -753f, 200f), vec3<i32>(56881i, -1i, -17270i)), Struct_3(Struct_2(true, 0u, true), false, vec4<f32>(-737f, -1031f, -1000f, 785f), vec3<i32>(1i, 13979i, -1i)), Struct_3(Struct_2(false, 34053u, false), false, vec4<f32>(513f, 307f, 752f, 1364f), vec3<i32>(-38303i, -9541i, -43014i)), Struct_3(Struct_2(true, 0u, true), true, vec4<f32>(-960f, -498f, 773f, 1024f), vec3<i32>(2147483647i, 50867i, 8798i)), Struct_3(Struct_2(true, 0u, true), true, vec4<f32>(227f, -1389f, 1404f, 1871f), vec3<i32>(77388i, -6219i, 10505i)), Struct_3(Struct_2(false, 4294967295u, true), false, vec4<f32>(-1006f, 1000f, -1611f, 1401f), vec3<i32>(-22866i, -22915i, -20726i)), Struct_3(Struct_2(true, 4294967295u, false), true, vec4<f32>(2579f, -637f, 502f, 724f), vec3<i32>(-1i, -1i, 42325i)), Struct_3(Struct_2(true, 3207u, true), false, vec4<f32>(453f, 937f, -1612f, -657f), vec3<i32>(-1i, 0i, 1764i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1949f), -955f), 1250f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -622f)) * 1f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(16372u, 5u)] + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2786f, -617f, -671f))))))));
    global2 = array<vec3<f32>, 5>();
    global0 = array<Struct_3, 12>();
    var var_1 = Struct_4(~vec3<i32>(~(-arg_0), firstTrailingBit(reverseBits(2147483647i)), arg_0), ~global1.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)), var_0.x, -1000f));
    return ~countOneBits(global1.b) >= u_input.c;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_mult_vec3_i32(max(~(-vec3<i32>(arg_2.d.x, arg_2.d.x, arg_2.d.x)), -firstTrailingBit(vec3<i32>(16151i, 1i, 47846i))), select(max(countOneBits(u_input.a.wxw), u_input.a.wxx), vec3<i32>(-arg_2.d.x, abs(u_input.a.x), 18824i), !select(vec3<bool>(true, arg_3.a, arg_0), vec3<bool>(true, arg_3.c, arg_0), vec3<bool>(true, false, arg_0))) >> (vec3<u32>(23877u, arg_1, ~(~arg_1)) % vec3<u32>(32u)));
    global0 = array<Struct_3, 12>();
    var var_2 = Struct_1(-_wgslsmith_div_vec3_i32(max(vec3<i32>(2147483647i, 911i, var_1.x) & vec3<i32>(arg_2.d.x, -27563i, -1i), u_input.a.zzy), ~reverseBits(arg_2.d)));
    var var_3 = all(vec4<bool>(func_3(var_1.x, select(select(vec3<bool>(global1.c, global1.c, true), vec3<bool>(true, true, arg_2.b), arg_2.a.c), vec3<bool>(true, true, true), true)), false, -1455f > arg_2.c.x, arg_2.c.x == _wgslsmith_f_op_f32(-1157f - _wgslsmith_f_op_f32(f32(-1f) * -701f))));
    return arg_3;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = global1.b;
    let var_1 = Struct_2(select(countOneBits(firstLeadingBit(arg_3.b)) == 21123u, all(!select(vec4<bool>(arg_2.x, global1.a, global1.a, false), vec4<bool>(arg_2.x, global1.c, arg_2.x, arg_3.a), true)), any(!select(vec4<bool>(global1.a, true, global1.a, false), vec4<bool>(arg_3.a, arg_2.x, arg_3.a, arg_2.x), vec4<bool>(arg_2.x, true, true, true)))), global1.b, !(false | any(vec4<bool>(arg_2.x, false, global1.c, arg_3.a))));
    let var_2 = func_2(true, abs(~1u), global0[_wgslsmith_index_u32(arg_3.b, 12u)], arg_3);
    let var_3 = 45957i;
    global2 = array<vec3<f32>, 5>();
    return u_input.a.xyw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~(-select(func_1(16384u, Struct_1(u_input.a.xzy), vec2<bool>(global1.a, true), Struct_2(true, 35823u, global1.a)), vec3<i32>(u_input.d.x, 0i, u_input.d.x), global1.a)), 0u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-860f, -1916f, global1.c)), _wgslsmith_f_op_f32(f32(-1f) * -2658f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(217f, 791f), vec2<f32>(501f, 2251f))))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - 212f), var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-381f, -354f))))), -101f, !((-1000f != var_1.x) & false))));
    global2 = array<vec3<f32>, 5>();
    let var_3 = Struct_4(var_0.a | -(u_input.a.xyy & _wgslsmith_mod_vec3_i32(u_input.a.xxw, var_0.a)), var_0.b);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(min(global1.b, var_3.b), 5u)] - vec3<f32>(var_1.x, var_1.x, -1182f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -703f, -246f) - global2[_wgslsmith_index_u32(func_2(true, var_0.b, global0[_wgslsmith_index_u32(u_input.b, 12u)], Struct_2(false, global1.b, false)).b, 5u)])), vec3<f32>(-1033f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-648f, 1345f)))))));
    global0 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, var_3.a.x);
}

