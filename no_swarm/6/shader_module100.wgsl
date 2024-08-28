struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_1(-898f, vec2<u32>(4444u, 10017u)), 18278u, 1898u, Struct_2(Struct_1(-105f, vec2<u32>(0u, 1u)), Struct_1(-1546f, vec2<u32>(4294967295u, 0u)), 22683i, 721f), vec3<f32>(-122f, 452f, -101f)), Struct_4(Struct_1(382f, vec2<u32>(38216u, 27077u)), 10034u, 0u, Struct_2(Struct_1(170f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(349f, vec2<u32>(13262u, 4294967295u)), 0i, -1895f), vec3<f32>(883f, -349f, -1455f)), Struct_4(Struct_1(1175f, vec2<u32>(17939u, 32377u)), 12810u, 31610u, Struct_2(Struct_1(1445f, vec2<u32>(0u, 1u)), Struct_1(197f, vec2<u32>(4294967295u, 50794u)), 1i, 1814f), vec3<f32>(1384f, -583f, 201f)), Struct_4(Struct_1(1014f, vec2<u32>(28979u, 2407u)), 0u, 4294967295u, Struct_2(Struct_1(-637f, vec2<u32>(43027u, 4294967295u)), Struct_1(-700f, vec2<u32>(16742u, 39208u)), 0i, 355f), vec3<f32>(399f, -1415f, 1261f)), Struct_4(Struct_1(-1024f, vec2<u32>(16229u, 4294967295u)), 62200u, 0u, Struct_2(Struct_1(865f, vec2<u32>(0u, 8222u)), Struct_1(1235f, vec2<u32>(90569u, 32683u)), 24794i, -110f), vec3<f32>(305f, -1657f, -666f)), Struct_4(Struct_1(284f, vec2<u32>(0u, 61993u)), 0u, 29179u, Struct_2(Struct_1(-1024f, vec2<u32>(1u, 25961u)), Struct_1(383f, vec2<u32>(18588u, 24305u)), -26863i, 702f), vec3<f32>(1047f, 243f, 2044f)), Struct_4(Struct_1(326f, vec2<u32>(110868u, 4294967295u)), 0u, 4294967295u, Struct_2(Struct_1(611f, vec2<u32>(30860u, 83784u)), Struct_1(-1278f, vec2<u32>(0u, 15082u)), 1i, -1000f), vec3<f32>(724f, -488f, -402f)), Struct_4(Struct_1(-854f, vec2<u32>(0u, 91448u)), 15189u, 4294967295u, Struct_2(Struct_1(468f, vec2<u32>(1u, 1u)), Struct_1(-797f, vec2<u32>(0u, 444u)), -1i, 770f), vec3<f32>(-525f, 373f, -768f)), Struct_4(Struct_1(537f, vec2<u32>(4294967295u, 11879u)), 0u, 0u, Struct_2(Struct_1(569f, vec2<u32>(61511u, 22839u)), Struct_1(-450f, vec2<u32>(146786u, 0u)), -31832i, 861f), vec3<f32>(-793f, 110f, 2829f)), Struct_4(Struct_1(1085f, vec2<u32>(1u, 37990u)), 0u, 4294967295u, Struct_2(Struct_1(1261f, vec2<u32>(1u, 2213u)), Struct_1(714f, vec2<u32>(22042u, 130326u)), 2147483647i, -274f), vec3<f32>(-153f, -532f, -864f)), Struct_4(Struct_1(1000f, vec2<u32>(1u, 0u)), 22856u, 1u, Struct_2(Struct_1(1173f, vec2<u32>(964u, 0u)), Struct_1(410f, vec2<u32>(81438u, 30992u)), -48925i, 240f), vec3<f32>(-1890f, 298f, 1939f)), Struct_4(Struct_1(1318f, vec2<u32>(54636u, 1u)), 27777u, 0u, Struct_2(Struct_1(-190f, vec2<u32>(4294967295u, 29582u)), Struct_1(440f, vec2<u32>(1u, 0u)), 2147483647i, 478f), vec3<f32>(-853f, 437f, 1000f)), Struct_4(Struct_1(-764f, vec2<u32>(24380u, 78638u)), 1u, 8580u, Struct_2(Struct_1(-1000f, vec2<u32>(50142u, 0u)), Struct_1(-1780f, vec2<u32>(32794u, 0u)), 2147483647i, -1138f), vec3<f32>(-915f, -715f, 677f)), Struct_4(Struct_1(439f, vec2<u32>(710u, 15825u)), 97961u, 11675u, Struct_2(Struct_1(-1746f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(-1065f, vec2<u32>(1u, 0u)), 34454i, -442f), vec3<f32>(-2490f, 1303f, 928f)), Struct_4(Struct_1(1000f, vec2<u32>(0u, 0u)), 53673u, 0u, Struct_2(Struct_1(1003f, vec2<u32>(15595u, 1u)), Struct_1(1413f, vec2<u32>(20601u, 0u)), -39508i, 585f), vec3<f32>(1584f, 640f, 251f)), Struct_4(Struct_1(502f, vec2<u32>(4294967295u, 0u)), 4198u, 63077u, Struct_2(Struct_1(207f, vec2<u32>(34417u, 46109u)), Struct_1(-1000f, vec2<u32>(0u, 24742u)), -67832i, -1000f), vec3<f32>(-876f, -2115f, 1013f)), Struct_4(Struct_1(-718f, vec2<u32>(628u, 486u)), 60525u, 0u, Struct_2(Struct_1(-400f, vec2<u32>(53976u, 51031u)), Struct_1(1484f, vec2<u32>(51807u, 4294967295u)), 26166i, -1058f), vec3<f32>(-638f, -857f, 1022f)), Struct_4(Struct_1(-789f, vec2<u32>(65507u, 16942u)), 28673u, 146054u, Struct_2(Struct_1(304f, vec2<u32>(30888u, 691u)), Struct_1(181f, vec2<u32>(4294967295u, 39760u)), -1i, -1000f), vec3<f32>(1691f, 1088f, 2290f)), Struct_4(Struct_1(-2313f, vec2<u32>(5748u, 17744u)), 4294967295u, 2390u, Struct_2(Struct_1(-664f, vec2<u32>(69093u, 66777u)), Struct_1(-998f, vec2<u32>(0u, 50698u)), 12772i, 1893f), vec3<f32>(-1510f, -1561f, 1726f)), Struct_4(Struct_1(-265f, vec2<u32>(63234u, 0u)), 79663u, 0u, Struct_2(Struct_1(-514f, vec2<u32>(53910u, 3252u)), Struct_1(393f, vec2<u32>(51741u, 0u)), -27858i, -150f), vec3<f32>(-152f, 177f, 381f)), Struct_4(Struct_1(1411f, vec2<u32>(1u, 27217u)), 1u, 1u, Struct_2(Struct_1(713f, vec2<u32>(35603u, 0u)), Struct_1(564f, vec2<u32>(4294967295u, 44508u)), 48626i, 839f), vec3<f32>(559f, -467f, -259f)), Struct_4(Struct_1(-443f, vec2<u32>(4294967295u, 9677u)), 4294967295u, 0u, Struct_2(Struct_1(670f, vec2<u32>(20919u, 1u)), Struct_1(-843f, vec2<u32>(1u, 0u)), -21285i, -1476f), vec3<f32>(-961f, -1420f, 994f)));

var<private> global2: Struct_4 = Struct_4(Struct_1(128f, vec2<u32>(1u, 805u)), 10556u, 4294967295u, Struct_2(Struct_1(477f, vec2<u32>(4294967295u, 12816u)), Struct_1(-1225f, vec2<u32>(6948u, 1u)), i32(-2147483648), 951f), vec3<f32>(1027f, 2348f, -507f));

var<private> global3: array<f32, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    global3 = array<f32, 1>();
    let var_0 = Struct_3(abs(abs(41100u)));
    global0 = ~(~_wgslsmith_dot_vec3_u32(u_input.d.zzy, vec3<u32>(0u, firstTrailingBit(global2.c), var_0.a)));
    let var_1 = global2.a;
    global1 = array<Struct_4, 22>();
    return select(vec3<bool>(true, all(vec3<bool>(false, false, any(vec3<bool>(true, true, false)))), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), select(!vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(true, false, global2.d.c < firstLeadingBit(global2.d.c)), select(vec3<bool>(false, 21960i == global2.d.c, true), vec3<bool>(true, true, true), _wgslsmith_dot_vec4_i32(vec4<i32>(-21731i, global2.d.c, 49034i, -67730i), vec4<i32>(2147483647i, global2.d.c, -2147483647i, global2.d.c)) >= abs(global2.d.c))));
}

