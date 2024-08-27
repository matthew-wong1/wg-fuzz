struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: f32;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(33561u, 57119u, 268f), Struct_1(1u, 4294967295u, 1301f), Struct_1(4294967295u, 86803u, -1009f), Struct_1(1u, 3078u, 383f), Struct_1(0u, 78545u, -811f), Struct_1(4294967295u, 4294967295u, 732f), Struct_1(0u, 1u, -528f), Struct_1(0u, 6943u, 147f), Struct_1(1u, 36999u, 894f), Struct_1(4294967295u, 1u, 1000f), Struct_1(13719u, 0u, -136f), Struct_1(68144u, 1u, -810f), Struct_1(0u, 0u, -990f), Struct_1(39462u, 61447u, -1000f), Struct_1(0u, 18629u, -1377f), Struct_1(4294967295u, 4063u, -321f), Struct_1(1u, 36827u, 302f), Struct_1(1u, 4294967295u, -354f), Struct_1(1u, 4573u, 1063f), Struct_1(59881u, 4294967295u, 859f), Struct_1(4294967295u, 1u, -590f), Struct_1(1u, 4294967295u, -535f), Struct_1(1u, 8981u, -117f), Struct_1(29560u, 1u, -1455f), Struct_1(1u, 77970u, -385f), Struct_1(47671u, 10054u, -688f), Struct_1(46457u, 56047u, -1652f), Struct_1(0u, 9561u, 1055f), Struct_1(12114u, 23508u, -1267f), Struct_1(0u, 4294967295u, -389f));

var<private> global2: array<bool, 27> = array<bool, 27>(false, false, false, false, false, true, false, false, true, true, true, true, false, false, true, true, true, false, false, true, true, false, true, false, false, true, true);

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(57427u, 5066u, -269f), Struct_1(1u, 0u, -893f), Struct_1(69148u, 0u, 1555f), Struct_1(32202u, 141539u, 1833f), Struct_1(77521u, 53018u, 1338f), Struct_1(0u, 1u, 1548f), Struct_1(4294967295u, 53829u, -1287f), Struct_1(299u, 80485u, 1312f), Struct_1(22123u, 4294967295u, -277f), Struct_1(12509u, 4294967295u, -1278f), Struct_1(29458u, 1u, -230f), Struct_1(4245u, 4294967295u, -296f), Struct_1(56770u, 4294967295u, -627f), Struct_1(4294967295u, 1u, 163f), Struct_1(0u, 19166u, 1000f), Struct_1(49096u, 51460u, -806f), Struct_1(4294967295u, 6577u, 168f), Struct_1(14771u, 23031u, 556f), Struct_1(1u, 4294967295u, 326f), Struct_1(1u, 101542u, -162f), Struct_1(32925u, 1u, 2005f), Struct_1(4294967295u, 16746u, 1038f), Struct_1(1u, 1u, -1000f), Struct_1(4294967295u, 4294967295u, 453f), Struct_1(28437u, 17471u, -1004f));

