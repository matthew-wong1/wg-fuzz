struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 47408i;

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(36052i, 6139i, 2147483647i), vec3<i32>(-35323i, 1i, 0i), vec3<i32>(-32302i, 1i, 1i), vec3<i32>(-19717i, i32(-2147483648), 1i), vec3<i32>(-35069i, -54542i, 1i), vec3<i32>(i32(-2147483648), 16069i, 0i), vec3<i32>(13995i, 2147483647i, 5665i), vec3<i32>(897i, 40080i, 1i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(-9588i, 2147483647i, 2147483647i), vec3<i32>(1i, -6441i, 2147483647i), vec3<i32>(22569i, -34055i, 10931i), vec3<i32>(2147483647i, 32707i, -6548i), vec3<i32>(3298i, i32(-2147483648), 16911i), vec3<i32>(2147483647i, 2147483647i, 10617i), vec3<i32>(20739i, 1i, 2147483647i), vec3<i32>(-9334i, -1i, 61197i), vec3<i32>(i32(-2147483648), -18018i, -1i), vec3<i32>(-5778i, 20077i, 23914i), vec3<i32>(10923i, 2147483647i, 0i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(i32(-2147483648), 13818i, 1i), vec3<i32>(i32(-2147483648), 33526i, 10420i), vec3<i32>(2147483647i, 2147483647i, 30761i), vec3<i32>(-87761i, 3294i, 1i), vec3<i32>(-13533i, -9891i, 24677i), vec3<i32>(0i, 1i, -3372i), vec3<i32>(11934i, 42409i, 8189i), vec3<i32>(-15275i, 2147483647i, -1i), vec3<i32>(2147483647i, 56391i, -38311i));

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(-29449i, -14277i, -1i), vec4<f32>(1300f, -499f, 872f, 408f), vec2<u32>(65202u, 1u), -854f, vec4<f32>(1000f, 1635f, -801f, 994f)), Struct_1(vec3<i32>(0i, -30352i, 1i), vec4<f32>(-2046f, 1561f, -1800f, 113f), vec2<u32>(23116u, 31668u), 291f, vec4<f32>(175f, -147f, -1095f, -1000f)), Struct_1(vec3<i32>(0i, 27308i, 1i), vec4<f32>(-432f, -148f, -1000f, -144f), vec2<u32>(35383u, 36934u), -219f, vec4<f32>(-1117f, -1530f, -1119f, 623f)), Struct_1(vec3<i32>(2687i, -29668i, 9373i), vec4<f32>(-1927f, 1685f, 794f, -1349f), vec2<u32>(83133u, 35674u), -1000f, vec4<f32>(-1549f, 170f, 1000f, 316f)), Struct_1(vec3<i32>(-1i, -1i, 1i), vec4<f32>(-861f, -364f, 663f, -236f), vec2<u32>(23356u, 33408u), -377f, vec4<f32>(736f, -195f, -1430f, 1440f)), Struct_1(vec3<i32>(-5901i, 2147483647i, i32(-2147483648)), vec4<f32>(164f, -148f, 664f, -746f), vec2<u32>(24785u, 100608u), 125f, vec4<f32>(-670f, 745f, 670f, 2251f)), Struct_1(vec3<i32>(28451i, 1i, 0i), vec4<f32>(-220f, 487f, -1216f, -303f), vec2<u32>(37447u, 4294967295u), -800f, vec4<f32>(-502f, 1023f, 1438f, -1322f)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -27745i), vec4<f32>(1782f, -858f, -1448f, 1000f), vec2<u32>(90837u, 19633u), -336f, vec4<f32>(-1168f, -1051f, 417f, 368f)), Struct_1(vec3<i32>(1i, i32(-2147483648), 25849i), vec4<f32>(-687f, -1000f, 823f, 509f), vec2<u32>(18247u, 13606u), -220f, vec4<f32>(1251f, -451f, 239f, -306f)), Struct_1(vec3<i32>(-24602i, -30055i, 1i), vec4<f32>(1000f, -1122f, 734f, 1000f), vec2<u32>(16739u, 0u), 988f, vec4<f32>(648f, 211f, 1363f, -382f)), Struct_1(vec3<i32>(-76696i, 6819i, 0i), vec4<f32>(1000f, -670f, 1368f, -641f), vec2<u32>(45488u, 61878u), -732f, vec4<f32>(934f, -315f, 371f, -1543f)), Struct_1(vec3<i32>(-34041i, i32(-2147483648), 19737i), vec4<f32>(231f, -492f, 800f, -736f), vec2<u32>(15337u, 4294967295u), -1279f, vec4<f32>(-514f, -269f, 1236f, -297f)), Struct_1(vec3<i32>(-52911i, 0i, 5418i), vec4<f32>(357f, -149f, -1507f, -1070f), vec2<u32>(1u, 10763u), 710f, vec4<f32>(-1759f, 1000f, 1634f, 1354f)), Struct_1(vec3<i32>(25968i, -6628i, -29795i), vec4<f32>(1008f, 1023f, 763f, 303f), vec2<u32>(9616u, 18713u), -1762f, vec4<f32>(924f, -1326f, -171f, -223f)), Struct_1(vec3<i32>(-22704i, -34617i, 2147483647i), vec4<f32>(-1000f, 278f, 156f, -853f), vec2<u32>(50472u, 4294967295u), 1135f, vec4<f32>(-143f, 296f, -1068f, 285f)), Struct_1(vec3<i32>(3938i, -6285i, -1i), vec4<f32>(-560f, 378f, 293f, -2101f), vec2<u32>(1u, 1u), 906f, vec4<f32>(227f, 1565f, 1362f, 152f)), Struct_1(vec3<i32>(-52420i, -4752i, 40681i), vec4<f32>(-527f, -1167f, 262f, 811f), vec2<u32>(1u, 1u), 1886f, vec4<f32>(-1397f, 134f, -1000f, -1647f)), Struct_1(vec3<i32>(0i, 0i, -7067i), vec4<f32>(-188f, 954f, -529f, 607f), vec2<u32>(1u, 23578u), 132f, vec4<f32>(637f, -1819f, -774f, 114f)), Struct_1(vec3<i32>(45420i, 1i, -59076i), vec4<f32>(-1000f, -716f, -1520f, -389f), vec2<u32>(28133u, 0u), -701f, vec4<f32>(-798f, -486f, -1283f, 130f)), Struct_1(vec3<i32>(2147483647i, 501i, 2147483647i), vec4<f32>(105f, 1000f, -510f, 879f), vec2<u32>(4294967295u, 1u), -1829f, vec4<f32>(-1463f, -453f, -103f, -1950f)));

