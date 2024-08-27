struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(2147483647i, 0u, vec4<f32>(1821f, -818f, 427f, 733f), vec3<i32>(1i, -5408i, -32816i)), Struct_1(19726i, 95523u, vec4<f32>(1000f, 582f, -1129f, -225f), vec3<i32>(22632i, i32(-2147483648), -23907i)), Struct_1(i32(-2147483648), 4294967295u, vec4<f32>(434f, 524f, 196f, 2215f), vec3<i32>(33229i, 1i, 0i)), Struct_1(-41908i, 1u, vec4<f32>(1305f, -305f, -361f, -1749f), vec3<i32>(-721i, i32(-2147483648), 8952i)), Struct_1(-35282i, 4294967295u, vec4<f32>(816f, 2096f, -933f, -135f), vec3<i32>(-65675i, 21830i, 22562i)), Struct_1(2147483647i, 4294967295u, vec4<f32>(335f, -1555f, -1778f, -2320f), vec3<i32>(i32(-2147483648), 2147483647i, 76425i)), Struct_1(2147483647i, 1u, vec4<f32>(-150f, 1226f, 1804f, 939f), vec3<i32>(0i, 31440i, 3087i)), Struct_1(i32(-2147483648), 21462u, vec4<f32>(-617f, 484f, 775f, 608f), vec3<i32>(0i, -68488i, 1i)), Struct_1(63398i, 10629u, vec4<f32>(479f, -313f, -102f, -453f), vec3<i32>(-1i, 4935i, -1i)), Struct_1(0i, 20578u, vec4<f32>(-869f, 1268f, 1255f, 905f), vec3<i32>(-26006i, 1i, 13025i)), Struct_1(-1i, 13580u, vec4<f32>(991f, -871f, 422f, -207f), vec3<i32>(1i, 0i, 5471i)), Struct_1(21658i, 0u, vec4<f32>(-1000f, 147f, 473f, -1959f), vec3<i32>(656i, 14087i, 58210i)), Struct_1(1i, 22793u, vec4<f32>(-175f, 220f, -1780f, -285f), vec3<i32>(i32(-2147483648), 25804i, i32(-2147483648))), Struct_1(-19297i, 0u, vec4<f32>(249f, 1244f, -2097f, 280f), vec3<i32>(38386i, -1i, i32(-2147483648))), Struct_1(-1i, 16398u, vec4<f32>(776f, -799f, 506f, -1253f), vec3<i32>(6219i, 12000i, -4723i)), Struct_1(8241i, 20951u, vec4<f32>(-562f, -1000f, -808f, 1000f), vec3<i32>(i32(-2147483648), 1i, -20312i)), Struct_1(i32(-2147483648), 1u, vec4<f32>(-1000f, 681f, 700f, 874f), vec3<i32>(-15654i, -15723i, 0i)), Struct_1(i32(-2147483648), 14586u, vec4<f32>(-208f, 1000f, -604f, 943f), vec3<i32>(-1i, 1i, 1i)), Struct_1(0i, 41569u, vec4<f32>(-204f, -542f, 1025f, 144f), vec3<i32>(-17834i, 1i, -24918i)), Struct_1(-18847i, 71036u, vec4<f32>(-137f, -1207f, 1145f, -854f), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_1(31176i, 0u, vec4<f32>(-489f, -655f, 547f, -870f), vec3<i32>(1i, -1357i, i32(-2147483648))), Struct_1(2147483647i, 1u, vec4<f32>(-400f, -774f, 857f, 1366f), vec3<i32>(315i, 30475i, 1i)), Struct_1(-1i, 31899u, vec4<f32>(-664f, 768f, 1841f, 422f), vec3<i32>(26004i, 1i, 74573i)), Struct_1(2147483647i, 0u, vec4<f32>(-726f, -1482f, 2033f, -569f), vec3<i32>(-13800i, 1425i, 14241i)), Struct_1(-25213i, 17681u, vec4<f32>(1814f, 951f, -211f, 136f), vec3<i32>(1i, i32(-2147483648), 0i)));

var<private> global1: u32;

var<private> global2: vec2<f32> = vec2<f32>(1000f, 1253f);