var<private> global4: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<u32>(107068u, 42200u), vec3<u32>(59677u, 32050u, 33743u), vec3<f32>(-1001f, 1968f, -153f)), Struct_2(vec2<u32>(4294967295u, 1u), vec3<u32>(15524u, 0u, 26149u), vec3<f32>(130f, 985f, 691f)), Struct_2(vec2<u32>(0u, 1u), vec3<u32>(1346u, 17807u, 4294967295u), vec3<f32>(-223f, -506f, -282f)), Struct_2(vec2<u32>(4294967295u, 0u), vec3<u32>(1u, 4294967295u, 17703u), vec3<f32>(319f, 1286f, 2053f)), Struct_2(vec2<u32>(102285u, 4294967295u), vec3<u32>(23873u, 4294967295u, 27860u), vec3<f32>(380f, 817f, 1000f)), Struct_2(vec2<u32>(1u, 65274u), vec3<u32>(40573u, 35975u, 7579u), vec3<f32>(452f, 894f, -154f)), Struct_2(vec2<u32>(17121u, 0u), vec3<u32>(29483u, 13711u, 1u), vec3<f32>(840f, -2231f, -337f)), Struct_2(vec2<u32>(69572u, 77774u), vec3<u32>(1u, 28062u, 24990u), vec3<f32>(588f, 965f, -445f)), Struct_2(vec2<u32>(26261u, 0u), vec3<u32>(4294967295u, 34861u, 55745u), vec3<f32>(-1583f, -161f, -223f)), Struct_2(vec2<u32>(61264u, 1u), vec3<u32>(29074u, 0u, 0u), vec3<f32>(-708f, -202f, -734f)), Struct_2(vec2<u32>(23073u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(188f, 451f, -1911f)), Struct_2(vec2<u32>(78659u, 1u), vec3<u32>(16852u, 49131u, 92192u), vec3<f32>(-1000f, 900f, 1000f)), Struct_2(vec2<u32>(1u, 0u), vec3<u32>(717u, 123096u, 76486u), vec3<f32>(145f, 801f, 926f)), Struct_2(vec2<u32>(1u, 76403u), vec3<u32>(4294967295u, 24853u, 27623u), vec3<f32>(-694f, -915f, 1000f)), Struct_2(vec2<u32>(1u, 78225u), vec3<u32>(107047u, 31032u, 52599u), vec3<f32>(102f, 1449f, -1373f)), Struct_2(vec2<u32>(0u, 22044u), vec3<u32>(44626u, 81806u, 48449u), vec3<f32>(-467f, -838f, 1000f)), Struct_2(vec2<u32>(15148u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<f32>(-1410f, -473f, -384f)), Struct_2(vec2<u32>(0u, 1u), vec3<u32>(49883u, 0u, 1u), vec3<f32>(-797f, -981f, 272f)), Struct_2(vec2<u32>(28974u, 4294967295u), vec3<u32>(1u, 5361u, 71506u), vec3<f32>(125f, 294f, -1000f)), Struct_2(vec2<u32>(0u, 29839u), vec3<u32>(1u, 4294967295u, 0u), vec3<f32>(431f, 795f, 1037f)), Struct_2(vec2<u32>(0u, 34435u), vec3<u32>(41643u, 0u, 1u), vec3<f32>(420f, -504f, 235f)), Struct_2(vec2<u32>(4294967295u, 0u), vec3<u32>(1u, 0u, 1u), vec3<f32>(2356f, -1241f, -387f)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> bool {
    let var_0 = !select(!(!select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(arg_0.b, 27u)]), vec2<bool>(global2[_wgslsmith_index_u32(arg_1.b.b, 27u)], true), vec2<bool>(global2[_wgslsmith_index_u32(24229u, 27u)], global2[_wgslsmith_index_u32(arg_2, 27u)]))), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u << (arg_1.e % 32u), 18954u & arg_1.b.a), 27u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_0.b, arg_0.b, 0u), vec3<u32>(6428u, arg_2, arg_2)), reverseBits(vec3<u32>(arg_0.a, 16543u, arg_0.a))), 27u)]), vec2<bool>(true, true));
    let var_1 = all(select(!select(vec4<bool>(false, false, true, var_0.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_0.x, var_0.x, global2[_wgslsmith_index_u32(arg_1.b.b, 27u)]), vec4<bool>(false, var_0.x, var_0.x, true)), vec4<bool>(global2[_wgslsmith_index_u32(arg_2, 27u)], false, global2[_wgslsmith_index_u32(arg_2, 27u)], false)), vec4<bool>(true || (496f == arg_0.c), false, any(vec3<bool>(global2[_wgslsmith_index_u32(arg_2, 27u)], global2[_wgslsmith_index_u32(arg_0.a, 27u)], false)), !(var_0.x && global2[_wgslsmith_index_u32(arg_2, 27u)])), all(var_0)));
    let var_2 = select(vec2<bool>(false || var_1, !(false || global2[_wgslsmith_index_u32(arg_1.c, 27u)])), select(var_0, var_0, global2[_wgslsmith_index_u32(1u, 27u)]), var_0);
    let var_3 = vec2<bool>(any(select(!vec3<bool>(var_1, false, var_2.x), !(!vec3<bool>(var_0.x, var_2.x, var_1)), global2[_wgslsmith_index_u32(15094u, 27u)])), select(any(select(vec4<bool>(var_2.x, true, var_0.x, global2[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(var_1, var_2.x, var_2.x, var_0.x))), select(arg_1.b.c >= arg_1.b.c, global2[_wgslsmith_index_u32(arg_0.b, 27u)], var_1), var_1) & any(select(var_0, !vec2<bool>(var_0.x, var_1), var_0)));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    global3 = array<Struct_1, 25>();
    global4 = array<Struct_2, 22>();
    var var_0 = Struct_4(vec2<bool>(!func_3(global3[_wgslsmith_index_u32(arg_0.a, 25u)], Struct_3(0u, Struct_1(arg_0.a, arg_1, arg_0.c), 12554u, vec2<i32>(u_input.a, -1i), 1u), 1u << (1u % 32u), _wgslsmith_f_op_f32(trunc(arg_0.c))), true), ~41793u, select(vec3<bool>(all(!vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(4294967295u, 27u)])), global2[_wgslsmith_index_u32(~(~1u), 27u)], !(global2[_wgslsmith_index_u32(0u, 27u)] || global2[_wgslsmith_index_u32(84322u, 27u)])), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(52518u, 27u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(51643u, 27u)]))), global2[_wgslsmith_index_u32(arg_1, 27u)]));
    var var_1 = Struct_4(!select(!var_0.a, vec2<bool>(func_3(arg_0, Struct_3(var_0.b, Struct_1(arg_1, arg_0.a, arg_0.c), 18811u, vec2<i32>(u_input.a, u_input.a), arg_0.a), 1u, -827f), global2[_wgslsmith_index_u32(~arg_1, 27u)]), any(select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(33522u, 27u)]), var_0.c, var_0.c.x))), firstLeadingBit(var_0.b), var_0.c);
    global2 = array<bool, 27>();
    return 25161u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_1 {
    global2 = array<bool, 27>();
    global4 = array<Struct_2, 22>();
    var var_0 = arg_0.c;
    global3 = array<Struct_1, 25>();
    let var_1 = 1u;
    return global3[_wgslsmith_index_u32(~103866u, 25u)];
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> bool {
    global2 = array<bool, 27>();
    var var_0 = global4[_wgslsmith_index_u32(~(~min(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_div_u32(arg_3, arg_2.e)), select(_wgslsmith_div_u32(arg_2.c, arg_1.a), arg_1.a, all(vec3<bool>(global2[_wgslsmith_index_u32(4327u, 27u)], global2[_wgslsmith_index_u32(39002u, 27u)], arg_0.x))))), 22u)];
    let var_1 = _wgslsmith_dot_vec2_i32(countOneBits(~arg_2.d), arg_2.d);
    return global2[_wgslsmith_index_u32(arg_3, 27u)];
}

