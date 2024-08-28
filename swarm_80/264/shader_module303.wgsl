struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_2(1000f, Struct_1(vec3<i32>(-15091i, -9505i, i32(-2147483648)), vec2<i32>(1i, -18281i)), 1000f, Struct_1(vec3<i32>(24117i, -17802i, 15283i), vec2<i32>(1i, -15230i)), Struct_1(vec3<i32>(-1i, 0i, 0i), vec2<i32>(1i, -104039i)))), Struct_3(Struct_2(-1317f, Struct_1(vec3<i32>(29521i, 2147483647i, 2147483647i), vec2<i32>(2147483647i, -1i)), 645f, Struct_1(vec3<i32>(0i, -1i, 1i), vec2<i32>(-11679i, -49442i)), Struct_1(vec3<i32>(-3168i, 6881i, i32(-2147483648)), vec2<i32>(2147483647i, 25931i)))), Struct_3(Struct_2(812f, Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -30299i), vec2<i32>(0i, 12741i)), 2201f, Struct_1(vec3<i32>(6932i, -18097i, 2147483647i), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec3<i32>(-21691i, 1i, -11822i), vec2<i32>(1i, 34470i)))), Struct_3(Struct_2(-1000f, Struct_1(vec3<i32>(39852i, 2147483647i, 13757i), vec2<i32>(2147483647i, -1i)), 937f, Struct_1(vec3<i32>(-26507i, 13439i, -1i), vec2<i32>(0i, 1i)), Struct_1(vec3<i32>(-1163i, 2147483647i, i32(-2147483648)), vec2<i32>(-12895i, 0i)))), Struct_3(Struct_2(1000f, Struct_1(vec3<i32>(1i, 2147483647i, -32538i), vec2<i32>(i32(-2147483648), 357i)), 2295f, Struct_1(vec3<i32>(-56744i, -1i, -1i), vec2<i32>(-55823i, 1i)), Struct_1(vec3<i32>(64956i, 17216i, -1i), vec2<i32>(2529i, 0i)))), Struct_3(Struct_2(391f, Struct_1(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 36558i)), -403f, Struct_1(vec3<i32>(2147483647i, -22934i, 15715i), vec2<i32>(2147483647i, 7646i)), Struct_1(vec3<i32>(1i, 0i, 1i), vec2<i32>(-1i, 32105i)))), Struct_3(Struct_2(1000f, Struct_1(vec3<i32>(-16014i, -1i, 55154i), vec2<i32>(i32(-2147483648), 17354i)), -1000f, Struct_1(vec3<i32>(2147483647i, 22811i, i32(-2147483648)), vec2<i32>(0i, -48684i)), Struct_1(vec3<i32>(-5962i, -1i, 14923i), vec2<i32>(29691i, -39865i)))), Struct_3(Struct_2(612f, Struct_1(vec3<i32>(-70296i, -52889i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i)), -326f, Struct_1(vec3<i32>(41606i, -51793i, 2147483647i), vec2<i32>(1i, 6358i)), Struct_1(vec3<i32>(i32(-2147483648), 17741i, i32(-2147483648)), vec2<i32>(28077i, 15014i)))), Struct_3(Struct_2(-897f, Struct_1(vec3<i32>(-99692i, -1i, i32(-2147483648)), vec2<i32>(985i, 1i)), 1142f, Struct_1(vec3<i32>(-1i, -1i, 33889i), vec2<i32>(10835i, -24672i)), Struct_1(vec3<i32>(-33995i, 1i, -28948i), vec2<i32>(20650i, 51718i)))), Struct_3(Struct_2(585f, Struct_1(vec3<i32>(1i, 11310i, 2147483647i), vec2<i32>(-54330i, 16869i)), -489f, Struct_1(vec3<i32>(0i, -36958i, 1i), vec2<i32>(i32(-2147483648), -58045i)), Struct_1(vec3<i32>(-1i, 33402i, 0i), vec2<i32>(2147483647i, 2147483647i)))), Struct_3(Struct_2(-1000f, Struct_1(vec3<i32>(2147483647i, 2147483647i, 18554i), vec2<i32>(2147483647i, 36177i)), 2355f, Struct_1(vec3<i32>(1i, -4050i, i32(-2147483648)), vec2<i32>(20302i, -16468i)), Struct_1(vec3<i32>(21598i, 27111i, 3057i), vec2<i32>(1i, 7906i)))), Struct_3(Struct_2(727f, Struct_1(vec3<i32>(4059i, -1i, 16620i), vec2<i32>(-2694i, -16084i)), -366f, Struct_1(vec3<i32>(0i, 2147483647i, 6632i), vec2<i32>(-18068i, 1i)), Struct_1(vec3<i32>(1i, 0i, -9906i), vec2<i32>(1i, -8414i)))), Struct_3(Struct_2(-353f, Struct_1(vec3<i32>(-23526i, 3876i, 0i), vec2<i32>(4053i, -1351i)), 1739f, Struct_1(vec3<i32>(-36105i, 2147483647i, 0i), vec2<i32>(22859i, -14093i)), Struct_1(vec3<i32>(29218i, -13i, 1i), vec2<i32>(3138i, -1i)))), Struct_3(Struct_2(433f, Struct_1(vec3<i32>(61171i, 2147483647i, 1i), vec2<i32>(-5847i, 23119i)), -1178f, Struct_1(vec3<i32>(1i, -1i, 9169i), vec2<i32>(16378i, 1i)), Struct_1(vec3<i32>(0i, -47943i, -15580i), vec2<i32>(18724i, 11729i)))), Struct_3(Struct_2(898f, Struct_1(vec3<i32>(1i, -6825i, i32(-2147483648)), vec2<i32>(1i, -1i)), 2981f, Struct_1(vec3<i32>(1i, i32(-2147483648), 9275i), vec2<i32>(2367i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, -3338i, 2147483647i), vec2<i32>(-28785i, 0i)))), Struct_3(Struct_2(919f, Struct_1(vec3<i32>(-1i, 43698i, 1798i), vec2<i32>(0i, 0i)), -640f, Struct_1(vec3<i32>(-11292i, 2147483647i, 0i), vec2<i32>(0i, 2147483647i)), Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), vec2<i32>(0i, 2095i)))), Struct_3(Struct_2(-1000f, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -11598i), vec2<i32>(19441i, 29938i)), -1365f, Struct_1(vec3<i32>(0i, 0i, 7218i), vec2<i32>(2147483647i, -8886i)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 475i), vec2<i32>(36624i, 2147483647i)))));

