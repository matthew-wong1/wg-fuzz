struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(1i, -2440i, 0i, -1i), vec4<i32>(-69249i, 2147483647i, 724i, 1i), vec4<i32>(24464i, -35062i, -14364i, -61083i), vec4<i32>(-1i, 54231i, i32(-2147483648), 0i), vec4<i32>(-26188i, i32(-2147483648), 1i, -17704i), vec4<i32>(65393i, 2147483647i, 34359i, 2147483647i), vec4<i32>(19436i, -28104i, -1i, 2147483647i), vec4<i32>(28416i, -14401i, 0i, -16980i), vec4<i32>(45607i, i32(-2147483648), 58430i, 2147483647i), vec4<i32>(33477i, -9305i, 2147483647i, 11627i), vec4<i32>(7931i, -34662i, -21836i, i32(-2147483648)), vec4<i32>(-38693i, 1i, i32(-2147483648), -1i), vec4<i32>(17744i, 26036i, 2147483647i, 9214i), vec4<i32>(-1i, -29308i, i32(-2147483648), 2147483647i), vec4<i32>(-57885i, -68729i, 1i, 13147i), vec4<i32>(-27254i, 7945i, 1i, 5936i), vec4<i32>(0i, -52172i, 84055i, -37247i), vec4<i32>(-3252i, 1i, -1i, -1i), vec4<i32>(15887i, i32(-2147483648), 70503i, 2147483647i), vec4<i32>(33444i, 0i, -1i, -2010i), vec4<i32>(38857i, i32(-2147483648), 23369i, -65308i), vec4<i32>(4089i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(-1i, 2147483647i, 1i, 0i), vec4<i32>(1i, 0i, 1i, 14298i), vec4<i32>(i32(-2147483648), 5083i, 1939i, 80363i), vec4<i32>(7928i, 1i, 34709i, -9607i), vec4<i32>(53370i, -34951i, 0i, 22559i), vec4<i32>(1i, -1788i, 1i, 71229i), vec4<i32>(1i, 1i, -74965i, -15878i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, i32(-2147483648)));

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, 24134i, 9796i, i32(-2147483648)), vec4<i32>(1i, 1i, -1i, -44267i), vec4<i32>(0i, 337i, -12512i, 0i), vec4<i32>(-15213i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(-1i, 3514i, 2147483647i, i32(-2147483648)), vec4<i32>(34939i, 2147483647i, 38694i, -22762i), vec4<i32>(0i, i32(-2147483648), 6049i, 0i), vec4<i32>(22124i, -1785i, 0i, -1i), vec4<i32>(22531i, -37960i, 1722i, 68592i), vec4<i32>(23325i, 1194i, -32656i, -1i), vec4<i32>(i32(-2147483648), -1i, -8218i, -59210i), vec4<i32>(-1i, 0i, 0i, 1i), vec4<i32>(39685i, 1i, 15646i, 6927i), vec4<i32>(-22133i, i32(-2147483648), -2710i, -74550i), vec4<i32>(-27900i, -9592i, -41810i, i32(-2147483648)), vec4<i32>(31868i, 1i, -27363i, 0i), vec4<i32>(-38198i, 28894i, -59604i, 50688i), vec4<i32>(-69531i, 0i, 0i, -7519i), vec4<i32>(1i, 0i, 62008i, 6586i), vec4<i32>(i32(-2147483648), -16507i, i32(-2147483648), 48678i), vec4<i32>(-21633i, -21792i, 37169i, 1i), vec4<i32>(4919i, -1i, 2147483647i, 0i), vec4<i32>(-34374i, 25027i, -18815i, -15053i), vec4<i32>(0i, 20045i, 1i, 61593i), vec4<i32>(0i, -1i, -1i, 10169i), vec4<i32>(2147483647i, 1i, 30876i, -27171i));

var<private> global2: Struct_1;

