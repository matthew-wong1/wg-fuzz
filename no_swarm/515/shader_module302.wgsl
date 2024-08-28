struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(vec3<u32>(0u, 1u, 4294967295u), Struct_4(Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(-469f, -526f, 1000f, 379f))), vec4<i32>(1i, 2147483647i, 1i, 2147483647i), Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(284f, 280f, 139f, -353f)), 2147483647i), Struct_5(vec3<u32>(79720u, 0u, 0u), Struct_4(Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(-1000f, 1000f, 1140f, -750f))), vec4<i32>(19626i, 0i, -22015i, 0i), Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-1275f, -354f, 1313f, -748f)), 1i), Struct_5(vec3<u32>(1u, 1u, 27067u), Struct_4(Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(1217f, -864f, 1033f, -808f))), vec4<i32>(34009i, -1i, -1i, 52832i), Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(-320f, 1199f, 425f, -2700f)), 1i), Struct_5(vec3<u32>(0u, 0u, 84360u), Struct_4(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-221f, 405f, -731f, 775f))), vec4<i32>(2147483647i, 0i, i32(-2147483648), 1i), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(467f, -1286f, -363f, -1319f)), 33370i), Struct_5(vec3<u32>(8633u, 0u, 1u), Struct_4(Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(-972f, -2070f, -821f, -752f))), vec4<i32>(2147483647i, 0i, 29841i, -60928i), Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(-1985f, 1122f, 3775f, -1278f)), 17902i), Struct_5(vec3<u32>(21228u, 4294967295u, 4294967295u), Struct_4(Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(803f, 1138f, -756f, -1117f))), vec4<i32>(-38514i, 2147483647i, -34089i, i32(-2147483648)), Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(314f, -1468f, 804f, 407f)), 9391i), Struct_5(vec3<u32>(0u, 29921u, 4294967295u), Struct_4(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(710f, 114f, 1044f, -1621f))), vec4<i32>(76366i, i32(-2147483648), -20542i, i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-865f, 711f, 147f, 1477f)), -31258i), Struct_5(vec3<u32>(1u, 1u, 4294967295u), Struct_4(Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-670f, -1295f, -740f, -120f))), vec4<i32>(14289i, -41207i, -1i, -29254i), Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(1161f, -2635f, -1871f, -196f)), 17863i), Struct_5(vec3<u32>(42754u, 0u, 1u), Struct_4(Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-136f, -447f, 1646f, -1627f))), vec4<i32>(-67020i, i32(-2147483648), i32(-2147483648), 17712i), Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(-494f, -1590f, -1540f, -425f)), 0i), Struct_5(vec3<u32>(0u, 1u, 2129u), Struct_4(Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(1724f, -1199f, -706f, 823f))), vec4<i32>(2147483647i, 20882i, 18125i, -1i), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-1000f, 1075f, -909f, -570f)), -1i), Struct_5(vec3<u32>(17551u, 20676u, 100244u), Struct_4(Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(-623f, -713f, -618f, -1000f))), vec4<i32>(-1i, -76107i, 4084i, 2147483647i), Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(336f, 313f, 380f, 430f)), 46972i), Struct_5(vec3<u32>(50241u, 4294967295u, 10967u), Struct_4(Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(-124f, 377f, 1065f, -749f))), vec4<i32>(29939i, 2147483647i, 1i, -24326i), Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(934f, -247f, -319f, -1586f)), -42871i), Struct_5(vec3<u32>(0u, 0u, 0u), Struct_4(Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(317f, -972f, -651f, -271f))), vec4<i32>(i32(-2147483648), -1i, -1i, -1i), Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-278f, 184f, 1771f, 648f)), -10549i), Struct_5(vec3<u32>(0u, 1u, 1u), Struct_4(Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(256f, -679f, -674f, -685f))), vec4<i32>(42072i, i32(-2147483648), -5245i, -13603i), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(-886f, -300f, 571f, -1645f)), 1i), Struct_5(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_4(Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(2213f, -321f, -277f, 1811f))), vec4<i32>(6518i, -1i, -37088i, 17011i), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(404f, 1270f, -862f, -2498f)), -1i), Struct_5(vec3<u32>(0u, 97669u, 0u), Struct_4(Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(-1183f, 301f, 2048f, 1071f))), vec4<i32>(-1i, 2147483647i, 0i, 2147483647i), Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(-1084f, -1000f, -2244f, -1000f)), -1i), Struct_5(vec3<u32>(45858u, 0u, 1u), Struct_4(Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(823f, -433f, 1351f, -562f))), vec4<i32>(2147483647i, 6689i, -17609i, 23044i), Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(811f, 1243f, 1186f, 425f)), -24428i), Struct_5(vec3<u32>(36187u, 55275u, 37919u), Struct_4(Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(-729f, 525f, 472f, -528f))), vec4<i32>(-49270i, 33038i, 11744i, 2147483647i), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-1493f, 235f, 878f, 1545f)), 10885i));

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(1i, -32545i), vec2<i32>(-5851i, 16540i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(15164i, -1i));

var<private> global2: array<vec3<bool>, 29>;

var<private> global3: bool = false;

