struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
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

var<private> global0: array<bool, 23>;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(vec3<i32>(-25130i, 20555i, 31334i), Struct_1(vec4<u32>(0u, 4294967295u, 31925u, 48985u)), vec3<f32>(1000f, -1000f, -471f), false), vec4<u32>(1u, 0u, 35231u, 0u), vec4<i32>(2147483647i, -7787i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 12268i)), Struct_3(Struct_2(vec3<i32>(7475i, i32(-2147483648), -5347i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 35329u, 60142u)), vec3<f32>(318f, -276f, 233f), true), vec4<u32>(70098u, 4294967295u, 31275u, 4294967295u), vec4<i32>(-9613i, -44659i, 4268i, 0i), vec4<i32>(14122i, -8236i, 2147483647i, i32(-2147483648))), Struct_3(Struct_2(vec3<i32>(4284i, 39114i, 70418i), Struct_1(vec4<u32>(4294967295u, 26207u, 68689u, 45556u)), vec3<f32>(359f, 377f, -1538f), false), vec4<u32>(47623u, 78u, 1u, 30019u), vec4<i32>(18841i, -16461i, -1i, 32575i), vec4<i32>(i32(-2147483648), 5136i, 1i, -1i)), Struct_3(Struct_2(vec3<i32>(-1i, 49464i, -7150i), Struct_1(vec4<u32>(64040u, 4294967295u, 11311u, 20340u)), vec3<f32>(-1190f, -799f, 289f), false), vec4<u32>(59986u, 0u, 1u, 57594u), vec4<i32>(i32(-2147483648), 1i, -66594i, -1i), vec4<i32>(2147483647i, 1i, i32(-2147483648), -1i)), Struct_3(Struct_2(vec3<i32>(-29786i, 2147483647i, 37670i), Struct_1(vec4<u32>(12162u, 1u, 38804u, 4294967295u)), vec3<f32>(-396f, 306f, -1022f), true), vec4<u32>(47963u, 30774u, 63295u, 32415u), vec4<i32>(68441i, i32(-2147483648), 0i, 0i), vec4<i32>(-44007i, -1i, i32(-2147483648), 1i)), Struct_3(Struct_2(vec3<i32>(0i, 1i, -11908i), Struct_1(vec4<u32>(10285u, 28883u, 14449u, 0u)), vec3<f32>(-1755f, -314f, -764f), false), vec4<u32>(25573u, 28350u, 4294967295u, 33570u), vec4<i32>(-16312i, 1i, 0i, -4050i), vec4<i32>(0i, -18230i, i32(-2147483648), i32(-2147483648))), Struct_3(Struct_2(vec3<i32>(-1i, i32(-2147483648), 57576i), Struct_1(vec4<u32>(8732u, 40900u, 67031u, 19814u)), vec3<f32>(134f, -1069f, 796f), true), vec4<u32>(0u, 18506u, 15026u, 4294967295u), vec4<i32>(0i, -10841i, 0i, 2147483647i), vec4<i32>(0i, 18997i, 31658i, 11095i)), Struct_3(Struct_2(vec3<i32>(2147483647i, -24891i, -51043i), Struct_1(vec4<u32>(16124u, 38062u, 9930u, 4294967295u)), vec3<f32>(166f, -548f, -2503f), false), vec4<u32>(1u, 4294967295u, 49397u, 38868u), vec4<i32>(-4709i, 6246i, -3529i, 2147483647i), vec4<i32>(2147483647i, 1141i, 0i, 57871i)), Struct_3(Struct_2(vec3<i32>(0i, 0i, 5728i), Struct_1(vec4<u32>(0u, 0u, 81714u, 49413u)), vec3<f32>(-238f, -315f, 1133f), false), vec4<u32>(0u, 4294967295u, 43695u, 16670u), vec4<i32>(-1i, 19576i, 2844i, 0i), vec4<i32>(-27986i, -12890i, -32729i, -7815i)), Struct_3(Struct_2(vec3<i32>(1i, 39262i, -27274i), Struct_1(vec4<u32>(4294967295u, 11112u, 0u, 4294967295u)), vec3<f32>(1094f, -156f, -774f), true), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<i32>(0i, 31521i, -1i, 9692i), vec4<i32>(-10829i, 34030i, -1i, i32(-2147483648))), Struct_3(Struct_2(vec3<i32>(28792i, 2147483647i, -1i), Struct_1(vec4<u32>(30926u, 0u, 4294967295u, 0u)), vec3<f32>(1000f, 2029f, 1349f), false), vec4<u32>(44299u, 0u, 4294967295u, 21045u), vec4<i32>(-1i, -51576i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 14405i)), Struct_3(Struct_2(vec3<i32>(-46105i, i32(-2147483648), -26861i), Struct_1(vec4<u32>(0u, 4294967295u, 7176u, 19816u)), vec3<f32>(-491f, -486f, 413f), false), vec4<u32>(4294967295u, 509u, 1u, 2775u), vec4<i32>(-1i, i32(-2147483648), 0i, 40477i), vec4<i32>(48570i, -11876i, -1i, 415i)), Struct_3(Struct_2(vec3<i32>(1i, i32(-2147483648), -31711i), Struct_1(vec4<u32>(19753u, 33328u, 4294967295u, 4294967295u)), vec3<f32>(110f, -1323f, -599f), false), vec4<u32>(0u, 4294967295u, 72524u, 1u), vec4<i32>(-14198i, 1i, 14899i, -14124i), vec4<i32>(-14797i, i32(-2147483648), i32(-2147483648), -1i)), Struct_3(Struct_2(vec3<i32>(-14326i, i32(-2147483648), 0i), Struct_1(vec4<u32>(76381u, 4294967295u, 16206u, 49793u)), vec3<f32>(-1427f, -964f, -226f), false), vec4<u32>(0u, 4294967295u, 44413u, 60172u), vec4<i32>(2147483647i, -67354i, i32(-2147483648), 0i), vec4<i32>(2147483647i, 0i, i32(-2147483648), 15661i)), Struct_3(Struct_2(vec3<i32>(1i, 0i, i32(-2147483648)), Struct_1(vec4<u32>(1u, 6936u, 4294967295u, 1u)), vec3<f32>(-170f, -479f, -669f), true), vec4<u32>(79891u, 0u, 1u, 39704u), vec4<i32>(19140i, -13798i, 24760i, -35294i), vec4<i32>(17742i, 19292i, -1i, -1i)), Struct_3(Struct_2(vec3<i32>(-60105i, -1i, i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 32570u, 5599u, 0u)), vec3<f32>(1268f, 1000f, 1074f), false), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<i32>(1i, -35785i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-31490i, 9459i, -24721i, 0i)), Struct_3(Struct_2(vec3<i32>(0i, -58265i, 1i), Struct_1(vec4<u32>(85220u, 4294967295u, 7856u, 0u)), vec3<f32>(714f, -1583f, 821f), false), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<i32>(-1i, -65677i, 1i, 18630i), vec4<i32>(2147483647i, i32(-2147483648), 0i, -37770i)), Struct_3(Struct_2(vec3<i32>(-1i, i32(-2147483648), -61460i), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 42333u)), vec3<f32>(1319f, 1000f, 562f), true), vec4<u32>(4294967295u, 1u, 10459u, 1u), vec4<i32>(-38872i, 7458i, 79566i, 1i), vec4<i32>(-1i, 2147483647i, 1i, 0i)), Struct_3(Struct_2(vec3<i32>(2147483647i, -6690i, 20517i), Struct_1(vec4<u32>(4294967295u, 13771u, 0u, 1u)), vec3<f32>(434f, 457f, 1487f), false), vec4<u32>(16305u, 4294967295u, 1u, 58281u), vec4<i32>(1i, -1i, -25515i, 1i), vec4<i32>(i32(-2147483648), 26449i, 17685i, -4241i)), Struct_3(Struct_2(vec3<i32>(1i, -14820i, 29555i), Struct_1(vec4<u32>(101469u, 0u, 4294967295u, 4294967295u)), vec3<f32>(2424f, 2164f, 902f), true), vec4<u32>(4294967295u, 6096u, 21339u, 36286u), vec4<i32>(-623i, -27701i, -134i, -58100i), vec4<i32>(5423i, -1i, -75309i, -34343i)));