var<private> global3: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(43064i, -8286i), vec2<i32>(i32(-2147483648), 48579i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 12279i), vec2<i32>(2147483647i, 3668i), vec2<i32>(1i, 40186i), vec2<i32>(32314i, -1i), vec2<i32>(31167i, -6790i), vec2<i32>(-9450i, 1i), vec2<i32>(-1905i, 1i), vec2<i32>(-10667i, -7137i), vec2<i32>(2147483647i, 26439i), vec2<i32>(31439i, -9763i), vec2<i32>(12955i, 0i), vec2<i32>(-1i, -19604i), vec2<i32>(-36176i, 0i), vec2<i32>(1i, 6500i), vec2<i32>(40246i, 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-46278i, 2147483647i), vec2<i32>(-1i, -26975i), vec2<i32>(26581i, -837i), vec2<i32>(16075i, 0i), vec2<i32>(i32(-2147483648), -34435i), vec2<i32>(21699i, 35336i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(19112i, 11583i));

var<private> global4: Struct_2 = Struct_2(20157i, vec2<bool>(true, true), -25163i, Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, true, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(180f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(312f * -1089f))) - vec2<f32>(-785f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(397f, -1654f))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1527f, 1304f)))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-400f, 1235f)))), _wgslsmith_div_vec2_f32(vec2<f32>(1481f, _wgslsmith_f_op_f32(floor(710f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-795f, 167f) * vec2<f32>(574f, 701f)))))));
    global4 = Struct_2(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -33560i, _wgslsmith_mult_i32(u_input.e, -42042i)), firstTrailingBit(abs(vec3<i32>(u_input.a.x, u_input.b, u_input.e)))), select(!global4.d.a.yx, select(select(vec2<bool>(true, true), global2.a.xz, true), !select(vec2<bool>(true, global2.a.x), vec2<bool>(global4.e.a.x, true), vec2<bool>(false, arg_0)), !select(global2.a.yy, global4.b, vec2<bool>(global4.e.a.x, true))), global4.e.a.wz), _wgslsmith_div_i32(select((u_input.e | u_input.b) >> (13848u % 32u), countOneBits(firstTrailingBit(u_input.c.x)), _wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_f_op_f32(-var_0.x)), -2147483647i), global4.d, Struct_1(global4.d.a));
    global0 = array<vec4<i32>, 30>();
    let var_1 = select(vec2<bool>(global4.a != -34244i, !all(vec3<bool>(arg_0, false, true))), global4.d.a.zy, !select(vec2<bool>(true, all(global4.d.a.wzx)), global2.a.xx, true & all(global2.a)));
    global4 = Struct_2(-91703i ^ u_input.a.x, vec2<bool>(var_1.x, true), u_input.c.x, Struct_1(!select(!global4.e.a, vec4<bool>(var_1.x, true, true, var_1.x), false)), global4.e);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(627f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1419f, var_0.x)))) - 593f);
}

