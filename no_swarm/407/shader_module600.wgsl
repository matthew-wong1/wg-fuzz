struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec2<u32>(61911u, 4294967295u), vec4<f32>(-747f, -604f, -2145f, 1371f), Struct_1(vec2<bool>(true, false), vec4<bool>(false, true, true, true), -241f, vec2<f32>(724f, -427f), 1262f), vec2<i32>(-1i, 2147483647i)), Struct_4(vec2<u32>(35972u, 24999u), vec4<f32>(-1056f, -1000f, 827f, 107f), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, true), -1211f, vec2<f32>(1015f, -104f), 739f), vec2<i32>(-3821i, -16375i)), Struct_4(vec2<u32>(35110u, 15331u), vec4<f32>(1168f, 835f, -1156f, 935f), Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, true, true), -2219f, vec2<f32>(1000f, -627f), 870f), vec2<i32>(2147483647i, 69748i)), Struct_4(vec2<u32>(0u, 68292u), vec4<f32>(-993f, -247f, 490f, 1191f), Struct_1(vec2<bool>(true, true), vec4<bool>(false, false, true, true), -1484f, vec2<f32>(759f, -1654f), 761f), vec2<i32>(37398i, 2147483647i)), Struct_4(vec2<u32>(4294967295u, 52477u), vec4<f32>(-165f, 2589f, -755f, -2166f), Struct_1(vec2<bool>(false, false), vec4<bool>(false, true, false, false), -517f, vec2<f32>(-509f, 907f), 104f), vec2<i32>(-7012i, -1i)), Struct_4(vec2<u32>(25328u, 60440u), vec4<f32>(457f, 545f, 1086f, -495f), Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, true, false), 491f, vec2<f32>(1000f, -371f), -295f), vec2<i32>(-7159i, 1i)), Struct_4(vec2<u32>(4294967295u, 84961u), vec4<f32>(-1000f, -817f, -296f, -545f), Struct_1(vec2<bool>(false, false), vec4<bool>(false, true, true, false), -1599f, vec2<f32>(-506f, 120f), -684f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_4(vec2<u32>(64032u, 25692u), vec4<f32>(-501f, -1425f, -247f, 548f), Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, true, false), -772f, vec2<f32>(502f, -1000f), 1229f), vec2<i32>(7681i, 619i)), Struct_4(vec2<u32>(36992u, 1u), vec4<f32>(170f, 975f, 1783f, 1001f), Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, true, false), -205f, vec2<f32>(-232f, 543f), 1231f), vec2<i32>(2147483647i, 1i)), Struct_4(vec2<u32>(0u, 78879u), vec4<f32>(-1664f, 339f, 1000f, 814f), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, true), 575f, vec2<f32>(311f, 710f), -896f), vec2<i32>(2147483647i, 2147483647i)), Struct_4(vec2<u32>(2766u, 1u), vec4<f32>(-1000f, -290f, 804f, -1705f), Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, false, true), 437f, vec2<f32>(-410f, 2134f), 382f), vec2<i32>(-1i, 17109i)), Struct_4(vec2<u32>(1545u, 35860u), vec4<f32>(-259f, 1000f, -655f, -1697f), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, false), -839f, vec2<f32>(127f, -2021f), -437f), vec2<i32>(-10147i, 4439i)), Struct_4(vec2<u32>(55632u, 53802u), vec4<f32>(867f, 806f, -1443f, -1466f), Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, false, false), -769f, vec2<f32>(1353f, -235f), 695f), vec2<i32>(18629i, -1i)), Struct_4(vec2<u32>(50947u, 0u), vec4<f32>(2173f, -329f, -475f, 248f), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, true), 1362f, vec2<f32>(-762f, 181f), -434f), vec2<i32>(-10731i, 5901i)), Struct_4(vec2<u32>(16028u, 12159u), vec4<f32>(-149f, -1000f, -941f, 245f), Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, false, true), 151f, vec2<f32>(-859f, 1723f), -1000f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_4(vec2<u32>(120359u, 38104u), vec4<f32>(-1008f, -166f, 244f, 489f), Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, false, false), -556f, vec2<f32>(-770f, 748f), -128f), vec2<i32>(-1i, -1i)), Struct_4(vec2<u32>(41313u, 0u), vec4<f32>(-455f, 1000f, -1672f, -1000f), Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, false, true), 1821f, vec2<f32>(504f, -1100f), 739f), vec2<i32>(-23391i, -1102i)), Struct_4(vec2<u32>(11768u, 23968u), vec4<f32>(-1762f, -265f, 2060f, 1596f), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, true), 238f, vec2<f32>(-732f, 1546f), -669f), vec2<i32>(-9083i, 30190i)), Struct_4(vec2<u32>(41808u, 63026u), vec4<f32>(444f, -571f, 209f, 488f), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, false), 1109f, vec2<f32>(396f, 524f), 1000f), vec2<i32>(4316i, -13681i)), Struct_4(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(1000f, 119f, -294f, -1377f), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, false, false), 2354f, vec2<f32>(850f, -597f), -2447f), vec2<i32>(-10771i, 28530i)), Struct_4(vec2<u32>(32632u, 1u), vec4<f32>(1264f, -1734f, 1155f, -328f), Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, false, true), 309f, vec2<f32>(-1291f, -848f), -787f), vec2<i32>(1i, -1i)));

