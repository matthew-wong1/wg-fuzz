struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(109440u, Struct_1(2147483647i, vec2<f32>(817f, -1406f), 0u), Struct_1(-31025i, vec2<f32>(-357f, -2301f), 41083u)), Struct_2(4294967295u, Struct_1(-1i, vec2<f32>(621f, 1110f), 63111u), Struct_1(-76164i, vec2<f32>(711f, 224f), 59179u)), Struct_2(35186u, Struct_1(32444i, vec2<f32>(866f, -541f), 0u), Struct_1(2147483647i, vec2<f32>(-214f, 2125f), 1u)), Struct_2(42667u, Struct_1(1i, vec2<f32>(-1000f, -1175f), 5721u), Struct_1(0i, vec2<f32>(170f, 1000f), 36777u)), Struct_2(4294967295u, Struct_1(0i, vec2<f32>(647f, 1347f), 0u), Struct_1(2147483647i, vec2<f32>(-290f, -822f), 1u)), Struct_2(1u, Struct_1(-1i, vec2<f32>(1571f, -291f), 1u), Struct_1(0i, vec2<f32>(274f, 348f), 0u)), Struct_2(1u, Struct_1(i32(-2147483648), vec2<f32>(-856f, 179f), 32220u), Struct_1(2147483647i, vec2<f32>(1569f, 759f), 62024u)), Struct_2(74996u, Struct_1(73747i, vec2<f32>(1413f, -704f), 7061u), Struct_1(-1i, vec2<f32>(1000f, 767f), 1u)), Struct_2(33153u, Struct_1(50077i, vec2<f32>(-1333f, 1267f), 35672u), Struct_1(0i, vec2<f32>(-1442f, 503f), 38015u)), Struct_2(81299u, Struct_1(-24716i, vec2<f32>(-693f, 259f), 88681u), Struct_1(-2430i, vec2<f32>(-1053f, -509f), 24486u)), Struct_2(21027u, Struct_1(0i, vec2<f32>(-629f, -398f), 50815u), Struct_1(1i, vec2<f32>(1875f, -1490f), 52644u)), Struct_2(16567u, Struct_1(-1i, vec2<f32>(-792f, -1719f), 42416u), Struct_1(-1i, vec2<f32>(-1192f, -158f), 4294967295u)), Struct_2(24533u, Struct_1(1i, vec2<f32>(-921f, -811f), 88595u), Struct_1(i32(-2147483648), vec2<f32>(1145f, -1522f), 118019u)), Struct_2(8542u, Struct_1(764i, vec2<f32>(-1000f, -1000f), 49563u), Struct_1(2147483647i, vec2<f32>(-261f, 728f), 24103u)), Struct_2(4294967295u, Struct_1(26217i, vec2<f32>(2118f, 127f), 1691u), Struct_1(0i, vec2<f32>(1213f, -584f), 4294967295u)), Struct_2(0u, Struct_1(2147483647i, vec2<f32>(-832f, 106f), 27799u), Struct_1(41224i, vec2<f32>(-1007f, -466f), 0u)), Struct_2(16670u, Struct_1(2147483647i, vec2<f32>(-776f, 1319f), 1u), Struct_1(23083i, vec2<f32>(-383f, -575f), 0u)), Struct_2(61146u, Struct_1(i32(-2147483648), vec2<f32>(-934f, 340f), 4294967295u), Struct_1(i32(-2147483648), vec2<f32>(-1410f, -290f), 65108u)), Struct_2(0u, Struct_1(-34i, vec2<f32>(-168f, 1196f), 25698u), Struct_1(0i, vec2<f32>(-473f, 689f), 0u)), Struct_2(1u, Struct_1(i32(-2147483648), vec2<f32>(184f, -1980f), 4294967295u), Struct_1(-62834i, vec2<f32>(1513f, -648f), 12703u)), Struct_2(4294967295u, Struct_1(2147483647i, vec2<f32>(-913f, 810f), 17778u), Struct_1(-23939i, vec2<f32>(-343f, 1387f), 2655u)), Struct_2(66729u, Struct_1(-24668i, vec2<f32>(704f, 1000f), 33074u), Struct_1(-1i, vec2<f32>(439f, 436f), 22855u)), Struct_2(41062u, Struct_1(-65997i, vec2<f32>(-774f, 702f), 4294967295u), Struct_1(-41560i, vec2<f32>(-1130f, 915f), 30907u)), Struct_2(4294967295u, Struct_1(i32(-2147483648), vec2<f32>(-572f, 613f), 4294967295u), Struct_1(0i, vec2<f32>(1472f, 334f), 1u)), Struct_2(70244u, Struct_1(32721i, vec2<f32>(1217f, 1061f), 67815u), Struct_1(-1i, vec2<f32>(-639f, 1007f), 4294967295u)), Struct_2(1u, Struct_1(-37727i, vec2<f32>(-453f, -377f), 144u), Struct_1(-38440i, vec2<f32>(-1000f, 1398f), 96018u)), Struct_2(22348u, Struct_1(1i, vec2<f32>(-486f, 1000f), 48645u), Struct_1(1i, vec2<f32>(-595f, 1132f), 4294967295u)), Struct_2(1u, Struct_1(-26218i, vec2<f32>(-866f, 1218f), 43863u), Struct_1(13568i, vec2<f32>(-1000f, -1269f), 55273u)));

