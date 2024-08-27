struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 21>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_1(vec2<u32>(1u, 1u), vec3<u32>(20278u, 1u, 1u), 487f, 4294967295u), Struct_3(2469u, vec4<u32>(4294967295u, 1u, 0u, 4294967295u), -2924f, Struct_2(420f, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(0u, 31467u, 4294967295u), 754f, 55793u))), false, true, 398f), Struct_4(Struct_1(vec2<u32>(0u, 19419u), vec3<u32>(1u, 34412u, 1u), 1148f, 61743u), Struct_3(59230u, vec4<u32>(0u, 62121u, 2354u, 0u), -196f, Struct_2(877f, Struct_1(vec2<u32>(0u, 57286u), vec3<u32>(1u, 0u, 1u), -1000f, 19520u))), true, true, -378f), Struct_4(Struct_1(vec2<u32>(1u, 23415u), vec3<u32>(1u, 0u, 65388u), 575f, 16501u), Struct_3(4294967295u, vec4<u32>(4294967295u, 20779u, 65316u, 56094u), -426f, Struct_2(657f, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(22547u, 0u, 1u), -586f, 10546u))), true, true, -1470f), Struct_4(Struct_1(vec2<u32>(4294967295u, 24478u), vec3<u32>(55433u, 40228u, 43568u), -188f, 9987u), Struct_3(26352u, vec4<u32>(62949u, 47558u, 0u, 85730u), -514f, Struct_2(-417f, Struct_1(vec2<u32>(0u, 4294967295u), vec3<u32>(16182u, 4294967295u, 1u), 1084f, 29052u))), false, true, 1128f), Struct_4(Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(0u, 107437u, 0u), 730f, 0u), Struct_3(88965u, vec4<u32>(7330u, 119191u, 3275u, 4294967295u), 1150f, Struct_2(639f, Struct_1(vec2<u32>(4294967295u, 1727u), vec3<u32>(25825u, 15744u, 4294967295u), 269f, 23400u))), true, true, 594f), Struct_4(Struct_1(vec2<u32>(14801u, 0u), vec3<u32>(117719u, 0u, 50749u), 312f, 4294967295u), Struct_3(19543u, vec4<u32>(1u, 23414u, 1261u, 4294967295u), 373f, Struct_2(1000f, Struct_1(vec2<u32>(53629u, 1u), vec3<u32>(4294967295u, 11505u, 4294967295u), -1225f, 0u))), true, false, 155f), Struct_4(Struct_1(vec2<u32>(27521u, 0u), vec3<u32>(81915u, 77831u, 31212u), 605f, 1u), Struct_3(0u, vec4<u32>(6260u, 0u, 1u, 12338u), -943f, Struct_2(1131f, Struct_1(vec2<u32>(1u, 0u), vec3<u32>(0u, 0u, 1u), -482f, 102611u))), false, true, 1150f), Struct_4(Struct_1(vec2<u32>(9984u, 52331u), vec3<u32>(7675u, 1u, 0u), 1122f, 1u), Struct_3(25801u, vec4<u32>(4294967295u, 4294967295u, 23337u, 83549u), 201f, Struct_2(109f, Struct_1(vec2<u32>(20909u, 13723u), vec3<u32>(22587u, 4294967295u, 1u), -1232f, 44976u))), false, false, 1189f), Struct_4(Struct_1(vec2<u32>(4294967295u, 37736u), vec3<u32>(0u, 26028u, 58792u), 1103f, 29234u), Struct_3(1u, vec4<u32>(95113u, 83232u, 21039u, 1u), -404f, Struct_2(463f, Struct_1(vec2<u32>(21757u, 1u), vec3<u32>(34784u, 31971u, 1u), -517f, 30136u))), true, false, 1000f), Struct_4(Struct_1(vec2<u32>(38810u, 148920u), vec3<u32>(16201u, 1u, 4294967295u), 768f, 17037u), Struct_3(4294967295u, vec4<u32>(38179u, 40925u, 1u, 1u), -1389f, Struct_2(466f, Struct_1(vec2<u32>(37249u, 4294967295u), vec3<u32>(36898u, 33611u, 34374u), -220f, 1u))), true, true, -751f), Struct_4(Struct_1(vec2<u32>(7469u, 49153u), vec3<u32>(4294967295u, 0u, 64839u), -599f, 1u), Struct_3(4294967295u, vec4<u32>(1u, 0u, 1u, 63390u), -823f, Struct_2(580f, Struct_1(vec2<u32>(29998u, 1u), vec3<u32>(4294967295u, 39269u, 4294967295u), 909f, 1u))), true, false, 2320f), Struct_4(Struct_1(vec2<u32>(25312u, 0u), vec3<u32>(68680u, 1u, 1u), 1108f, 11423u), Struct_3(4294967295u, vec4<u32>(0u, 4294967295u, 4294967295u, 146551u), -1581f, Struct_2(1000f, Struct_1(vec2<u32>(47645u, 79970u), vec3<u32>(2653u, 4294967295u, 61301u), -324f, 7307u))), false, true, 1044f), Struct_4(Struct_1(vec2<u32>(4294967295u, 0u), vec3<u32>(14952u, 49022u, 98548u), -192f, 0u), Struct_3(25710u, vec4<u32>(1u, 20971u, 4294967295u, 4294967295u), 467f, Struct_2(148f, Struct_1(vec2<u32>(0u, 1u), vec3<u32>(4294967295u, 0u, 29131u), 312f, 27519u))), true, true, -1479f), Struct_4(Struct_1(vec2<u32>(82409u, 10268u), vec3<u32>(61716u, 0u, 0u), -261f, 0u), Struct_3(77216u, vec4<u32>(62955u, 25670u, 1u, 43770u), 1000f, Struct_2(-647f, Struct_1(vec2<u32>(62130u, 54333u), vec3<u32>(39836u, 17158u, 0u), -318f, 1u))), false, false, -1089f), Struct_4(Struct_1(vec2<u32>(4294967295u, 2196u), vec3<u32>(7445u, 1u, 4294967295u), -599f, 33069u), Struct_3(19820u, vec4<u32>(46044u, 0u, 1u, 1u), -1580f, Struct_2(228f, Struct_1(vec2<u32>(44376u, 69954u), vec3<u32>(0u, 0u, 37802u), 546f, 0u))), true, true, -213f), Struct_4(Struct_1(vec2<u32>(7664u, 1u), vec3<u32>(11094u, 1u, 0u), 624f, 51071u), Struct_3(1u, vec4<u32>(25446u, 1u, 33992u, 4294967295u), -531f, Struct_2(-376f, Struct_1(vec2<u32>(0u, 43808u), vec3<u32>(70198u, 0u, 8528u), 249f, 31980u))), false, true, 321f), Struct_4(Struct_1(vec2<u32>(12328u, 12516u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), -481f, 1u), Struct_3(89382u, vec4<u32>(4294967295u, 4294967295u, 2058u, 0u), 1619f, Struct_2(-1046f, Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(60781u, 0u, 0u), -270f, 0u))), false, true, 508f), Struct_4(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(0u, 9648u, 0u), 217f, 12903u), Struct_3(17953u, vec4<u32>(21851u, 0u, 5234u, 0u), 140f, Struct_2(872f, Struct_1(vec2<u32>(1u, 1u), vec3<u32>(101766u, 5275u, 0u), -1114f, 1u))), false, true, 2889f), Struct_4(Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(1u, 53234u, 1u), -810f, 4294967295u), Struct_3(29998u, vec4<u32>(1u, 1u, 0u, 5817u), -723f, Struct_2(225f, Struct_1(vec2<u32>(1u, 37447u), vec3<u32>(15677u, 0u, 10403u), -426f, 20334u))), false, false, -109f), Struct_4(Struct_1(vec2<u32>(4294967295u, 73323u), vec3<u32>(10879u, 7568u, 12729u), -1000f, 16654u), Struct_3(1u, vec4<u32>(7882u, 0u, 93178u, 1u), 150f, Struct_2(1544f, Struct_1(vec2<u32>(52704u, 52904u), vec3<u32>(46835u, 0u, 13316u), -493f, 1u))), false, false, -607f), Struct_4(Struct_1(vec2<u32>(4294967295u, 22446u), vec3<u32>(22454u, 1u, 1u), 1398f, 0u), Struct_3(1u, vec4<u32>(4294967295u, 28682u, 1u, 1u), 1528f, Struct_2(-135f, Struct_1(vec2<u32>(4294967295u, 14853u), vec3<u32>(0u, 8735u, 865u), -508f, 52354u))), false, true, 1000f), Struct_4(Struct_1(vec2<u32>(4294967295u, 14680u), vec3<u32>(0u, 17446u, 14109u), -1432f, 0u), Struct_3(4294967295u, vec4<u32>(0u, 4294967295u, 1u, 62997u), -206f, Struct_2(786f, Struct_1(vec2<u32>(0u, 43047u), vec3<u32>(2804u, 3403u, 43447u), 150f, 99432u))), true, true, -555f), Struct_4(Struct_1(vec2<u32>(1u, 16556u), vec3<u32>(22896u, 70521u, 1u), 2105f, 5767u), Struct_3(1u, vec4<u32>(0u, 7049u, 1u, 0u), 923f, Struct_2(-1000f, Struct_1(vec2<u32>(28422u, 0u), vec3<u32>(30146u, 0u, 1u), -483f, 1u))), true, true, -1290f), Struct_4(Struct_1(vec2<u32>(4294967295u, 20293u), vec3<u32>(4294967295u, 52043u, 17681u), 227f, 20782u), Struct_3(1u, vec4<u32>(1u, 15792u, 40222u, 4294967295u), 320f, Struct_2(1298f, Struct_1(vec2<u32>(37465u, 1u), vec3<u32>(2559u, 4294967295u, 1u), -275f, 0u))), true, true, 337f), Struct_4(Struct_1(vec2<u32>(1u, 1u), vec3<u32>(1u, 4294967295u, 1u), -232f, 0u), Struct_3(1u, vec4<u32>(1u, 4294967295u, 1u, 119705u), 706f, Struct_2(-210f, Struct_1(vec2<u32>(15077u, 1u), vec3<u32>(1u, 46664u, 4803u), -448f, 0u))), true, true, -279f), Struct_4(Struct_1(vec2<u32>(0u, 39902u), vec3<u32>(1u, 122679u, 1u), 2678f, 63688u), Struct_3(80916u, vec4<u32>(4294967295u, 1956u, 4294967295u, 4294967295u), -504f, Struct_2(865f, Struct_1(vec2<u32>(0u, 20441u), vec3<u32>(20699u, 0u, 109975u), 240f, 12450u))), true, false, 1046f), Struct_4(Struct_1(vec2<u32>(0u, 110037u), vec3<u32>(0u, 14971u, 1u), -1058f, 4294967295u), Struct_3(0u, vec4<u32>(0u, 0u, 1u, 134054u), -471f, Struct_2(751f, Struct_1(vec2<u32>(0u, 12588u), vec3<u32>(4294967295u, 1u, 4294967295u), 329f, 1u))), false, false, -1628f));

