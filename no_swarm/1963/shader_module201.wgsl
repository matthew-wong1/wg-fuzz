struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-617f, -220f), vec2<f32>(-284f, -1859f), vec2<f32>(578f, 959f), vec2<f32>(812f, -1633f), vec2<f32>(-1398f, -1317f), vec2<f32>(1389f, -203f), vec2<f32>(2040f, -250f), vec2<f32>(-545f, 552f), vec2<f32>(-392f, -1048f), vec2<f32>(926f, 187f), vec2<f32>(1309f, 521f), vec2<f32>(1610f, -298f), vec2<f32>(-1340f, -1062f), vec2<f32>(116f, -1000f), vec2<f32>(-796f, -270f), vec2<f32>(-802f, 2080f), vec2<f32>(-1000f, -162f), vec2<f32>(-2402f, -1591f), vec2<f32>(467f, -544f), vec2<f32>(-1680f, -870f), vec2<f32>(-168f, -565f), vec2<f32>(-521f, -359f), vec2<f32>(1278f, -1453f), vec2<f32>(2154f, -1785f), vec2<f32>(-169f, -742f));

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec2<i32>(34812i, -33748i), 117f, Struct_1(1u, 2147483647i, 39165u, -521f)), Struct_2(vec2<i32>(-9105i, -23921i), -216f, Struct_1(62845u, -1i, 16765u, -895f)), Struct_2(vec2<i32>(-1i, 1i), 104f, Struct_1(43119u, -1i, 0u, -192f)), Struct_2(vec2<i32>(1i, 0i), 183f, Struct_1(24787u, 2147483647i, 54049u, 1000f)), Struct_2(vec2<i32>(-1i, 2147483647i), -1215f, Struct_1(0u, 18941i, 51482u, -2030f)), Struct_2(vec2<i32>(23790i, 26126i), 667f, Struct_1(43436u, 16006i, 39785u, -293f)), Struct_2(vec2<i32>(1201i, -2133i), 1147f, Struct_1(7594u, 1i, 4294967295u, -381f)), Struct_2(vec2<i32>(9404i, -29779i), -231f, Struct_1(28466u, -1i, 40472u, 312f)), Struct_2(vec2<i32>(5720i, -12185i), -545f, Struct_1(4294967295u, -31939i, 16321u, 459f)), Struct_2(vec2<i32>(-1i, 1i), -666f, Struct_1(1u, 2147483647i, 1060u, 461f)), Struct_2(vec2<i32>(-51889i, -21723i), 797f, Struct_1(1u, -20998i, 0u, 137f)), Struct_2(vec2<i32>(-27827i, i32(-2147483648)), -274f, Struct_1(18178u, -7440i, 0u, 1611f)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), 978f, Struct_1(1u, i32(-2147483648), 63989u, 989f)), Struct_2(vec2<i32>(38238i, 37716i), 1078f, Struct_1(4294967295u, -1i, 0u, 547f)));

var<private> global3: vec2<i32> = vec2<i32>(-50738i, 5235i);

