struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(1093f, 674f, vec2<f32>(-1105f, 558f), Struct_2(Struct_1(vec2<i32>(-23456i, 54341i), 1u), vec3<u32>(90u, 8219u, 137710u))), Struct_4(-1182f, 779f, vec2<f32>(1000f, 495f), Struct_2(Struct_1(vec2<i32>(60028i, -1i), 4294967295u), vec3<u32>(66412u, 28392u, 20901u))), Struct_4(-903f, -239f, vec2<f32>(-1157f, 1064f), Struct_2(Struct_1(vec2<i32>(3452i, 2608i), 114268u), vec3<u32>(84164u, 0u, 4294967295u))), Struct_4(123f, -1249f, vec2<f32>(-1225f, -1689f), Struct_2(Struct_1(vec2<i32>(0i, 18562i), 4200u), vec3<u32>(1u, 25582u, 40309u))), Struct_4(3238f, 1538f, vec2<f32>(-408f, 1211f), Struct_2(Struct_1(vec2<i32>(-23123i, 2147483647i), 47919u), vec3<u32>(4294967295u, 35729u, 79278u))), Struct_4(467f, 2009f, vec2<f32>(-1062f, -872f), Struct_2(Struct_1(vec2<i32>(2147483647i, 10679i), 76445u), vec3<u32>(544u, 31859u, 1u))), Struct_4(-845f, 525f, vec2<f32>(-181f, -366f), Struct_2(Struct_1(vec2<i32>(-21112i, 28693i), 46862u), vec3<u32>(8404u, 6245u, 49808u))), Struct_4(463f, 795f, vec2<f32>(-406f, -1418f), Struct_2(Struct_1(vec2<i32>(-1i, -3744i), 96351u), vec3<u32>(1u, 51150u, 33298u))), Struct_4(720f, -1615f, vec2<f32>(-785f, -239f), Struct_2(Struct_1(vec2<i32>(0i, 25111i), 37590u), vec3<u32>(1u, 1u, 15087u))), Struct_4(-734f, 1557f, vec2<f32>(-1000f, -403f), Struct_2(Struct_1(vec2<i32>(2147483647i, 1i), 18315u), vec3<u32>(0u, 0u, 47506u))), Struct_4(713f, 919f, vec2<f32>(-1057f, -818f), Struct_2(Struct_1(vec2<i32>(16710i, -1i), 52476u), vec3<u32>(0u, 0u, 1u))), Struct_4(1096f, -636f, vec2<f32>(-941f, -1261f), Struct_2(Struct_1(vec2<i32>(17527i, 0i), 0u), vec3<u32>(1u, 0u, 4294967295u))), Struct_4(747f, -711f, vec2<f32>(-1442f, 638f), Struct_2(Struct_1(vec2<i32>(-1i, 1i), 4294967295u), vec3<u32>(16931u, 54771u, 81053u))), Struct_4(1109f, 1077f, vec2<f32>(-787f, 181f), Struct_2(Struct_1(vec2<i32>(28550i, 1i), 0u), vec3<u32>(54440u, 8995u, 1338u))), Struct_4(248f, 291f, vec2<f32>(190f, -1024f), Struct_2(Struct_1(vec2<i32>(-24925i, -1257i), 52347u), vec3<u32>(0u, 5560u, 4294967295u))), Struct_4(549f, -1000f, vec2<f32>(1820f, 794f), Struct_2(Struct_1(vec2<i32>(0i, -20329i), 30350u), vec3<u32>(1u, 0u, 0u))), Struct_4(-1000f, 178f, vec2<f32>(-459f, 105f), Struct_2(Struct_1(vec2<i32>(12669i, 1940i), 0u), vec3<u32>(23285u, 0u, 0u))), Struct_4(481f, 1022f, vec2<f32>(-2092f, 1171f), Struct_2(Struct_1(vec2<i32>(-18475i, -63366i), 0u), vec3<u32>(1u, 62963u, 36037u))), Struct_4(-526f, 170f, vec2<f32>(-649f, -876f), Struct_2(Struct_1(vec2<i32>(-1i, 1i), 1u), vec3<u32>(23163u, 48725u, 15129u))), Struct_4(349f, -793f, vec2<f32>(922f, -850f), Struct_2(Struct_1(vec2<i32>(-1i, -1i), 0u), vec3<u32>(1u, 31166u, 22271u))), Struct_4(487f, 177f, vec2<f32>(1097f, -1595f), Struct_2(Struct_1(vec2<i32>(0i, -1i), 0u), vec3<u32>(67166u, 79500u, 51373u))));

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(10510u, 47005u, 20627u, 4294967295u), vec4<u32>(0u, 5825u, 12080u, 21013u), vec4<u32>(33839u, 1u, 16025u, 44411u), vec4<u32>(1u, 1u, 0u, 31730u), vec4<u32>(17722u, 0u, 4294967295u, 10300u), vec4<u32>(1u, 0u, 62268u, 4294967295u), vec4<u32>(4294967295u, 10095u, 14051u, 17323u), vec4<u32>(0u, 1u, 8245u, 1u), vec4<u32>(0u, 25047u, 4294967295u, 3606u), vec4<u32>(1561u, 1u, 13120u, 55752u), vec4<u32>(1u, 0u, 71403u, 130276u), vec4<u32>(4294967295u, 21397u, 1u, 14290u), vec4<u32>(16849u, 39072u, 7406u, 40155u), vec4<u32>(0u, 14499u, 0u, 64287u), vec4<u32>(20990u, 59473u, 53824u, 290u), vec4<u32>(78200u, 0u, 31170u, 28074u));