fn func_2() -> i32 {
    let var_0 = any(global2.a.xwz);
    let var_1 = Struct_2(~u_input.b, global2.a.wy, ~u_input.b << (~33547u % 32u), global4.d, Struct_1(select(select(global2.a, select(global4.d.a, vec4<bool>(false, global2.a.x, false, true), vec4<bool>(var_0, global4.b.x, global2.a.x, true)), global4.e.a), vec4<bool>(true, global4.e.a.x, any(vec2<bool>(global2.a.x, true)), global2.a.x & true), global4.d.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(808f, -731f, -719f, -611f) - vec4<f32>(724f, -1268f, 1000f, 1585f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-107f, 381f, -1300f, -1000f), vec4<f32>(688f, -129f, -1996f, 1834f), global4.d.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1403f, 984f, 568f, 184f), vec4<f32>(-428f, -359f, -636f, -1382f))))))) * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-572f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1685f, -543f)))), -1000f));
    global4 = Struct_2(-global4.c, !select(vec2<bool>(true, false), var_1.d.a.yy, !(!global4.e.a.zy)), _wgslsmith_mod_i32(-2147483647i, u_input.e), var_1.e, var_1.d);
    global2 = Struct_1(select(!var_1.e.a, vec4<bool>(true, !(!global4.e.a.x), all(!vec3<bool>(false, var_0, var_0)), var_1.d.a.x), vec4<bool>(true, max(64641u, u_input.d) <= u_input.d, false, global2.a.x)));
    return i32(-1i) * -24630i;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = max(firstLeadingBit(vec3<i32>(-_wgslsmith_div_i32(2147483647i, -32641i), func_2(), 25692i)), u_input.a.wwx);
    global1 = array<vec4<i32>, 26>();
    var var_1 = vec2<i32>(-1i) * -(~((u_input.c | u_input.a.wz) & _wgslsmith_mod_vec2_i32(var_0.yy, vec2<i32>(u_input.e, -33288i))));
    let var_2 = Struct_4(global4.e, Struct_2(((u_input.c.x >> (u_input.d % 32u)) >> ((1u | u_input.d) % 32u)) | 387i, vec2<bool>(any(global4.e.a), any(select(global2.a.xzw, global4.d.a.yzx, global2.a.yxz))), 2147483647i, global4.e, global4.e), global4.b.x, Struct_2(0i, vec2<bool>(true, true), u_input.b, Struct_1(global2.a), global4.d), vec3<u32>(6527u ^ u_input.d, u_input.d, u_input.d) << (~(firstLeadingBit(vec3<u32>(48269u, u_input.d, 26486u)) ^ max(vec3<u32>(24202u, 21036u, 0u), vec3<u32>(35243u, 23712u, u_input.d))) % vec3<u32>(32u)));
    var var_3 = Struct_2(_wgslsmith_mod_i32(i32(-1i) * -10990i, var_2.d.a), vec2<bool>(false, true), -(~(~_wgslsmith_div_i32(global4.c, var_0.x))), var_2.a, Struct_1(!global4.e.a));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 30>();
    var var_0 = Struct_4(Struct_1(!(!(!global4.e.a))), func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f - -1000f))))), _wgslsmith_div_i32(u_input.a.x ^ firstTrailingBit(28869i), -_wgslsmith_dot_vec3_i32(u_input.a.xwx, vec3<i32>(-33534i, 67616i, global4.a))) < -29490i, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))), ~(vec3<u32>(18623u >> (0u % 32u), _wgslsmith_sub_u32(u_input.d, u_input.d), u_input.d) | firstTrailingBit(vec3<u32>(14987u, u_input.d, u_input.d))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(778f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1480f, 1033f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = !(!(!global2.a));
    global1 = array<vec4<i32>, 26>();
    var_0 = Struct_4(func_1(var_1.x).e, Struct_2(~(-1i), !vec2<bool>(global4.d.a.x, !var_0.b.d.a.x), -1i, global4.d, global4.d), global4.b.x, func_1(var_1.x), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(52150u, u_input.d, 1u), var_0.e), select(31594u, ~u_input.d, var_0.b.e.a.x)), u_input.d, 1u));
    global4 = Struct_2(_wgslsmith_mult_i32(global4.c, u_input.b), select(!var_0.d.e.a.wy, select(!(!vec2<bool>(global4.d.a.x, var_2.x)), select(var_2.zx, var_2.zw, select(vec2<bool>(var_0.b.b.x, var_0.a.a.x), vec2<bool>(var_2.x, var_0.b.b.x), true)), var_0.d.e.a.yx), global2.a.yx), -(-1i >> (~_wgslsmith_sub_u32(u_input.d, 19611u) % 32u)), func_1(var_1.x).d, Struct_1(vec4<bool>(var_2.x, !global4.d.a.x, var_0.b.e.a.x || global2.a.x, all(select(global2.a.zxz, vec3<bool>(global4.d.a.x, false, false), global2.a.wxw)))));
    let var_3 = abs(reverseBits(12094i));
    global0 = array<vec4<i32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, countOneBits(abs(0u)), 2681u);
}