var<private> global4: array<Struct_2, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_3(abs(min(global3.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, u_input.e, -32224i), vec4<i32>(0i, global3.x, 9441i, 2147483647i)), 18659i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-371f - 108f)) - 521f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-946f, _wgslsmith_f_op_f32(864f - 1399f)))))), global4[_wgslsmith_index_u32(1u, 10u)], Struct_1(u_input.d.x >> ((4294967295u & _wgslsmith_mod_u32(u_input.a.x, 4294967295u)) % 32u), -min(countOneBits(u_input.b), -1i), u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1479f, 1532f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(506f, 340f)) * 578f))));
    var var_1 = ~(~_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(var_0.c.c.c, 59244u, var_0.d.c, u_input.d.x)), ~(vec4<u32>(var_0.c.c.c, u_input.a.x, var_0.c.c.c, 27380u) >> (vec4<u32>(1u, var_0.d.c, 12903u, u_input.d.x) % vec4<u32>(32u))), vec4<u32>(abs(u_input.d.x), var_0.d.c, ~1u, 1u)));
    global1 = array<vec2<f32>, 25>();
    global0 = !select(!arg_1.zxx, select(arg_1.zzy, vec3<bool>(!arg_1.x, arg_1.x, !arg_1.x), select(select(arg_1.zxz, arg_1.wxz, vec3<bool>(arg_1.x, true, global0.x)), !arg_1.yxz, arg_1.xyy)), arg_1.wyx);
    global4 = array<Struct_2, 10>();
    return ~abs(vec3<u32>(_wgslsmith_mult_u32(var_1.x, 4294967295u) | 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.a, var_1.x, var_0.d.a), vec3<u32>(u_input.d.x, 0u, var_1.x)) ^ ~1u, _wgslsmith_sub_u32(firstTrailingBit(var_1.x), u_input.d.x)));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_sub_u32(~u_input.a.x, reverseBits(4294967295u)), 43870i, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(0u, u_input.d.x, 0u)), ~func_3(-vec2<i32>(global3.x, global3.x), !vec4<bool>(true, global0.x, global0.x, true))), arg_0);
    var var_1 = _wgslsmith_mod_i32(var_0.b, 21965i) << (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 53960u), u_input.a), ~u_input.a), select(0u, _wgslsmith_clamp_u32(4193u, 0u, u_input.a.x), any(vec3<bool>(global0.x, false, global0.x))))) % 32u);
    global3 = vec2<i32>(_wgslsmith_mult_i32(-62699i << (u_input.d.x % 32u), select(global3.x, -37043i, true)) ^ var_0.b, -11338i) | vec2<i32>(27483i, 35669i);
    var var_2 = !(false || !(!any(vec3<bool>(global0.x, true, true))));
    var var_3 = global4[_wgslsmith_index_u32(32366u, 10u)];
    return global2[_wgslsmith_index_u32(u_input.a.x & select(~var_3.c.a, ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c.a, u_input.d.x, 1u, 6700u), vec4<u32>(9725u, var_0.a, 4294967295u, 0u)), reverseBits(u_input.a.x)), true), 14u)];
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<f32> {
    global0 = vec3<bool>(!all(select(vec3<bool>(true, false, true), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, global0.x), true), vec3<bool>(global0.x, global0.x, true))), false, global0.x);
    let var_0 = select(vec2<bool>((false == global0.x) | !all(global0.yx), all(select(!vec4<bool>(global0.x, true, true, global0.x), !vec4<bool>(false, false, false, global0.x), vec4<bool>(true, true, global0.x, true)))), global0.yy, !(!(global0.x & true)));
    global3 = abs(-arg_0.c.a);
    global4 = array<Struct_2, 10>();
    global1 = array<vec2<f32>, 25>();
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -1000f, arg_2.d) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.d, 1338f, arg_2.d)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.d, -121f, -1000f), vec3<f32>(arg_0.c.c.d, -629f, 661f), vec3<bool>(false, false, var_0.x))) + vec3<f32>(-2064f, 385f, arg_2.d)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d, -505f, arg_2.d)), vec3<f32>(945f, arg_2.d, arg_2.d))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -876f), func_2(arg_0.c.b, 739f).b, 368f)))));
}

fn func_1(arg_0: bool) -> f32 {
    global3 = vec2<i32>(-2147483647i, _wgslsmith_mult_i32(global3.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.e, u_input.b, 2147483647i), vec4<i32>(21088i, u_input.b, 1i, -1i)), min(vec4<i32>(15063i, -2147483647i, -2147483647i, u_input.b), vec4<i32>(u_input.e, u_input.b, -53538i, 0i))), ~(-vec4<i32>(global3.x, u_input.c, 30773i, global3.x)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2024f, 1014f, -597f), vec3<f32>(-1051f, -358f, 1420f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(global3.x, -906f, func_2(-613f, 491f), func_2(-843f, -658f).c), vec2<u32>(62393u, min(67779u, ~24206u)), Struct_1(_wgslsmith_mod_u32(19396u, 33676u) | ~u_input.a.x, global3.x | ~u_input.e, u_input.a.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, 587f) + vec3<f32>(var_0.x, 297f, 816f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, var_0.x, -1845f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2192f + 1489f)), var_0.x, 853f))));
    var var_2 = Struct_3(u_input.c, 1693f, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1377f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))), Struct_1(u_input.d.x, firstTrailingBit(1i) ^ abs(2147483647i), _wgslsmith_dot_vec2_u32(u_input.a << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.a) % vec2<u32>(32u)), u_input.a), var_0.x));
    global4 = array<Struct_2, 10>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(295f, var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false)));
    global3 = select(firstTrailingBit(~(vec2<i32>(1i, global3.x) | func_2(595f, -1000f).a)), select(vec2<i32>(~global3.x, _wgslsmith_div_i32(1i, global3.x)), abs(vec2<i32>(u_input.b, global3.x)), all(select(vec2<bool>(global0.x, false), global0.xz, global0.yx))) >> ((~vec2<u32>(u_input.d.x, 103592u) << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)), global0.x);
    var var_1 = _wgslsmith_f_op_f32(589f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(773f)), _wgslsmith_f_op_f32(f32(-1f) * -1222f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(448f, 686f, true))))));
    let var_2 = -((~vec2<i32>(-67695i, global3.x) | (vec2<i32>(17535i, -1i) << (~vec2<u32>(u_input.a.x, 6768u) % vec2<u32>(32u)))) >> (~countOneBits(firstTrailingBit(u_input.a)) % vec2<u32>(32u)));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-522f, _wgslsmith_f_op_f32(max(-1000f, -1063f)), false))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3143f), -799f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1289f))))))))));
    var var_3 = var_2.x;
    global2 = array<Struct_2, 14>();
    var_3 = countOneBits(u_input.e | max(var_2.x, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2(805f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-111f))))).b), firstLeadingBit(vec3<i32>(0i, -27186i, ~(-2147483647i))), 0u);
}