fn func_1() -> bool {
    let var_0 = vec3<bool>(func_5(!(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)])), func_4(global3[_wgslsmith_index_u32(1u, 25u)], Struct_4(vec2<bool>(false, global2[_wgslsmith_index_u32(82423u, 27u)]), func_2(Struct_1(44407u, 27766u, 1056f), 60908u), !vec3<bool>(true, global2[_wgslsmith_index_u32(106203u, 27u)], true)), (vec4<i32>(-12204i, 1i, 1i, u_input.a) >> (vec4<u32>(24996u, 3127u, 4294967295u, 39767u) % vec4<u32>(32u))) | (vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<i32>(22485i, 2147483647i, u_input.a, u_input.a))), Struct_3(19946u, global1[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 72624u), vec2<u32>(4294967295u, 4294967295u)), max(1u, 47742u)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), firstTrailingBit(vec2<i32>(u_input.a, 2147483647i))), _wgslsmith_mod_u32(max(37754u, 0u), ~14153u)), 32726u), all(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~120739u, 1u), 27u)], func_5(select(vec2<bool>(true, false), vec2<bool>(true, global2[_wgslsmith_index_u32(52208u, 27u)]), false), Struct_1(1u, 48249u, 101f), Struct_3(28590u, global1[_wgslsmith_index_u32(4294967295u, 30u)], 41526u, vec2<i32>(2147483647i, u_input.a), 18906u), _wgslsmith_mod_u32(24744u, 47999u)))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 4294967295u, firstLeadingBit(~4294967295u)), 27u)]);
    var var_1 = select(-vec4<i32>(firstTrailingBit(u_input.a), 1i, 1i, u_input.a), ~_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, 21385i, 15985i, u_input.a) >> (~vec4<u32>(4294967295u, 0u, 74909u, 36025u) % vec4<u32>(32u)), vec4<i32>(u_input.a, -43601i, u_input.a >> (3493u % 32u), _wgslsmith_mod_i32(u_input.a, 0i))), vec4<bool>(true, false, true || func_3(Struct_1(4294967295u, 0u, 866f), Struct_3(72412u, Struct_1(3554u, 2705u, 1913f), 0u, vec2<i32>(0i, -7785i), 4394u), ~46671u, _wgslsmith_f_op_f32(-716f - 769f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(696f, -815f, false)), -414f)) == 269f));
    var var_2 = Struct_3(49720u, Struct_1(12817u, ~1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1000f, 2981f, select(var_0.x, var_0.x, false)))))), abs(1030u), vec2<i32>(var_1.x << (1u % 32u), max(-firstLeadingBit(1i), -firstTrailingBit(u_input.a))), ~(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(34664u, 1u, 1u, 5169u), vec4<u32>(1u, 74791u, 46320u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)) << (20295u % 32u)));
    global2 = array<bool, 27>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-1343f + func_4(global3[_wgslsmith_index_u32(var_2.a, 25u)], Struct_4(vec2<bool>(var_0.x, true), ~var_2.b.b, !var_0), vec4<i32>(u_input.a, var_2.d.x, var_2.d.x, var_1.x) << ((vec4<u32>(var_2.a, var_2.b.a, 0u, 4294967295u) << (vec4<u32>(var_2.c, 1u, 8663u, 62811u) % vec4<u32>(32u))) % vec4<u32>(32u))).c), var_2.b.c);
    return !func_3(func_4(Struct_1(_wgslsmith_add_u32(13734u, 59499u), abs(var_2.e), _wgslsmith_f_op_f32(-var_3.x)), Struct_4(var_0.xx, ~1u, var_0), abs(vec4<i32>(var_1.x, -2147483647i, 0i, -14475i)) << (firstLeadingBit(vec4<u32>(4294967295u, var_2.c, var_2.c, 0u)) % vec4<u32>(32u))), Struct_3(select(_wgslsmith_sub_u32(4294967295u, var_2.c), _wgslsmith_clamp_u32(var_2.e, var_2.a, 28925u), true), global3[_wgslsmith_index_u32(~4294967295u << (var_2.e % 32u), 25u)], var_2.a, vec2<i32>(var_2.d.x, -var_2.d.x), _wgslsmith_mod_u32(~49u, ~9231u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.b, 31013u, var_2.e, var_2.a), vec4<u32>(4573u, 4294967295u, 0u, 58368u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1744f - var_2.b.c)) * -1025f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 30>();
    let var_0 = abs(abs(~(~1u)));
    var var_1 = -(reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -52538i, -2147483647i), vec4<i32>(u_input.a, 2147483647i, u_input.a, 20981i)), ~vec4<i32>(u_input.a, 7063i, -48178i, 4777i))) | ~firstLeadingBit(abs(vec4<i32>(2147483647i, -20507i, -44643i, u_input.a))));
    var var_2 = -824f >= _wgslsmith_f_op_f32(-471f + _wgslsmith_f_op_f32(ceil(1507f)));
    var var_3 = Struct_4(select(vec2<bool>(select(false, select(true, false, true), any(vec4<bool>(global2[_wgslsmith_index_u32(var_0, 27u)], false, true, false))), global2[_wgslsmith_index_u32(51087u, 27u)]), !vec2<bool>(true, global2[_wgslsmith_index_u32(var_0, 27u)]), func_1()), 4294967295u, select(!vec3<bool>(true, global2[_wgslsmith_index_u32(~var_0, 27u)], !global2[_wgslsmith_index_u32(var_0, 27u)]), select(vec3<bool>(true, true, func_5(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0, 27u)]), global3[_wgslsmith_index_u32(var_0, 25u)], Struct_3(var_0, global1[_wgslsmith_index_u32(var_0, 30u)], var_0, vec2<i32>(-24400i, 3122i), var_0), 1u)), !select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_0, 27u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0, 27u)], global2[_wgslsmith_index_u32(var_0, 27u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(49821u, 27u)], global2[_wgslsmith_index_u32(var_0, 27u)])), !select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(var_0, 27u)], global2[_wgslsmith_index_u32(var_0, 27u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(var_0, 27u)], global2[_wgslsmith_index_u32(var_0, 27u)]), false)), select(!select(vec3<bool>(global2[_wgslsmith_index_u32(var_0, 27u)], global2[_wgslsmith_index_u32(var_0, 27u)], global2[_wgslsmith_index_u32(var_0, 27u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(var_0, 27u)], true), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], true, global2[_wgslsmith_index_u32(0u, 27u)])), !(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(19633u, 27u)])), var_1.x >= u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wy);
}