var<private> global4: array<Struct_4, 7>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global1 = array<vec3<i32>, 21>();
    var var_0 = vec3<bool>(all(arg_0.www), arg_0.x, arg_0.x);
    var var_1 = global4[_wgslsmith_index_u32(47801u, 7u)];
    let var_2 = 1u;
    return global2.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = abs(~firstTrailingBit(~(vec4<u32>(1u, global2.d, 0u, global2.d) << (vec4<u32>(global2.a.x, 39376u, global2.d, 49169u) % vec4<u32>(32u)))));
    var var_1 = ~vec3<u32>(reverseBits(~(4294967295u & global2.d)), 12388u, _wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u) | vec2<u32>(var_0.x, 70632u), ~var_0.yz)));
    var var_2 = Struct_1(var_0.ww, (vec3<u32>(~26742u, ~4294967295u, 41009u) ^ vec3<u32>(21321u, var_0.x, func_3(vec4<bool>(false, true, false, false)))) | vec3<u32>(4788u, _wgslsmith_mod_u32(var_1.x, ~31150u), _wgslsmith_div_u32(0u & var_0.x, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2424f)) * _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global2.c, 777f)), _wgslsmith_f_op_f32(-global2.c))))), global2.b.x);
    var var_3 = Struct_3(58762u, select(~abs(vec4<u32>(var_0.x, global2.b.x, 78662u, var_0.x)) >> ((vec4<u32>(9004u, global2.b.x, var_1.x, 12765u) ^ vec4<u32>(0u, 3391u, 1u, 5114u)) % vec4<u32>(32u)), abs(vec4<u32>(0u, 63687u, 0u, var_2.b.x)) & _wgslsmith_div_vec4_u32(~vec4<u32>(var_2.b.x, 1u, 36626u, var_1.x), vec4<u32>(1u, 4294967295u, 52384u, var_2.d)), -559f >= global2.c), -1523f, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(1074f * global2.c)) + var_2.c), Struct_1(var_0.zw, ~(vec3<u32>(12678u, var_1.x, var_2.a.x) ^ vec3<u32>(1u, 0u, 0u)), -792f, var_1.x)));
    let var_4 = countOneBits(~0i) | u_input.c.x;
    return var_3.d.b;
}