var<private> global1: Struct_5 = Struct_5(-152f, vec3<bool>(false, false, false), Struct_2(-136f, Struct_1(vec3<i32>(2147483647i, 56228i, i32(-2147483648)), vec2<i32>(-6663i, -55172i)), 1314f, Struct_1(vec3<i32>(0i, 23221i, -70472i), vec2<i32>(2147483647i, -50155i)), Struct_1(vec3<i32>(0i, 1i, -89547i), vec2<i32>(-24879i, -21471i))), 2147483647i, vec4<bool>(true, false, true, false));

var<private> global2: f32 = 889f;

var<private> global3: vec2<u32> = vec2<u32>(6283u, 1u);

var<private> global4: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(0u, 18596u, 134229u), vec3<u32>(16672u, 4294967295u, 8639u), vec3<u32>(0u, 0u, 0u), vec3<u32>(7873u, 4294967295u, 5625u), vec3<u32>(8083u, 76249u, 4294967295u), vec3<u32>(0u, 1u, 55792u), vec3<u32>(62348u, 11360u, 0u), vec3<u32>(0u, 1u, 7463u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 19966u, 4294967295u), vec3<u32>(16978u, 7845u, 13276u), vec3<u32>(0u, 71222u, 2364u), vec3<u32>(18176u, 1u, 0u), vec3<u32>(41995u, 4294967295u, 21343u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = global1.c.d;
    var var_1 = Struct_4(any(global1.e));
    var var_2 = Struct_1(-var_0.a, firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.www, -var_0.a), -_wgslsmith_add_i32(-1i, 22141i))));
    var var_3 = 2424f;
    let var_4 = vec3<i32>(~u_input.b, _wgslsmith_mult_i32(arg_0, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d, ~var_2.b.x), firstLeadingBit(_wgslsmith_add_i32(u_input.d, var_0.a.x)))), (i32(-1i) * -3252i) >> (~(~(u_input.a.x ^ global3.x)) % 32u));
    return _wgslsmith_f_op_f32(-345f + global1.a);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(555f * _wgslsmith_f_op_f32(f32(-1f) * -430f)), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), _wgslsmith_mult_i32(26084i, -37759i), -2147483647i), vec3<i32>(firstTrailingBit(0i), 1i, u_input.b), abs(vec3<i32>(u_input.c.x, global1.c.d.b.x, global1.d))), -vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(global1.d, u_input.c.x, -2147483647i, -2147483647i)), u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.e)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c.c)))), global1.c.d, global1.c.b);
    let var_1 = global1.e.x;
    let var_2 = global0[_wgslsmith_index_u32(1u, 17u)];
    global3 = vec2<u32>(abs(u_input.a.x | ~0u) | ~u_input.a.x, 0u);
    global1 = Struct_5(_wgslsmith_f_op_f32(-1716f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(363f - -2807f) * _wgslsmith_f_op_f32(global1.c.c + var_2.a.c))))), !vec3<bool>(false, global1.e.x, global1.e.x), Struct_2(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.c * var_2.a.a), _wgslsmith_f_op_f32(select(-386f, var_0.c, true)))), var_0.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c.c))), var_2.a.e, Struct_1(var_2.a.d.a, _wgslsmith_mod_vec2_i32(abs(vec2<i32>(0i, global1.d)), var_2.a.d.b))), global1.d, vec4<bool>(any(vec3<bool>(true, !global1.e.x, any(global1.e.wz))), global1.b.x, global1.b.x, false));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(abs(global1.a))), 294f)), var_2.a.d, _wgslsmith_f_op_f32(func_3(abs(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(7906i, 25478i, -7834i), var_0.b.b.x)))), global1.c.d, global1.c.b);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> vec2<u32> {
    global1 = Struct_5(_wgslsmith_div_f32(global1.c.a, _wgslsmith_f_op_f32(-671f - _wgslsmith_f_op_f32(866f - 509f))), !(!global1.b), func_2(), -158i, !global1.e);
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(23581u, _wgslsmith_mod_u32(~(~32219u), _wgslsmith_mult_u32(~u_input.a.x, firstLeadingBit(46663u))), ~reverseBits(0u)), 0u);
    var_0 = Struct_4(!global1.b.x);
    return reverseBits(vec2<u32>(32795u, global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(Struct_4(true), global0[_wgslsmith_index_u32(~(~(~min(64998u, 1u))), 17u)]);
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -1063f) + -719f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(173f, _wgslsmith_f_op_f32(global1.c.c * 2690f)))))));
    var var_1 = func_2();
    var var_2 = Struct_4(global1.e.x);
    global1 = Struct_5(656f, select(!select(vec3<bool>(true, true, true), vec3<bool>(false, global1.b.x, true), true), vec3<bool>(!select(var_2.a, true, true), _wgslsmith_clamp_i32(var_1.e.b.x, 22563i, global1.c.b.a.x) >= ~1i, !select(false, global1.b.x, global1.b.x)), vec3<bool>(any(select(global1.e.ywx, vec3<bool>(true, var_2.a, global1.e.x), vec3<bool>(false, global1.e.x, var_2.a))), !(u_input.c.x < var_1.b.a.x), true)), func_2(), global1.c.d.b.x ^ ~global1.d, global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_1.a + 1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f))))), abs(firstTrailingBit(~141622u)), func_2().c, global1.c.b.a.xx, global1.c.b.b);
}

