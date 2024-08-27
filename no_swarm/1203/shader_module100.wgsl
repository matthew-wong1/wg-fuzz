struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(40226i, 51881i, true, Struct_1(2025f, vec2<u32>(1u, 27127u)), Struct_1(380f, vec2<u32>(43560u, 2783u))), true), Struct_3(Struct_2(0i, 23256i, true, Struct_1(226f, vec2<u32>(6253u, 1u)), Struct_1(-431f, vec2<u32>(54547u, 45946u))), true), Struct_3(Struct_2(-25603i, -41437i, true, Struct_1(-546f, vec2<u32>(77277u, 76160u)), Struct_1(1000f, vec2<u32>(16140u, 47539u))), false), Struct_3(Struct_2(-39069i, 2147483647i, true, Struct_1(239f, vec2<u32>(1u, 26640u)), Struct_1(452f, vec2<u32>(1u, 34777u))), true), Struct_3(Struct_2(70294i, -32724i, true, Struct_1(624f, vec2<u32>(71694u, 4294967295u)), Struct_1(755f, vec2<u32>(0u, 61670u))), true), Struct_3(Struct_2(20837i, 1i, true, Struct_1(115f, vec2<u32>(22919u, 16080u)), Struct_1(125f, vec2<u32>(1u, 0u))), false), Struct_3(Struct_2(8737i, -10137i, false, Struct_1(1390f, vec2<u32>(99392u, 11430u)), Struct_1(-1623f, vec2<u32>(27190u, 4294967295u))), true), Struct_3(Struct_2(2782i, -1i, false, Struct_1(-1354f, vec2<u32>(1u, 1u)), Struct_1(1994f, vec2<u32>(0u, 32583u))), false), Struct_3(Struct_2(2147483647i, -4103i, false, Struct_1(-1348f, vec2<u32>(4294967295u, 0u)), Struct_1(855f, vec2<u32>(57457u, 1u))), false), Struct_3(Struct_2(i32(-2147483648), 1i, false, Struct_1(900f, vec2<u32>(13u, 65397u)), Struct_1(1572f, vec2<u32>(1u, 28877u))), true), Struct_3(Struct_2(i32(-2147483648), -9332i, false, Struct_1(-317f, vec2<u32>(1u, 12485u)), Struct_1(-156f, vec2<u32>(105611u, 0u))), false), Struct_3(Struct_2(-1i, 1454i, true, Struct_1(-319f, vec2<u32>(1u, 0u)), Struct_1(323f, vec2<u32>(32812u, 73909u))), true), Struct_3(Struct_2(21279i, 0i, false, Struct_1(-1410f, vec2<u32>(17177u, 65709u)), Struct_1(-1092f, vec2<u32>(11704u, 1u))), false), Struct_3(Struct_2(0i, -37536i, false, Struct_1(896f, vec2<u32>(12331u, 0u)), Struct_1(-170f, vec2<u32>(34001u, 1u))), false), Struct_3(Struct_2(-103470i, 60478i, false, Struct_1(791f, vec2<u32>(21426u, 68624u)), Struct_1(1000f, vec2<u32>(0u, 31587u))), true), Struct_3(Struct_2(1i, 2147483647i, false, Struct_1(-1000f, vec2<u32>(4294967295u, 1u)), Struct_1(-1191f, vec2<u32>(10453u, 4294967295u))), true), Struct_3(Struct_2(0i, 0i, false, Struct_1(948f, vec2<u32>(6756u, 4294967295u)), Struct_1(1760f, vec2<u32>(11347u, 14384u))), false), Struct_3(Struct_2(i32(-2147483648), 2147483647i, true, Struct_1(-2394f, vec2<u32>(4294967295u, 119128u)), Struct_1(-136f, vec2<u32>(20583u, 0u))), false), Struct_3(Struct_2(39072i, 64536i, false, Struct_1(778f, vec2<u32>(1u, 48555u)), Struct_1(-160f, vec2<u32>(4294967295u, 0u))), false), Struct_3(Struct_2(-4173i, -25038i, false, Struct_1(-1759f, vec2<u32>(1u, 38022u)), Struct_1(1096f, vec2<u32>(56754u, 0u))), true), Struct_3(Struct_2(-27482i, -31717i, true, Struct_1(-1000f, vec2<u32>(25751u, 1u)), Struct_1(323f, vec2<u32>(4294967295u, 10024u))), false), Struct_3(Struct_2(i32(-2147483648), i32(-2147483648), false, Struct_1(134f, vec2<u32>(5243u, 69447u)), Struct_1(1044f, vec2<u32>(18535u, 4294967295u))), false), Struct_3(Struct_2(0i, i32(-2147483648), true, Struct_1(540f, vec2<u32>(4294967295u, 95901u)), Struct_1(-2228f, vec2<u32>(53372u, 41181u))), false), Struct_3(Struct_2(-61190i, 1i, false, Struct_1(-958f, vec2<u32>(34682u, 0u)), Struct_1(-261f, vec2<u32>(4294967295u, 4294967295u))), false), Struct_3(Struct_2(2147483647i, 37767i, false, Struct_1(895f, vec2<u32>(40738u, 4294967295u)), Struct_1(-1532f, vec2<u32>(4294967295u, 4294967295u))), true), Struct_3(Struct_2(0i, 0i, true, Struct_1(1623f, vec2<u32>(16034u, 4294967295u)), Struct_1(420f, vec2<u32>(72431u, 0u))), true), Struct_3(Struct_2(5294i, 1i, true, Struct_1(-435f, vec2<u32>(67504u, 116397u)), Struct_1(-2345f, vec2<u32>(34885u, 58794u))), true), Struct_3(Struct_2(10562i, i32(-2147483648), true, Struct_1(361f, vec2<u32>(4294967295u, 14397u)), Struct_1(-1808f, vec2<u32>(0u, 4294967295u))), false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_2(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x << (~arg_0.a.e.b.x % 32u), global0[_wgslsmith_index_u32(arg_0.a.d.b.x, 4u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(36825u, 0u, 1u), reverseBits(vec3<u32>(arg_0.a.e.b.x, 6383u, arg_0.a.e.b.x))), max(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.e.b.x, arg_0.a.d.b.x, arg_0.a.d.b.x), vec3<u32>(arg_0.a.d.b.x, arg_0.a.e.b.x, arg_0.a.e.b.x)), vec3<u32>(arg_0.a.d.b.x, 18825u, 1u))), 4u)]), !all(vec4<bool>(true, !arg_0.b, false, true)), arg_0.a.d, arg_0.a.d);
    return _wgslsmith_div_f32(var_0.d.a, _wgslsmith_f_op_f32(arg_0.a.d.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.e.a, var_0.e.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.d.a) - _wgslsmith_f_op_f32(-918f - arg_0.a.d.a)))));
}