var<private> global3: Struct_1 = Struct_1(-68707i, 172485u, vec4<f32>(-758f, -1000f, 2034f, -690f), vec3<i32>(-13382i, -1i, 0i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    var var_1 = var_0.b;
    let var_2 = !((i32(-1i) * -2147483647i) <= var_0.a);
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(abs(4294967295u), 4294967295u), vec2<u32>(_wgslsmith_sub_u32(u_input.a, 1u), global3.b)), select(~vec2<u32>(global3.b, var_0.b) ^ ~vec2<u32>(u_input.a, 1u), ~select(vec2<u32>(37572u, global3.b), vec2<u32>(var_0.b, 0u), var_2), all(select(vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(false, var_2, var_2, false), true))) ^ (~(~vec2<u32>(var_0.b, 4294967295u)) << (_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(var_0.b, arg_0.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 47260u), vec2<u32>(67937u, global3.b)), reverseBits(vec2<u32>(1u, var_0.b))) % vec2<u32>(32u))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<i32> {
    global3 = Struct_1(firstLeadingBit(2147483647i), 57851u, arg_1.c, _wgslsmith_div_vec3_i32(vec3<i32>(55688i, arg_1.d.x, _wgslsmith_sub_i32(-arg_1.a, arg_1.d.x)), vec3<i32>(firstTrailingBit(arg_1.a), _wgslsmith_dot_vec2_i32(-vec2<i32>(global3.d.x, -51290i), -global3.d.xy), ~arg_1.d.x)));
    global2 = arg_0.c.yz;
    var var_0 = !(!vec4<bool>(all(select(vec2<bool>(true, arg_2), vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2))), !all(vec4<bool>(arg_2, arg_2, true, arg_2)), _wgslsmith_add_i32(global3.a, 1095i) >= max(0i, global3.d.x), all(select(vec4<bool>(false, false, arg_2, true), vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2)))));
    let var_1 = select(max(~select(vec4<u32>(23453u, arg_1.b, 53989u, 38325u), vec4<u32>(global3.b, global3.b, u_input.a, 4294967295u), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(10685u, arg_0.b, arg_1.b, arg_0.b)), select(vec4<u32>(0u, global3.b, 1u, arg_1.b), vec4<u32>(global3.b, 4294967295u, 2658u, u_input.a), var_0.x))), countOneBits(vec4<u32>(func_1(global0[_wgslsmith_index_u32(1u, 25u)]), min(arg_0.b, 4294967295u), 1u, ~34079u)), vec4<bool>(true, var_0.x, all(vec2<bool>(arg_2, true)), all(!vec2<bool>(arg_2, arg_2)))) ^ ~vec4<u32>(25428u, _wgslsmith_div_u32(global3.b >> (u_input.a % 32u), arg_0.b), 1u, u_input.a);
    var_0 = vec4<bool>(true, var_0.x, all(select(var_0.ywy, var_0.zww, 2795u < arg_1.b)) || var_0.x, arg_2);
    return global3.d;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(arg_1.b, 0u), max(arg_0.x, 36793u), ~firstLeadingBit(~7678u), abs(firstLeadingBit(firstTrailingBit(1u))));
    var var_1 = global0[_wgslsmith_index_u32(~(u_input.a & ~570u), 25u)];
    var_1 = Struct_1(-1i, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_0.x), ~vec2<u32>(44385u, var_0.x) << (~vec2<u32>(0u, 0u) % vec2<u32>(32u))), abs(1u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(804f + -660f), var_1.c.x)), -613f, _wgslsmith_f_op_f32(global3.c.x * _wgslsmith_div_f32(arg_1.c.x, global2.x)), global2.x))), var_1.d | _wgslsmith_mult_vec3_i32(func_3(Struct_1(var_1.a, 0u, vec4<f32>(global2.x, global3.c.x, 2466f, global2.x), vec3<i32>(-47388i, arg_1.d.x, global3.a)), Struct_1(global3.a, var_0.x, vec4<f32>(-1979f, arg_1.c.x, arg_1.c.x, global3.c.x), vec3<i32>(12791i, arg_1.a, global3.a)), true), -vec3<i32>(var_1.a, 1i, -19011i)));
    var var_2 = Struct_1(countOneBits(24682i << (abs(u_input.a) % 32u)) | var_1.a, (1u ^ _wgslsmith_mult_u32(25764u << (1u % 32u), ~var_0.x)) >> (var_0.x % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-456f, global3.c.x, 107f, _wgslsmith_f_op_f32(abs(-169f))) * global3.c)), reverseBits(~max(arg_1.d, vec3<i32>(global3.d.x, -1i, global3.a))));
    return Struct_1(-23118i, reverseBits((func_1(Struct_1(global3.d.x, 11043u, vec4<f32>(arg_1.c.x, -1680f, global3.c.x, arg_1.c.x), vec3<i32>(global3.a, -1i, var_2.d.x))) ^ ~4294967295u) ^ 4294967295u), vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1104f))))), -1030f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-761f)) + global2.x), _wgslsmith_f_op_f32(-575f - _wgslsmith_f_op_f32(-global2.x)), any(vec3<bool>(true, true, false)) && false))), vec3<i32>(var_1.a, _wgslsmith_add_i32(global3.a, global3.a), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, global3.a, 13141i), vec4<i32>(global3.a, 1i, 2147483647i, 0i))) >> (var_0.wwy % vec3<u32>(32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    global3 = Struct_1(0i, reverseBits(38380u), func_2(arg_0, func_2(arg_0, func_2(vec2<u32>(4294967295u, u_input.a), global0[_wgslsmith_index_u32(55809u, 25u)]))).c, vec3<i32>(_wgslsmith_div_i32(24505i | global3.a, arg_1.d.x) & arg_2.d.x, firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.a, global3.a), -arg_2.d.x)), ~(-1i)));
    var var_0 = func_2(arg_0, Struct_1(global3.a, _wgslsmith_dot_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b, 4294967295u), vec2<u32>(arg_2.b, 107u), arg_0), vec2<u32>(1u, 1u), any(vec3<bool>(arg_3.x, arg_3.x, false))), vec2<u32>(_wgslsmith_add_u32(1u, u_input.a), 56087u)), arg_2.c, vec3<i32>(_wgslsmith_mult_i32(min(-2147483647i, -1i), arg_2.a), -global3.d.x, 1i)));
    var var_1 = -_wgslsmith_clamp_i32(max(-3906i, arg_1.a), _wgslsmith_add_i32(var_0.d.x, min(-39861i, -1i)), reverseBits(countOneBits(var_0.d.x)));
    let var_2 = Struct_1(firstTrailingBit(~7097i) & -1i, ~arg_2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-405f, -655f, -160f, global2.x))) - _wgslsmith_f_op_vec4_f32(max(global3.c, vec4<f32>(global2.x, 2560f, arg_2.c.x, arg_2.c.x))))) - global3.c), vec3<i32>(-1i) * -arg_2.d);
    global3 = arg_1;
    return func_2(arg_0 | abs(arg_0), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(~vec2<u32>(func_1(Struct_1(-56096i, global3.b, global3.c, vec3<i32>(93858i, 53087i, global3.d.x))), u_input.a), func_2(~(~vec2<u32>(u_input.a, 1u) << (vec2<u32>(u_input.a, 19087u) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(1u, 25u)]), Struct_1(0i, ~(~0u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, global3.c.x, 284f, global2.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2499f, -287f, global2.x, 652f))), vec4<f32>(func_2(vec2<u32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 25u)]).c.x, -1442f, _wgslsmith_f_op_f32(-global3.c.x), global2.x), vec4<bool>(true, true, true, true))), global3.d), select(vec2<bool>(false, -7008i == (-1i | global3.d.x)), vec2<bool>(any(vec4<bool>(true, false, false, false)), 0i != _wgslsmith_div_i32(1i, global3.d.x)), false));
    let var_0 = func_4(~vec2<u32>(u_input.a, func_4(vec2<u32>(56307u, global3.b), Struct_1(24448i, u_input.a, vec4<f32>(-675f, 197f, global3.c.x, 485f), global3.d), Struct_1(22329i, u_input.a, vec4<f32>(175f, global2.x, global2.x, global3.c.x), vec3<i32>(global3.d.x, global3.d.x, 24173i)), vec2<bool>(true, true)).b), func_2(~reverseBits(vec2<u32>(19655u, 0u)), func_2(~firstTrailingBit(vec2<u32>(u_input.a, global3.b)), func_4(~vec2<u32>(u_input.a, 1u), Struct_1(global3.d.x, 1u, vec4<f32>(1141f, 1651f, global2.x, global3.c.x), global3.d), Struct_1(global3.a, 0u, global3.c, vec3<i32>(global3.a, global3.a, global3.d.x)), vec2<bool>(true, true)))), global0[_wgslsmith_index_u32(2703u, 25u)], vec2<bool>(true, true));
    global3 = func_2(vec2<u32>(firstTrailingBit(countOneBits(global3.b)), ~select(u_input.a, 4294967295u, true) ^ _wgslsmith_mult_u32(1u, ~u_input.a)), Struct_1(37881i, _wgslsmith_sub_u32(0u, abs(0u >> (var_0.b % 32u))), _wgslsmith_f_op_vec4_f32(step(global3.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1000f, -1000f))))), vec3<i32>(abs(-1i), ~(-10731i), -global3.d.x << (global3.b % 32u))));
    let var_1 = Struct_1(_wgslsmith_mult_i32(-47899i, -2147483647i << (var_0.b % 32u)), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(firstTrailingBit(6077u), min(u_input.a, global3.b)), var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(global3.c.x, global2.x)), 226f, _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(-1384f * global2.x))))), ~(abs(vec3<i32>(-2147483647i, global3.a, var_0.a)) & -vec3<i32>(-1i, 23262i, global3.d.x)));
    global3 = func_2(vec2<u32>(var_0.b, var_1.b), Struct_1(-21235i, ~(~var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -462f, -1122f, var_0.c.x))))), (~vec3<i32>(-57245i, global3.d.x, global3.d.x) & vec3<i32>(global3.a, global3.a, global3.a)) & var_0.d));
    let var_2 = Struct_1(21840i, var_1.b | ~1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, var_1.c.x)), -313f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(503f + var_0.c.x), global2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.x), global2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - global3.c)) * vec4<f32>(_wgslsmith_div_f32(var_0.c.x, 1000f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(711f, 1697f), 1f))), global3.d);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.c.yy))), global3.c.ww));
    let var_4 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global3.a, (var_0.a << (~var_1.b % 32u)) << (_wgslsmith_div_u32(u_input.a, var_0.b) % 32u)));
}