var<private> global2: vec3<u32> = vec3<u32>(25627u, 1u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    let var_0 = -1000f;
    let var_1 = abs(_wgslsmith_clamp_u32(~arg_0.d.b.a.x, u_input.e, global2.x) | ~global2.x) == arg_0.d.b.a.x;
    var var_2 = arg_0.d;
    let var_3 = vec3<u32>(_wgslsmith_mult_u32(countOneBits(u_input.d), 1u), ~(~(~(4853u ^ arg_0.d.b.a.x))), 20908u);
    var var_4 = true;
    return arg_0.d;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1134f - -170f), -658f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-890f, _wgslsmith_f_op_f32(f32(-1f) * -734f)))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1003f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-722f - 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1732f * 712f))))), _wgslsmith_f_op_f32(f32(-1f) * -215f)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, var_0.x) - vec3<f32>(-1172f, _wgslsmith_f_op_f32(floor(-570f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -1832f)))));
    var var_1 = u_input.b;
    global2 = countOneBits(vec3<u32>(max(u_input.e, ~1482u), u_input.e, u_input.d));
    var var_2 = u_input.c;
    return ~_wgslsmith_dot_vec4_u32(~vec4<u32>(82562u, global2.x, 1u, 1u) << ((vec4<u32>(u_input.e, 62257u, 0u, global2.x) ^ vec4<u32>(u_input.e, u_input.e, 12067u, 48641u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, u_input.e, 4294967295u, 5411u), func_1(Struct_4(vec3<f32>(-2298f, var_0.x, -1608f), arg_0.x, arg_1.yxz, Struct_2(vec3<i32>(1i, -58554i, var_2.x), Struct_1(vec4<u32>(global2.x, u_input.e, u_input.d, 28549u)), vec3<f32>(-894f, var_0.x, -1652f), arg_1.x), arg_1)).b.a, max(vec4<u32>(41849u, global2.x, 2746u, 4294967295u), min(vec4<u32>(u_input.d, 53221u, global2.x, global2.x), vec4<u32>(u_input.d, 4294967295u, global2.x, global2.x)))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = array<bool, 23>();
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(26229u & arg_1.b.a.x), 20u)];
    let var_1 = arg_0;
    let var_2 = !vec3<bool>(_wgslsmith_mult_u32(func_3(vec2<bool>(true, global0[_wgslsmith_index_u32(100406u, 23u)]), vec4<bool>(true, var_0.a.d, var_0.a.d, arg_1.d)), u_input.d) <= ~138057u, var_0.a.d | true, var_0.a.d);
    let var_3 = var_0.a;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_clamp_i32(abs(u_input.a.x), min(u_input.c.x, _wgslsmith_mod_i32(u_input.b << (1u % 32u), u_input.c.x)), min(~(u_input.c.x >> (23790u % 32u)), select(1i, ~(-1i), global2.x != 21844u))));
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = vec2<u32>(min(0u, _wgslsmith_mod_u32(global2.x, 4294967295u ^ global2.x) & 18333u), _wgslsmith_sub_u32(u_input.e, func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.b), vec3<i32>(-58357i, u_input.b, -30667i)), func_1(Struct_4(vec3<f32>(var_1, var_1, 243f), true, vec3<bool>(true, false, true), Struct_2(vec3<i32>(u_input.a.x, 25690i, 6660i), Struct_1(vec4<u32>(13543u, u_input.e, u_input.e, 1u)), vec3<f32>(var_1, 707f, -223f), global0[_wgslsmith_index_u32(47263u, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 23u)], true, global0[_wgslsmith_index_u32(global2.x, 23u)], true))), Struct_1(vec4<u32>(global2.x, 42561u, 1u, u_input.d)), var_1) ^ 1u));
    let var_3 = firstLeadingBit(select(countOneBits(vec3<i32>(14309i, u_input.b, -49045i)), vec3<i32>(-4513i, u_input.c.x, u_input.a.x) | ~vec3<i32>(2147483647i, u_input.c.x, u_input.a.x), !select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 23u)], true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(var_2.x, 23u)], true), true)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-u_input.a.x, u_input.b ^ -12484i, 0i ^ u_input.a.x), vec3<i32>(-2147483647i, firstLeadingBit(1798i), u_input.c.x ^ u_input.c.x), vec3<i32>(-13948i, u_input.c.x, ~0i)));
    var var_4 = global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(~vec2<u32>(10338u, _wgslsmith_div_u32(1u, global2.x)), vec2<u32>(min(~global2.x, 0u), abs(51722u))), global2.x), 20u)];
    var_4 = Struct_3(var_4.a, ~var_4.a.b.a, -(~vec4<i32>(-1516i, -var_4.d.x, ~var_3.x, _wgslsmith_add_i32(-5001i, u_input.a.x))), -_wgslsmith_mod_vec4_i32(select(-var_4.c, -vec4<i32>(var_4.c.x, 14256i, 1i, -34825i), vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], var_4.a.d)), vec4<i32>(var_3.x, u_input.a.x, u_input.b, firstTrailingBit(13331i))));
    let var_5 = ~(~firstLeadingBit(func_1(Struct_4(vec3<f32>(-2043f, 455f, var_1), true, vec3<bool>(var_4.a.d, false, var_4.a.d), Struct_2(var_4.d.xww, Struct_1(var_4.a.b.a), var_4.a.c, var_4.a.d), vec4<bool>(true, global0[_wgslsmith_index_u32(var_4.b.x, 23u)], var_4.a.d, false))).b.a.yxz << (~vec3<u32>(var_4.b.x, var_2.x, u_input.e) % vec3<u32>(32u))));
    var var_6 = _wgslsmith_clamp_i32(i32(-1i) * -49226i, -1i, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_4.c, vec4<i32>(u_input.b, var_4.d.x, var_4.a.a.x, -5755i)), _wgslsmith_mod_i32(1i, var_4.c.x), var_4.c.x | 1i) & _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(u_input.a.x, 33773i, u_input.c.x)), countOneBits(_wgslsmith_add_vec3_i32(var_3, var_3))));
    let var_7 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