var<private> global4: Struct_2 = Struct_2(true, true, 1u, Struct_1(vec3<i32>(10052i, -1i, -16249i), vec4<f32>(-1405f, 604f, -1247f, -119f), vec2<u32>(0u, 4294967295u), -1096f, vec4<f32>(800f, -190f, 392f, -636f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1622f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)), _wgslsmith_f_op_f32(select(-184f, -2159f, true))), global4.d.b.x, -1529f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(arg_1.b.zww));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(215f, global4.d.e.x)))), global4.d.d);
    global0 = 0i;
    var var_3 = global3[_wgslsmith_index_u32(arg_1.c.x, 20u)];
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(global4.d.d - -584f), 870f)));
    let var_1 = _wgslsmith_mod_u32(~global4.c, u_input.b);
    let var_2 = Struct_2(func_3(Struct_2(!global4.a, true, u_input.b, global3[_wgslsmith_index_u32(1u, 20u)]), Struct_1(u_input.d.zxw, global4.d.b, ~(vec2<u32>(u_input.b, u_input.c) << (global4.d.c % vec2<u32>(32u))), 234f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.d.e.x, 169f, -118f, -1089f) - global4.d.e) - vec4<f32>(var_0.x, var_0.x, global4.d.b.x, -665f))), vec4<bool>(true, global4.a, true, false)), func_3(Struct_2(_wgslsmith_clamp_i32(-37219i, global2.x, u_input.a.x) < u_input.a.x, -u_input.a.x <= u_input.a.x, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.d.c.x, global4.d.c.x, u_input.c), vec3<u32>(1u, global4.d.c.x, 1u))), global4.d), global4.d, vec4<bool>(true, global4.d.e.x > _wgslsmith_f_op_f32(-global4.d.e.x), global4.a, _wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(sign(var_0.x)))), var_1, global4.d);
    let var_3 = _wgslsmith_mod_vec4_u32(~abs(~vec4<u32>(278u, var_1, u_input.c, var_1)), firstLeadingBit(vec4<u32>(u_input.b, reverseBits(u_input.b), global4.c, global4.d.c.x) & abs(vec4<u32>(11592u, var_2.c, var_1, 53153u))));
    let var_4 = Struct_2(global4.a, true, ~abs(~select(var_2.d.c.x, 4294967295u, var_2.a)), var_2.d);
    return Struct_2(all(vec2<bool>(false, var_4.b)) && global4.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(33933u, u_input.c, 87564u) ^ var_3.xxy, vec3<u32>(var_2.c, 11372u, var_3.x)) >= ~1u, 76358u, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 57581u), 20u)]);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = global4.a;
    let var_1 = _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-945f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * global4.d.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.d.d), 239f)))));
    let var_2 = -1357f;
    global4 = func_2();
    var var_3 = u_input.b;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    global1 = array<vec3<i32>, 31>();
    let var_1 = func_1(vec2<f32>(814f, -781f), u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-130f, _wgslsmith_f_op_f32(abs(global4.d.e.x))) * _wgslsmith_f_op_f32(-519f * _wgslsmith_f_op_f32(floor(global4.d.b.x)))) - _wgslsmith_f_op_f32(select(global4.d.d, 228f, global2.x > _wgslsmith_add_i32(global2.x, 77323i)))));
    global4 = Struct_2(true, any(vec2<bool>(false, all(!vec3<bool>(var_1.a, true, true)))), 0u, global4.d);
    global2 = var_1.d.a;
    global3 = array<Struct_1, 20>();
    var var_2 = ~countOneBits(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-457f, -436f, -339f, var_1.d.e.x), -1i);
}