var<private> global2: i32 = -1i;

var<private> global3: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<u32>) -> i32 {
    return _wgslsmith_mod_i32(-19548i, arg_1);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1.b.a < -2147483647i;
    global3 = arg_1.b.a;
    var var_1 = arg_1.b;
    global2 = -_wgslsmith_mult_i32(62792i, max(~3078i, firstTrailingBit(_wgslsmith_sub_i32(arg_0.c.a, var_1.a))));
    let var_2 = (vec3<u32>(4294967295u, 3828u, abs(_wgslsmith_div_u32(u_input.a.x, 56963u))) >> (~select(vec3<u32>(var_1.c, 4674u, 116182u) & vec3<u32>(var_1.c, u_input.a.x, 10000u), vec3<u32>(1u, 16844u, arg_0.b.c), vec3<bool>(true, false, true)) % vec3<u32>(32u))) >> (vec3<u32>(u_input.a.x << ((u_input.a.x | max(arg_1.c.c, u_input.a.x)) % 32u), firstTrailingBit(var_1.c), 26091u) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(f32(-1f) * -768f);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = vec2<u32>(abs(~_wgslsmith_div_u32(firstTrailingBit(65184u), arg_3.a.c)), ~(25988u >> (~arg_3.a.c % 32u)) & 22919u);
    global2 = -2147483647i;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.x)))))), 1130f);
    var var_2 = arg_3.a.b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(func_3(Struct_2(0u, arg_1, arg_3.a), Struct_2(6251u, Struct_1(arg_2.a.a, arg_1.b, 4294967295u), arg_3.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.b.x), arg_1.b.x)))));
    return arg_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    let var_0 = ~2147483647i;
    let var_1 = select(select(arg_2.wzw, arg_2.zzx, select(!(!arg_2.zyy), select(vec3<bool>(true, arg_2.x, arg_2.x), arg_2.yyz, select(arg_2.wyz, vec3<bool>(true, arg_2.x, arg_2.x), arg_2.x)), !vec3<bool>(arg_2.x, true, arg_2.x))), arg_2.wxy, arg_2.wxw);
    global3 = 2147483647i;
    var var_2 = false || !(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) > ~_wgslsmith_mult_u32(arg_1.c, 1u));
    global2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-20960i, abs(-(-83583i >> (1u % 32u))), ~(-arg_1.a)), vec3<i32>(_wgslsmith_clamp_i32(-14825i, 0i, _wgslsmith_sub_i32(-19561i, var_0)) << (firstLeadingBit(~74169u) % 32u), 1i, 1370i));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(543f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0.b.x)), 1031f))) + 295f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 28>();
    let var_0 = vec3<i32>(func_1(11842u << ((~u_input.a.x | 1u) % 32u), -48410i, vec2<u32>(u_input.a.x, 0u)), i32(-1i) * -43321i, firstTrailingBit(~1i));
    global0 = ~(-var_0.x) | 0i;
    global3 = min(~(-2147483647i), -2147483647i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(527f, 1256f)), 1u), func_2(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-148f, 231f)), u_input.a.x), Struct_3(Struct_1(42653i, vec2<f32>(-147f, -2060f), 46460u)), Struct_3(Struct_1(var_0.x, vec2<f32>(1878f, 1540f), 4294967295u))), vec4<bool>(true, (var_0.x ^ var_0.x) == max(35973i, var_0.x), true, select(var_0.x == 2147483647i, true, false)))));
    global0 = ~2147483647i;
    var var_2 = Struct_1(abs(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 27018i), var_0.zx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(662f, -402f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-105f, -581f), vec2<f32>(313f, -2096f))), func_2(vec2<bool>(true, true), Struct_1(var_0.x, vec2<f32>(1017f, 542f), u_input.a.x), Struct_3(Struct_1(-57402i, vec2<f32>(1000f, -1989f), 16443u)), Struct_3(Struct_1(var_0.x, vec2<f32>(-1447f, -393f), 1u))).b, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))))))), _wgslsmith_mult_u32(~13972u, u_input.a.x));
    global1 = array<Struct_2, 28>();
    let var_3 = global1[_wgslsmith_index_u32(69u, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer((var_2.c | reverseBits(_wgslsmith_mod_u32(var_3.b.c, var_3.a))) << (51780u % 32u));
}