var<private> global3: vec3<f32> = vec3<f32>(-1924f, -295f, 890f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = vec2<bool>(all(!vec2<bool>(any(vec4<bool>(arg_1, arg_1, false, false)), true)), false);
    var var_1 = select(select(var_0, vec2<bool>(arg_1, (arg_2 <= global3.x) | all(vec2<bool>(false, arg_1))), !all(var_0)), !select(vec2<bool>(false, all(vec3<bool>(true, true, arg_1))), !vec2<bool>(var_0.x, arg_1), !var_0), !select(select(!var_0, vec2<bool>(true, true), vec2<bool>(false, false)), var_0, vec2<bool>(all(vec3<bool>(false, var_0.x, arg_1)), !var_0.x)));
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1284f, global3.x, global1.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, -2308f, global3.x)))));
    return global3.x;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = all(!select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), vec3<bool>(all(vec2<bool>(false, false)), true, any(vec2<bool>(false, true)))));
    let var_1 = u_input.a;
    var var_2 = global3.yz;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_2.x)))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<i32>(2147483647i, var_1), arg_1), u_input.d.zwz), !var_0, -847f, var_1))));
    var var_3 = u_input.d | vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.d, ~global2[_wgslsmith_index_u32(1796u, 16u)]), max(select(u_input.c.x, 1u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, u_input.b.x), vec2<u32>(0u, arg_1))), _wgslsmith_add_u32(abs(4294967295u), arg_1 | 8853u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, 29910u), 1u, 4294967295u) >> (max(~0u, ~0u) % 32u), 4294967295u, (arg_1 << ((arg_1 & arg_1) % 32u)) & _wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, u_input.c.x), arg_1 ^ arg_1));
    return Struct_1(-(~vec2<i32>(7626i, arg_0)) ^ firstTrailingBit(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, var_1), vec2<i32>(var_1, u_input.a))), 1u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_4, 21>();
    global0 = array<Struct_4, 21>();
    let var_0 = arg_3;
    var var_1 = -221f;
    return func_2(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(arg_2, _wgslsmith_mod_vec3_i32(arg_2, arg_2), ~vec3<i32>(arg_0.a.a.x, arg_0.a.a.x, -1i))), arg_2), max(_wgslsmith_mod_u32(37944u, ~reverseBits(arg_0.b.x)), _wgslsmith_div_u32(arg_1.b, 8992u)));
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(Struct_2(func_2(~(u_input.a ^ 25793i), ~(~0u)), countOneBits(vec3<u32>(u_input.c.x, 91363u, 61137u) >> (vec3<u32>(0u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))), Struct_1(-firstLeadingBit(vec2<i32>(10169i, u_input.e) >> (vec2<u32>(u_input.c.x, 53728u) % vec2<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(u_input.d.zzw), vec3<u32>(0u, 4294967295u, u_input.d.x)), 31731u)), abs(vec3<i32>(2147483647i, -1i, u_input.e)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, firstLeadingBit(28100u)), max(_wgslsmith_clamp_vec3_u32(u_input.d.zyw, vec3<u32>(62150u, u_input.c.x, 4294967295u), u_input.d.wxw), u_input.d.yxw)) % vec3<u32>(32u)), vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, global3.x)) * _wgslsmith_f_op_f32(global3.x * 210f)))));
    let var_1 = vec2<i32>(u_input.e, -u_input.a);
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(f32(-1f) * -1683f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global1.x) - _wgslsmith_f_op_f32(step(global3.x, -808f))))), _wgslsmith_f_op_f32(171f * global3.x));
    let var_2 = Struct_2(func_4(Struct_2(Struct_1(var_0.a, abs(var_0.b)), u_input.d.xzy), Struct_1(-_wgslsmith_clamp_vec2_i32(var_0.a, vec2<i32>(-2147483647i, -14692i), var_0.a), var_0.b), select(-reverseBits(vec3<i32>(u_input.a, 66531i, 0i)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_0.a.x), vec3<i32>(2147483647i, var_1.x, var_1.x)), vec3<i32>(var_1.x, -1i, -40380i) ^ vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x)), false), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2440f, global3.x, global3.x)))))), u_input.d.zww);
    var_0 = Struct_1(vec2<i32>(-var_1.x, 60518i), _wgslsmith_add_u32(1u, firstLeadingBit(abs(var_2.b.x) << (0u % 32u))));
    return Struct_4(-302f, global3.x, vec2<f32>(_wgslsmith_f_op_f32(1f + 197f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x)))), var_2);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(471f * 803f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2150f, arg_1.a), global3.x)))) - arg_1.c);
    global2 = array<vec4<u32>, 16>();
    let var_1 = func_4(arg_1.d, Struct_1(arg_1.d.a.a, reverseBits(26519u)), vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.a.a.x, 45553i, -15824i, u_input.e), vec4<i32>(-16431i, arg_1.d.a.a.x, -2147483647i, 0i)), u_input.a, u_input.e) << (abs(u_input.d.zyx) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-757f, arg_1.a, global3.x)))))));
    global2 = array<vec4<u32>, 16>();
    global2 = array<vec4<u32>, 16>();
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(929f + _wgslsmith_f_op_f32(func_5(max(countOneBits(u_input.c) & abs(vec2<u32>(u_input.c.x, u_input.c.x)), vec2<u32>(firstTrailingBit(20257u), 1u)), func_1())));
    let var_1 = reverseBits(u_input.d.x) < ~0u;
    let var_2 = any(vec4<bool>(any(select(!vec4<bool>(false, false, var_1, var_1), !vec4<bool>(true, var_1, true, var_1), false)), false, !any(!vec2<bool>(var_1, var_1)), all(select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(false, var_1, var_1, var_1), select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, var_1, true, true), vec4<bool>(var_1, false, false, true))))));
    var var_3 = func_1();
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(345f, var_0, global1.x))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, 338f, global1.x) - vec3<f32>(-847f, 134f, 124f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, global1.x, 1000f) - vec3<f32>(757f, -351f, var_0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-908f, 1151f, global3.x)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-156f, -1704f, var_3.a) - vec3<f32>(global3.x, var_3.c.x, var_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, global3.x, global1.x) * vec3<f32>(global1.x, -967f, var_0)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1277f, 178f, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, 351f, 1206f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.x, var_3.c.x, 1076f), vec3<f32>(global1.x, var_0, global1.x))))))));
    var var_5 = Struct_4(_wgslsmith_f_op_f32(func_5(var_3.d.b.zy, global0[_wgslsmith_index_u32(~min(_wgslsmith_mult_u32(var_3.d.b.x, u_input.b.x), func_2(var_3.d.a.a.x, var_3.d.b.x).b), 21u)])), 537f, var_3.c, func_1().d);
    global0 = array<Struct_4, 21>();
    let var_6 = select(!(!vec3<bool>(any(vec3<bool>(false, var_2, var_2)), false, false)), select(select(vec3<bool>(false | var_1, all(vec3<bool>(var_2, var_2, var_2)), true), !select(vec3<bool>(false, var_1, true), vec3<bool>(var_1, true, false), vec3<bool>(var_2, true, false)), !vec3<bool>(false, true, var_1)), select(vec3<bool>(true, true, true), !(!vec3<bool>(var_1, false, false)), true), var_1), !(var_5.d.a.b < var_5.d.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(20132u, _wgslsmith_mult_u32(3680u, ~(u_input.d.x & 34186u)) ^ ~var_3.d.b.x, ~firstTrailingBit(-2147483647i));
}