var<private> global4: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = all(!(!vec2<bool>(any(vec2<bool>(false, false)), all(global2[_wgslsmith_index_u32(11936u, 29u)]))));
    var_0 = any(vec4<bool>(true, false, all(global2[_wgslsmith_index_u32(u_input.e.x, 29u)]), true));
    var var_1 = Struct_5(~select(~select(u_input.a, u_input.e.xyw, false), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(4294967295u, u_input.e.x, 4294967295u)), false), Struct_4(Struct_1(vec4<bool>(all(vec3<bool>(false, false, false)), true, any(global2[_wgslsmith_index_u32(797u, 29u)]), false), vec4<f32>(-561f, -1425f, -368f, -521f))), min(-firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), vec4<i32>(u_input.c, u_input.d, u_input.d, -1i))), firstTrailingBit(vec4<i32>(-5045i, _wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(u_input.b.x, -49144i)), _wgslsmith_mod_i32(2147483647i, 2147483647i), -3898i))), Struct_1(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), u_input.c != -2147483647i), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1813f, 757f))), -863f, 1f, _wgslsmith_f_op_f32(616f * _wgslsmith_f_op_f32(round(332f))))), u_input.b.x);
    global3 = !(_wgslsmith_f_op_f32(1728f + var_1.b.a.b.x) >= _wgslsmith_f_op_f32(var_1.b.a.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.b.x + -1153f))));
    var var_2 = select(u_input.e.x, ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e.x), u_input.e.ww), ~4294967295u)), var_1.b.a.a.x);
    return u_input.e.x;
}

fn func_2() -> f32 {
    global3 = true;
    global3 = false;
    let var_0 = vec2<u32>(func_3(), min(~10205u, u_input.e.x)) ^ ~u_input.a.zx;
    var var_1 = Struct_1(!vec4<bool>(!(u_input.a.x > u_input.a.x), any(select(global2[_wgslsmith_index_u32(var_0.x, 29u)], global2[_wgslsmith_index_u32(24982u, 29u)], true)), select(true, false, true) && true, select(true, any(vec2<bool>(false, false)), true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-471f, -359f, 1095f, 408f)))))));
    var var_2 = _wgslsmith_mult_u32(u_input.a.x, ~var_0.x);
    return -214f;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = select(!(!arg_2.a.wxy), vec3<bool>(_wgslsmith_f_op_f32(func_2()) == arg_2.b.x, true, true), select(!(!arg_2.a.wzw), select(vec3<bool>(any(arg_2.a.yxy), arg_2.a.x & arg_2.a.x, any(arg_2.a.wz)), global2[_wgslsmith_index_u32(17564u, 29u)], !all(vec2<bool>(arg_0, true))), select(select(!arg_2.a.zyy, select(arg_2.a.xxw, global2[_wgslsmith_index_u32(12800u, 29u)], false), true & arg_2.a.x), select(arg_2.a.zyw, !vec3<bool>(arg_0, arg_0, false), select(arg_2.a.wwz, vec3<bool>(false, arg_2.a.x, true), arg_2.a.x)), arg_0)));
    var var_1 = !vec3<bool>(!any(vec2<bool>(false, arg_2.a.x)), arg_2.a.x, arg_0);
    let var_2 = select(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.e, u_input.e), u_input.e), u_input.e), abs(u_input.a.x)), 37134u, true);
    var var_3 = Struct_2(-715f, _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~var_2, max(u_input.a.x, 34702u)), reverseBits(vec2<u32>(18098u, var_2))), ~(~u_input.e.yw)));
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(294f + arg_2.b.x), _wgslsmith_f_op_f32(-arg_2.b.x)));
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~_wgslsmith_clamp_u32(max(4294967295u, 41355u), u_input.a.x, u_input.e.x >> (2441u % 32u))));
    let var_1 = ~_wgslsmith_div_i32(-1i, ~u_input.b.x) | u_input.c;
    var var_2 = select(vec4<bool>(true, true, !any(vec3<bool>(true, true, true)), abs(func_1(true, vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, var_1), Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(-1000f, -1000f, 948f, 272f)), 511f)) >= _wgslsmith_add_u32(u_input.a.x, 27319u)), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), any(vec3<bool>(false, true, false))), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), true), true), !vec4<bool>(true, all(vec2<bool>(true, false)), all(global2[_wgslsmith_index_u32(var_0, 29u)]), all(vec4<bool>(false, true, true, true))), !(!all(vec2<bool>(true, true)))), select(!vec4<bool>(true, u_input.c >= var_1, var_1 > var_1, true), vec4<bool>(true && all(vec4<bool>(false, true, false, true)), all(vec3<bool>(false, true, false)), all(vec4<bool>(true, true, true, false)) && false, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false))), vec4<bool>(true & select(true, true, false), any(select(vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(var_0, 29u)], global2[_wgslsmith_index_u32(10553u, 29u)])), any(vec3<bool>(true, true, false)), ~var_0 >= var_0)));
    let var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(-214f)));
    let var_4 = -1i;
    var var_5 = ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.e.yy, u_input.a.zz))), _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.e.x), vec2<u32>(u_input.e.x, u_input.a.x))), _wgslsmith_mod_vec2_u32(u_input.a.yz & u_input.e.xy, u_input.e.yy), ~min(u_input.a.yz, u_input.a.xy)));
    let var_6 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(max(1u, countOneBits(0u)), firstLeadingBit(var_0))), vec2<u32>(12490u, var_0 ^ _wgslsmith_dot_vec3_u32(min(u_input.e.xzz, u_input.a), vec3<u32>(38717u, 6437u, var_5.x)))), 18u)];
    var var_7 = Struct_3(vec2<i32>(i32(-1i) * -var_6.c.x, i32(-1i) * -(-45314i & var_1)), var_6.d.b.wz, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_div_f32(var_6.b.a.b.x, var_3.x))), (~u_input.e.yy & var_6.a.yz) & var_6.a.yz), Struct_1(var_6.d.a, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1330f, var_6.b.a.b.x, var_3.x, 535f) - vec4<f32>(var_6.d.b.x, var_6.b.a.b.x, -1525f, -2674f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_6.b.a.b.x, var_6.b.a.b.x, var_3.x, var_6.b.a.b.x)))), _wgslsmith_f_op_vec4_f32(-var_6.d.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.d.b.x);
}