fn func_4(arg_0: vec3<f32>) -> vec4<u32> {
    global0 = array<i32, 4>();
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(111363u, 539u)), firstTrailingBit(firstTrailingBit(~vec2<u32>(0u, 0u)))));
    var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(~21704u, _wgslsmith_mod_u32(countOneBits(1u), ~(~1u))), 0u);
    let var_1 = -593f;
    global1 = array<Struct_3, 28>();
    return _wgslsmith_add_vec4_u32(~(~vec4<u32>(~4294967295u, _wgslsmith_mult_u32(4294967295u, 0u), ~72656u, ~1u)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 7766u, 56523u), ~vec4<u32>(1u, 13305u, 1u, 11561u), reverseBits(vec4<u32>(0u, 32397u, 1u, 15821u))) & ~vec4<u32>(0u, 1u, 51646u, 0u), vec4<u32>(87682u, abs(1u), min(~7416u, countOneBits(6135u)), 1u), true));
}

fn func_2() -> vec4<bool> {
    global1 = array<Struct_3, 28>();
    var var_0 = max(vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, firstTrailingBit(20919u)), ~(~61136u), ~1u)), ~vec2<u32>(firstTrailingBit(max(21292u, 98275u)), 68240u));
    var var_1 = (_wgslsmith_mod_vec4_u32(~select(vec4<u32>(41897u, var_0.x, 4294967295u, var_0.x), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), false), firstTrailingBit(max(vec4<u32>(25742u, 30011u, 0u, var_0.x), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)))) << (reverseBits(~(~vec4<u32>(0u, var_0.x, var_0.x, 3287u))) % vec4<u32>(32u))) << (~vec4<u32>(min(var_0.x, var_0.x) | 4294967295u, var_0.x, var_0.x, 0u) % vec4<u32>(32u));
    var var_2 = false;
    var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1565f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(-5578i, global0[_wgslsmith_index_u32(0u, 4u)], true, Struct_1(-500f, vec2<u32>(var_1.x, var_1.x)), Struct_1(-566f, var_1.yw)), false))) - -500f)), _wgslsmith_f_op_f32(-733f * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2818f))) + -1047f)));
    return !vec4<bool>(!all(vec2<bool>(false, false)) && all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), true, !all(vec4<bool>(true, false, true, true)), !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_1 {
    global0 = array<i32, 4>();
    let var_0 = vec2<f32>(arg_1.a.d.a, 1677f);
    global0 = array<i32, 4>();
    var var_1 = func_2();
    global1 = array<Struct_3, 28>();
    return arg_1.a.e;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_i32(select(~abs(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.a.e.b.x, 4u)], -10884i, -1i)), arg_3.zyz, select(select(vec3<bool>(arg_0.b, false, false), vec3<bool>(false, arg_0.b, true), arg_0.a.c), vec3<bool>(false, arg_0.b, false), vec3<bool>(arg_0.a.c, arg_0.b, arg_0.b))) >> (~max(~arg_2, ~vec3<u32>(arg_0.a.d.b.x, arg_2.x, arg_1.b.x)) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(firstLeadingBit(-18997i), ~countOneBits(global0[_wgslsmith_index_u32(arg_1.b.x, 4u)]), global0[_wgslsmith_index_u32(1u, 4u)])));
    var var_1 = func_1(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.e.a * -1211f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(-691f * 310f)), arg_0.a.c, true), Struct_3(Struct_2(var_0, ~(-2147483647i), true, arg_0.a.e, arg_1), arg_0.b), !func_2().yy, select(!vec2<bool>(!arg_0.b, false), !(!(!vec2<bool>(arg_0.a.c, arg_0.b))), true));
    global1 = array<Struct_3, 28>();
    var var_2 = abs(1u >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 0u, 1u), ~arg_2) % 32u));
    var_2 = _wgslsmith_clamp_u32(1u, ~0u, countOneBits(~16743u));
    return arg_0.a.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(-562f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-677f)))), !(select(true, false, false) != true))), 337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_3(Struct_2(u_input.a.x, 2147483647i, true, Struct_1(-1000f, vec2<u32>(0u, 15537u)), Struct_1(1000f, vec2<u32>(53197u, 54548u))), true), func_1(vec3<bool>(false, true, false), Struct_3(Struct_2(0i, u_input.a.x, true, Struct_1(614f, vec2<u32>(0u, 1u)), Struct_1(-254f, vec2<u32>(23863u, 37709u))), false), vec2<bool>(false, true), vec2<bool>(false, false)), reverseBits(vec3<u32>(4534u, 26042u, 0u)), abs(vec4<i32>(global0[_wgslsmith_index_u32(19862u, 4u)], u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(30094u, 4u)])))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1191f)) + _wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(abs(1256f)))));
    let var_1 = Struct_1(556f, vec2<u32>(1u, 1u));
    let var_2 = Struct_2(_wgslsmith_dot_vec2_i32(u_input.a ^ u_input.a, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 14238i, -1i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], -34032i, u_input.a.x)), ~vec3<i32>(global0[_wgslsmith_index_u32(var_1.b.x, 4u)], global0[_wgslsmith_index_u32(46719u, 4u)], u_input.a.x)), u_input.a.x ^ ~u_input.a.x)), _wgslsmith_sub_i32(30343i, global0[_wgslsmith_index_u32(4294967295u, 4u)]), func_2().x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1227f)), _wgslsmith_div_vec2_u32(~var_1.b, ~(var_1.b | var_1.b))), var_1);
    let var_3 = Struct_2(~_wgslsmith_add_i32(countOneBits(max(u_input.a.x, 0i)), 0i), var_2.b, var_2.c, var_2.d, var_1);
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1473f), -2147483647i, var_3.d.b.x);
}