var<private> global1: array<bool, 21> = array<bool, 21>(false, false, true, true, true, false, true, false, true, false, false, true, false, true, false, true, false, true, true, false, true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    let var_0 = Struct_1(!vec2<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(0u, u_input.d.x)), 21u)], true), !(!(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global1[_wgslsmith_index_u32(54286u, 21u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], false, true), global1[_wgslsmith_index_u32(u_input.d.x, 21u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1251f * -785f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2180f) * _wgslsmith_f_op_f32(2819f + 1227f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1221f, 1339f)))), 1073f);
    global0 = array<Struct_4, 21>();
    global1 = array<bool, 21>();
    global1 = array<bool, 21>();
    let var_1 = u_input.d.x >> (u_input.d.x % 32u);
    return ~u_input.d << (u_input.d % vec2<u32>(32u));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-526f, 2021f, -2418f)), vec3<f32>(2129f, -922f, 323f), select(vec3<bool>(false, global1[_wgslsmith_index_u32(36144u, 21u)], false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(arg_1.x, 21u)]), vec3<bool>(global1[_wgslsmith_index_u32(32178u, 21u)], true, global1[_wgslsmith_index_u32(4294967295u, 21u)]))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2023f, -514f, -619f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-499f, -1349f, 1151f) - vec3<f32>(-1238f, -1000f, 1163f))))), _wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 48197i, u_input.c, u_input.c), vec4<i32>(32324i, 60598i, u_input.e, -2147483647i)), vec4<i32>(u_input.e, u_input.e, u_input.b, u_input.a) >> (vec4<u32>(arg_1.x, 1u, arg_1.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(select(~vec4<i32>(u_input.c, -2147483647i, u_input.c, -54741i), ~vec4<i32>(u_input.e, 1636i, 1i, u_input.c), global1[_wgslsmith_index_u32(~arg_1.x, 21u)]), _wgslsmith_sub_vec4_i32(select(vec4<i32>(50008i, -2147483647i, u_input.a, u_input.b), vec4<i32>(-30299i, u_input.b, -2147483647i, -15315i), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 21u)], true, true)), ~vec4<i32>(-2147483647i, u_input.c, 16267i, u_input.b))), abs(vec4<i32>(max(u_input.a, -5315i), _wgslsmith_add_i32(u_input.a, u_input.c), -2147483647i, 1i))), -vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.e, u_input.a))), min(u_input.e, u_input.b), -u_input.b, ~u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1346f, 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-791f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1120f))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(110f, _wgslsmith_f_op_f32(min(-629f, 749f)), _wgslsmith_div_f32(-889f, 701f), 1000f)))));
    var var_1 = ~(-_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 8205i), ~var_0.c.wx)) ^ (_wgslsmith_div_i32((u_input.b << (arg_1.x % 32u)) << (~22227u % 32u), 34022i) << (~abs(abs(1u)) % 32u));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)), min(var_0.b, var_0.b), var_0.c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, 2613f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - 1438f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_0.a.x * -597f))))));
    var var_2 = ~abs(firstLeadingBit(-vec3<i32>(var_0.b.x, u_input.c, u_input.b)));
    var var_3 = var_0.b.zwz;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.d.xz)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_4 {
    global0 = array<Struct_4, 21>();
    global0 = array<Struct_4, 21>();
    var var_0 = ~u_input.d;
    var var_1 = Struct_2(arg_1.a, arg_1.c, arg_1.c);
    var_0 = ~vec2<u32>(select(var_0.x, ~var_0.x, true), (_wgslsmith_dot_vec3_u32(vec3<u32>(42098u, 13047u, var_0.x), vec3<u32>(16873u, var_0.x, 0u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, u_input.d.x, u_input.d.x), vec4<u32>(0u, 1u, u_input.d.x, 4294967295u))) >> (59878u % 32u));
    return Struct_4(vec2<u32>(82824u, ~u_input.d.x), arg_2.d, Struct_1(!var_1.c.b.zy, !select(vec4<bool>(arg_1.c.b.x, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global1[_wgslsmith_index_u32(8865u, 21u)], false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(45019u, 21u)], global1[_wgslsmith_index_u32(135u, 21u)]), !global1[_wgslsmith_index_u32(86801u, 21u)]), _wgslsmith_div_f32(1111f, var_1.a.x), arg_1.c.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(4294967295u, ~u_input.d)).x))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(u_input.c, -326i), ~arg_2.b.wx), arg_2.c.xx), _wgslsmith_mult_vec2_i32(arg_2.b.xx & (vec2<i32>(u_input.c, arg_2.b.x) & arg_2.b.zx), reverseBits(vec2<i32>(-2147483647i, arg_0.x)))));
}