fn func_1() -> bool {
    global4 = array<Struct_4, 7>();
    let var_0 = Struct_4(func_2(), Struct_3(~(6503u ^ global2.d) << (global2.b.x % 32u), ~vec4<u32>(global2.a.x, global2.d, global2.b.x, global2.b.x) | reverseBits(~vec4<u32>(47315u, 1u, global2.d, 161u)), _wgslsmith_f_op_f32(global2.c + -103f), Struct_2(355f, func_2())), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global2.b, vec3<u32>(global2.b.x, 17682u, global2.a.x)) & global2.b, vec3<u32>(global2.b.x, global2.a.x, ~64184u)) >= global2.a.x, true, _wgslsmith_f_op_f32(-global2.c));
    let var_1 = Struct_4(func_2(), var_0.b, (24758u >> (~var_0.b.a % 32u)) >= _wgslsmith_clamp_u32(~var_0.b.b.x, 1u, _wgslsmith_div_u32(func_3(vec4<bool>(true, true, var_0.c, var_0.d)), countOneBits(global2.a.x))), var_0.c & (274f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))), _wgslsmith_f_op_f32(-var_0.e));
    global0 = _wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.c))));
    var var_2 = Struct_3(abs(global2.a.x), _wgslsmith_mult_vec4_u32(~var_0.b.b, var_1.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1518f))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.c, var_1.e)), func_2().c), func_2()));
    return 2147483647i < select(1i, firstLeadingBit(min(2147483647i, _wgslsmith_mod_i32(u_input.a.x, u_input.b.x))), any(select(!vec2<bool>(var_0.d, false), select(vec2<bool>(false, true), vec2<bool>(var_0.d, var_0.c), vec2<bool>(var_0.c, var_1.c)), u_input.b.x != u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = all(!vec4<bool>(select(var_0 || true, !var_0, func_1()), _wgslsmith_div_i32(u_input.b.x, u_input.a.x) > _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2147483647i), var_0, !func_1()));
    let var_2 = select(vec2<bool>(all(!select(vec3<bool>(var_0, false, false), vec3<bool>(var_0, true, false), true)), var_0), !select(vec2<bool>(true, true), !select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), vec2<bool>(false, true)), true), !var_0);
    var_1 = all(select(select(!(!vec2<bool>(var_0, false)), var_2, var_2), vec2<bool>(-2226f > _wgslsmith_f_op_f32(-1377f - global2.c), true != var_0), !(global2.c != global2.c)));
    var var_3 = Struct_4(Struct_1(~(~(~global2.b.yx)), ~_wgslsmith_clamp_vec3_u32(global2.b, global2.b, vec3<u32>(48097u, 0u, 1u)), 572f, global2.a.x), Struct_3(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global2.b.xz, vec2<u32>(24776u, global2.a.x)), global2.a.x), 26642u), ~(~(vec4<u32>(0u, 1u, 4294967295u, global2.a.x) | vec4<u32>(global2.b.x, global2.d, 36419u, global2.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1200f, 1309f)) + global2.c), _wgslsmith_f_op_f32(-global2.c)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, -179f) + -666f), Struct_1(reverseBits(vec2<u32>(25598u, 1u)), ~vec3<u32>(1u, 1u, 47191u), global2.c, ~global2.b.x))), !any(vec3<bool>(false, var_0 && false, func_1())), all(select(select(select(vec4<bool>(var_0, true, false, false), vec4<bool>(var_2.x, var_2.x, var_0, true), vec4<bool>(var_0, true, var_2.x, false)), vec4<bool>(true, var_2.x, var_2.x, var_0), vec4<bool>(true, var_2.x, true, var_0)), select(vec4<bool>(var_0, var_2.x, false, false), select(vec4<bool>(var_0, false, var_2.x, var_2.x), vec4<bool>(var_2.x, false, true, var_2.x), var_2.x), any(vec3<bool>(var_0, var_2.x, var_0))), vec4<bool>(var_2.x && true, !var_0, true, all(vec4<bool>(var_2.x, false, var_2.x, false))))), -1118f);
    global3 = array<Struct_4, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(i32(-1i) * -10494i), var_3.b.b.xz, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1276f, _wgslsmith_f_op_f32(f32(-1f) * -134f))));
}