fn func_2() -> Struct_3 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 22u)];
    var var_1 = -4183i;
    var var_2 = 25952u;
    let var_3 = func_3(vec2<u32>(1u, ~max(1u, ~22497u)));
    var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(global2.d.c, global2.d.c), -min(firstTrailingBit(-1i), 1i) | ~var_0.d.c);
    return Struct_3(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(countOneBits(var_0.b), _wgslsmith_add_u32(var_0.b, var_0.a.b.x)), _wgslsmith_add_u32(~51139u, ~u_input.b)), _wgslsmith_sub_u32(global2.d.a.b.x, 4294967295u)));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = func_2();
    let var_1 = -reverseBits(vec4<i32>(1i, max(~global2.d.c, max(global2.d.c, 40674i)), -1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global2.d.c, 4779i), vec2<i32>(global2.d.c, 31561i)), global2.d.c));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(2107f - _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(firstLeadingBit(27923u | u_input.d.x), 1u)], 1637f, true))), ~u_input.d.wz);
    var_2 = Struct_1(_wgslsmith_f_op_f32(floor(global2.d.b.a)), firstTrailingBit(abs(vec2<u32>(global2.a.b.x, var_0.a)) >> (abs(firstLeadingBit(vec2<u32>(global2.a.b.x, global2.c))) % vec2<u32>(32u))));
    global2 = Struct_4(global2.d.a, 0u, reverseBits(4294967295u & _wgslsmith_add_u32(~var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 66225u, 12786u), vec3<u32>(33712u, 110119u, var_0.a)))), global2.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.e)), vec3<f32>(_wgslsmith_f_op_f32(733f + -358f), 214f, _wgslsmith_f_op_f32(-111f * -1205f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1515f)) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 1u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) + global3[_wgslsmith_index_u32(var_2.b.x, 1u)]), _wgslsmith_f_op_f32(max(-899f, _wgslsmith_f_op_f32(-1033f + 125f))))));
    return -913f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(290f)))))));
    global2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(global2.a.b.x, 1u)], global3[_wgslsmith_index_u32(u_input.d.x, 1u)])) - _wgslsmith_f_op_f32(select(-1000f, -686f, true))))), u_input.c.xw), _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(1u, 48526u, 16481u, 4294967295u), vec4<u32>(global2.d.a.b.x, 106971u, u_input.d.x, 30363u), vec4<bool>(false, true, false, true))), min(vec4<u32>(~6604u, 4294967295u, u_input.a, 0u), u_input.d)), firstTrailingBit(0u), Struct_2(Struct_1(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(918f * var_0))), vec2<u32>(global2.a.b.x, 58211u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(9633u, 1u)]))), firstLeadingBit(vec2<u32>(22290u, global2.b))), i32(-1i) * -_wgslsmith_mod_i32(global2.d.c, global2.d.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2157f, 826f)), -1005f)), vec3<f32>(_wgslsmith_f_op_f32(-1116f + global3[_wgslsmith_index_u32(1732u, 1u)]), -292f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1181f * -177f) + var_0) - -670f)));
    let var_1 = global2.d.b;
    global2 = Struct_4(global2.d.b, global2.d.b.b.x, ~(~(u_input.b ^ global2.a.b.x)) ^ 10625u, Struct_2(global2.d.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1452f)), vec2<u32>(~global2.a.b.x, _wgslsmith_mult_u32(u_input.d.x, 1u))), global2.d.c, global3[_wgslsmith_index_u32(~38722u, 1u)]), _wgslsmith_f_op_vec3_f32(-global2.e));
    global0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.c);
}