fn func_1() -> vec4<f32> {
    let var_0 = func_4(~vec2<i32>(i32(-1i) * -1i, 1i), Struct_2(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_sub_u32(u_input.d.x, 1u), func_2(_wgslsmith_div_i32(2147483647i, u_input.c)))), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(global1[_wgslsmith_index_u32(54315u, 21u)], global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec2<bool>(global1[_wgslsmith_index_u32(973u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), false), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], true, global1[_wgslsmith_index_u32(15798u, 21u)], true))), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], true, global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec4<bool>(true, false, true, true), !global1[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_f32(102f + _wgslsmith_f_op_f32(-1047f + 320f)), vec2<f32>(_wgslsmith_f_op_f32(select(807f, -112f, global1[_wgslsmith_index_u32(13294u, 21u)])), 1f), _wgslsmith_div_f32(1214f, -1000f)), Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)] || false, true & global1[_wgslsmith_index_u32(19807u, 21u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u >> (u_input.d.x % 32u), 21u)], all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global1[_wgslsmith_index_u32(82049u, 21u)], global1[_wgslsmith_index_u32(24131u, 21u)]))), -395f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(314f, -1008f) * vec2<f32>(941f, -340f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1997f, -241f) - vec2<f32>(-425f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(391f + 1037f) * _wgslsmith_f_op_f32(f32(-1f) * -224f)))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(1000f, -647f)), 143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-664f, 1057f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -522f))), -reverseBits(-vec4<i32>(u_input.e, -2147483647i, u_input.a, u_input.b)), max(min(vec4<i32>(u_input.e, 0i, 18738i, 2147483647i), vec4<i32>(-1i, u_input.c, u_input.c, 0i)) & vec4<i32>(u_input.a, u_input.b, u_input.e, 0i), -vec4<i32>(u_input.b, u_input.e, 0i, u_input.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(402f, -1538f, -2249f, 667f)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1008f))));
    var var_2 = var_0.c.e;
    var_2 = 762f;
    let var_3 = !(var_1 > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.x + var_1))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b - var_0.b)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1312f, var_0.b.x, var_0.c.e, var_1) - var_0.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1())));
    var var_1 = global1[_wgslsmith_index_u32(u_input.d.x, 21u)];
    let var_2 = false;
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -454f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1662f - 362f)), true)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -305f))), Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], -2147483647i == ~u_input.a), select(select(func_4(vec2<i32>(-2147483647i, -2147483647i), Struct_2(var_0.zy, Struct_1(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec4<bool>(global1[_wgslsmith_index_u32(14647u, 21u)], false, false, false), -623f, var_0.xx, 1000f), Struct_1(vec2<bool>(false, var_2), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), var_0.x, vec2<f32>(var_0.x, -391f), -750f)), Struct_3(vec3<f32>(654f, 931f, var_0.x), vec4<i32>(u_input.c, u_input.e, 18499i, u_input.a), vec4<i32>(u_input.c, u_input.a, 4153i, -44758i), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))).c.b, vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], true, false), true), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], true, global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), var_2), 1398f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1414f, 686f), var_0.yy)), var_0.xw, true)), vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(var_0.x + -453f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-332f)))))), Struct_1(func_4(vec2<i32>(u_input.a, -2147483647i), Struct_2(var_0.yy, func_4(vec2<i32>(u_input.a, u_input.a), Struct_2(var_0.zx, Struct_1(vec2<bool>(true, var_2), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], var_2, var_2, false), 1000f, vec2<f32>(-438f, 685f), -2174f), Struct_1(vec2<bool>(false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], true, var_2), -273f, vec2<f32>(-247f, 272f), var_0.x)), Struct_3(vec3<f32>(-643f, var_0.x, -1000f), vec4<i32>(u_input.a, u_input.b, u_input.c, -1i), vec4<i32>(-34904i, -67601i, u_input.b, u_input.b), vec4<f32>(var_0.x, var_0.x, -403f, -973f))).c, Struct_1(vec2<bool>(false, var_2), vec4<bool>(var_2, false, false, var_2), var_0.x, vec2<f32>(var_0.x, 666f), 262f)), Struct_3(var_0.zwy, vec4<i32>(-26328i, u_input.e, -1i, u_input.a), ~vec4<i32>(-5673i, u_input.c, u_input.e, u_input.c), _wgslsmith_f_op_vec4_f32(-var_0))).c.b.ww, vec4<bool>(true, var_2, var_2, true), var_0.x, var_0.yw, var_0.x));
    var_1 = any(func_4(vec2<i32>(u_input.c, firstTrailingBit(2761i) & ~(-43046i)), Struct_2(vec2<f32>(var_3.a.x, -188f), func_4(-vec2<i32>(u_input.a, u_input.b), Struct_2(var_0.zy, Struct_1(var_3.c.b.yz, vec4<bool>(var_3.b.a.x, true, false, true), -234f, vec2<f32>(var_3.a.x, var_3.b.e), -2391f), Struct_1(vec2<bool>(false, var_3.c.a.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global1[_wgslsmith_index_u32(42502u, 21u)], global1[_wgslsmith_index_u32(u_input.d.x, 21u)], var_2), var_3.b.c, vec2<f32>(var_0.x, -216f), var_0.x)), Struct_3(var_0.zzw, vec4<i32>(u_input.b, u_input.c, -717i, 1i), vec4<i32>(23363i, u_input.e, 2147483647i, u_input.b), vec4<f32>(1018f, 111f, var_0.x, -359f))).c, var_3.b), Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.xwy), vec4<i32>(~28503i, u_input.c, _wgslsmith_add_i32(u_input.e, u_input.b), u_input.e), ~vec4<i32>(53220i, -31158i, u_input.a, -41256i) ^ vec4<i32>(u_input.c, 0i, u_input.c, u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, 143f, -437f, var_0.x)) - vec4<f32>(var_3.b.c, 130f, 711f, var_3.c.d.x)))).c.b.wxy);
    var var_4 = Struct_1(select(vec2<bool>(true || global1[_wgslsmith_index_u32(~u_input.d.x, 21u)], (u_input.c ^ 2147483647i) < (i32(-1i) * -39523i)), var_3.c.b.zy, var_3.c.b.xy), select(!(!vec4<bool>(var_2, true, false, false)), vec4<bool>(~u_input.d.x >= 45919u, var_3.c.b.x, (u_input.e < u_input.a) && (false == global1[_wgslsmith_index_u32(1u, 21u)]), true), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 42773u, 11323u, u_input.d.x), vec4<u32>(55137u, 44682u, 62932u, 4294967295u))) == ~u_input.d.x), _wgslsmith_f_op_f32(-794f - -641f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(126f, _wgslsmith_f_op_f32(194f * _wgslsmith_f_op_f32(146f - var_0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1198f));
    let var_5 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -890f, false))) > -1404f, true, 53148i >= -(~u_input.b), true);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, 4294967295u), select(_wgslsmith_sub_vec4_u32(vec4<u32>(23674u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(20565u, u_input.d.x, 16807u, 1u)), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), true)), (~vec4<u32>(0u, 1u, u_input.d.x, 59005u) ^ vec4<u32>(0u, u_input.d.x, u_input.d.x, 15514u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(21117u, u_input.d.x, 1u, 62486u) << (vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(u_input.d.x, u_input.d.x, 24574u, u_input.d.x) & vec4<u32>(46802u, u_input.d.x, 0u, u_input.d.x)), var_4.b), -12467i, -24569i);
}

