struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-41256i, 20170i);

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec3<i32>(12920i, 1i, 1i), vec3<u32>(30310u, 88381u, 99511u), vec3<i32>(-1i, 1i, 2147483647i), vec3<f32>(-1206f, -537f, 776f)), Struct_1(vec3<i32>(-17583i, 2147483647i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 63815u), vec3<i32>(-15494i, -7985i, 37512i), vec3<f32>(984f, 1000f, 120f)), vec2<f32>(-434f, 1078f), Struct_1(vec3<i32>(0i, -30870i, 2147483647i), vec3<u32>(123313u, 1u, 1u), vec3<i32>(1i, -4987i, 36301i), vec3<f32>(-890f, -1262f, -1000f)), false), Struct_2(Struct_1(vec3<i32>(-1i, 56349i, 11391i), vec3<u32>(3104u, 8234u, 47328u), vec3<i32>(32269i, 46956i, -13842i), vec3<f32>(-1000f, -149f, -973f)), Struct_1(vec3<i32>(5251i, i32(-2147483648), 1i), vec3<u32>(1u, 4150u, 70960u), vec3<i32>(0i, 0i, 9761i), vec3<f32>(-1449f, -240f, -2416f)), vec2<f32>(-1000f, 1672f), Struct_1(vec3<i32>(-1i, -1i, -8755i), vec3<u32>(1u, 31529u, 0u), vec3<i32>(17924i, -50787i, 2147483647i), vec3<f32>(-945f, 182f, 959f)), false), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 2478i, -1i), vec3<u32>(23542u, 790u, 83515u), vec3<i32>(0i, i32(-2147483648), -1i), vec3<f32>(1325f, -317f, 1759f)), Struct_1(vec3<i32>(-7431i, 0i, 2147483647i), vec3<u32>(0u, 4294967295u, 1u), vec3<i32>(2147483647i, 1i, 8833i), vec3<f32>(1081f, -121f, -1516f)), vec2<f32>(-589f, 2392f), Struct_1(vec3<i32>(1i, -15963i, 23561i), vec3<u32>(19613u, 28170u, 29828u), vec3<i32>(0i, 23715i, 0i), vec3<f32>(370f, 2953f, -2458f)), false), Struct_2(Struct_1(vec3<i32>(30348i, -15176i, 2147483647i), vec3<u32>(0u, 42405u, 27649u), vec3<i32>(-15780i, -51966i, -1i), vec3<f32>(257f, -1340f, 1209f)), Struct_1(vec3<i32>(16172i, -1i, 1i), vec3<u32>(0u, 4294967295u, 22267u), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<f32>(-224f, 458f, 1100f)), vec2<f32>(-984f, -424f), Struct_1(vec3<i32>(-18820i, i32(-2147483648), -1i), vec3<u32>(12951u, 0u, 1u), vec3<i32>(37648i, -12752i, -30280i), vec3<f32>(541f, 1000f, -2168f)), false), Struct_2(Struct_1(vec3<i32>(-4157i, 9434i, 49169i), vec3<u32>(0u, 53659u, 0u), vec3<i32>(5267i, -62558i, 1i), vec3<f32>(799f, -393f, -1205f)), Struct_1(vec3<i32>(0i, -985i, 10078i), vec3<u32>(0u, 57751u, 47504u), vec3<i32>(-28055i, 26336i, -40425i), vec3<f32>(-638f, 1026f, 1000f)), vec2<f32>(-109f, -204f), Struct_1(vec3<i32>(-1i, 0i, 1i), vec3<u32>(21183u, 0u, 1u), vec3<i32>(-79671i, 2147483647i, -11926i), vec3<f32>(-1000f, 102f, -793f)), false), Struct_2(Struct_1(vec3<i32>(1i, 1i, 42523i), vec3<u32>(4294967295u, 61062u, 4921u), vec3<i32>(-102791i, -13097i, 0i), vec3<f32>(673f, -245f, -1000f)), Struct_1(vec3<i32>(1i, -2376i, 29496i), vec3<u32>(10572u, 1u, 4294967295u), vec3<i32>(1290i, 2147483647i, i32(-2147483648)), vec3<f32>(-2236f, 914f, -569f)), vec2<f32>(-248f, 1310f), Struct_1(vec3<i32>(-1i, 37166i, 0i), vec3<u32>(1u, 36512u, 49030u), vec3<i32>(22795i, 20018i, -1i), vec3<f32>(-784f, -658f, 1173f)), true), Struct_2(Struct_1(vec3<i32>(1i, 1i, -7322i), vec3<u32>(69335u, 4294967295u, 4294967295u), vec3<i32>(2147483647i, -9066i, 11899i), vec3<f32>(-815f, 1358f, -1444f)), Struct_1(vec3<i32>(-27996i, 0i, -39466i), vec3<u32>(1u, 43048u, 24360u), vec3<i32>(22810i, 39817i, -31860i), vec3<f32>(1000f, -2261f, -294f)), vec2<f32>(-1204f, -1483f), Struct_1(vec3<i32>(11923i, i32(-2147483648), -1i), vec3<u32>(0u, 35776u, 1u), vec3<i32>(-28266i, 24239i, 1i), vec3<f32>(-1528f, -379f, 297f)), true), Struct_2(Struct_1(vec3<i32>(0i, 0i, 1i), vec3<u32>(24325u, 4294967295u, 42699u), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<f32>(-747f, 1000f, -918f)), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), vec3<u32>(192u, 35299u, 4294967295u), vec3<i32>(2147483647i, -2776i, 2147483647i), vec3<f32>(-359f, -235f, 410f)), vec2<f32>(691f, 342f), Struct_1(vec3<i32>(0i, 3625i, 2147483647i), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<i32>(-1i, 35719i, 0i), vec3<f32>(-339f, -588f, -1000f)), false), Struct_2(Struct_1(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<u32>(34472u, 0u, 18152u), vec3<i32>(-1i, -23804i, -27822i), vec3<f32>(-386f, 797f, 482f)), Struct_1(vec3<i32>(7487i, i32(-2147483648), 2029i), vec3<u32>(42092u, 16630u, 4294967295u), vec3<i32>(1i, -66751i, 80984i), vec3<f32>(120f, -1483f, -386f)), vec2<f32>(-1000f, -104f), Struct_1(vec3<i32>(20385i, 1i, -78312i), vec3<u32>(18617u, 1u, 4294967295u), vec3<i32>(22083i, -7654i, -13706i), vec3<f32>(-421f, -444f, -499f)), true), Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, 20129i), vec3<u32>(0u, 27160u, 86505u), vec3<i32>(-1235i, 22336i, -55293i), vec3<f32>(-1069f, -409f, -332f)), Struct_1(vec3<i32>(-1i, 14932i, 1i), vec3<u32>(8116u, 22467u, 4294967295u), vec3<i32>(28763i, 29524i, 21146i), vec3<f32>(961f, 1000f, -332f)), vec2<f32>(-150f, 876f), Struct_1(vec3<i32>(21342i, -1i, 20412i), vec3<u32>(48867u, 63651u, 4294967295u), vec3<i32>(-1i, -1i, 2147483647i), vec3<f32>(-744f, -978f, -1567f)), false), Struct_2(Struct_1(vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<u32>(1u, 68554u, 0u), vec3<i32>(-18019i, -37942i, 1i), vec3<f32>(-174f, -1000f, 1938f)), Struct_1(vec3<i32>(i32(-2147483648), -26910i, -1i), vec3<u32>(45515u, 25715u, 1u), vec3<i32>(20702i, -1i, 2147483647i), vec3<f32>(2065f, -639f, -1000f)), vec2<f32>(-239f, 470f), Struct_1(vec3<i32>(7375i, -35333i, 0i), vec3<u32>(0u, 2140u, 0u), vec3<i32>(1i, 0i, 1i), vec3<f32>(-1000f, 1490f, -751f)), false), Struct_2(Struct_1(vec3<i32>(-668i, -29934i, i32(-2147483648)), vec3<u32>(80161u, 10u, 4294967295u), vec3<i32>(-1i, 0i, -30514i), vec3<f32>(529f, 1000f, 701f)), Struct_1(vec3<i32>(-27647i, 21898i, 36823i), vec3<u32>(5665u, 0u, 82911u), vec3<i32>(0i, 109340i, 32410i), vec3<f32>(1544f, 2584f, 1127f)), vec2<f32>(-593f, 2085f), Struct_1(vec3<i32>(1i, -9888i, 2147483647i), vec3<u32>(29753u, 8190u, 1377u), vec3<i32>(0i, 3050i, 2147483647i), vec3<f32>(1411f, 1032f, -1426f)), false), Struct_2(Struct_1(vec3<i32>(0i, 7206i, 2526i), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<i32>(39142i, 41573i, 15764i), vec3<f32>(240f, -1231f, 732f)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -32448i), vec3<u32>(4294967295u, 26607u, 0u), vec3<i32>(2147483647i, 20479i, i32(-2147483648)), vec3<f32>(175f, 685f, -2685f)), vec2<f32>(1000f, 455f), Struct_1(vec3<i32>(16852i, 13135i, 39026i), vec3<u32>(37416u, 0u, 17240u), vec3<i32>(-1i, 13900i, 21845i), vec3<f32>(639f, -1519f, 1124f)), false), Struct_2(Struct_1(vec3<i32>(16193i, 8044i, 0i), vec3<u32>(1u, 0u, 83499u), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<f32>(1548f, -163f, -223f)), Struct_1(vec3<i32>(-41694i, i32(-2147483648), -20323i), vec3<u32>(9695u, 3233u, 1u), vec3<i32>(22710i, 0i, -34656i), vec3<f32>(-1393f, 1000f, -751f)), vec2<f32>(1172f, 2198f), Struct_1(vec3<i32>(44361i, 59448i, 2982i), vec3<u32>(0u, 0u, 68797u), vec3<i32>(2147483647i, 42210i, -14662i), vec3<f32>(-1988f, 1069f, 688f)), false), Struct_2(Struct_1(vec3<i32>(1i, 7926i, 1i), vec3<u32>(0u, 115579u, 73247u), vec3<i32>(51550i, i32(-2147483648), 1i), vec3<f32>(999f, -1485f, -1076f)), Struct_1(vec3<i32>(1i, 1i, 1i), vec3<u32>(75497u, 0u, 4294967295u), vec3<i32>(15698i, 32472i, 0i), vec3<f32>(-448f, 992f, -850f)), vec2<f32>(-489f, -1114f), Struct_1(vec3<i32>(21501i, i32(-2147483648), -1i), vec3<u32>(4294967295u, 65366u, 16838u), vec3<i32>(2147483647i, 2147483647i, 14356i), vec3<f32>(-325f, 1402f, 1427f)), true), Struct_2(Struct_1(vec3<i32>(9387i, i32(-2147483648), 5760i), vec3<u32>(0u, 4294967295u, 0u), vec3<i32>(-25206i, -9362i, -1i), vec3<f32>(407f, 1626f, -1635f)), Struct_1(vec3<i32>(1i, 7591i, 31098i), vec3<u32>(0u, 1u, 1u), vec3<i32>(-23627i, 0i, 0i), vec3<f32>(-296f, -1000f, -895f)), vec2<f32>(1832f, -1154f), Struct_1(vec3<i32>(-4434i, 17330i, -1i), vec3<u32>(4294967295u, 7854u, 46422u), vec3<i32>(-20604i, 1i, 1i), vec3<f32>(-392f, 167f, -641f)), false), Struct_2(Struct_1(vec3<i32>(18602i, 12460i, 34372i), vec3<u32>(1u, 66002u, 62077u), vec3<i32>(i32(-2147483648), -34217i, i32(-2147483648)), vec3<f32>(383f, -1315f, -1224f)), Struct_1(vec3<i32>(-16252i, 2147483647i, -1i), vec3<u32>(4294967295u, 18179u, 77388u), vec3<i32>(-1i, -68976i, i32(-2147483648)), vec3<f32>(745f, 449f, -816f)), vec2<f32>(-1633f, 278f), Struct_1(vec3<i32>(-1i, -1i, -1i), vec3<u32>(4294967295u, 1u, 95802u), vec3<i32>(0i, 2147483647i, 1i), vec3<f32>(251f, -898f, 125f)), false), Struct_2(Struct_1(vec3<i32>(1i, -36500i, -20028i), vec3<u32>(738u, 4404u, 1u), vec3<i32>(-1i, 1i, 2147483647i), vec3<f32>(609f, 677f, 1802f)), Struct_1(vec3<i32>(-1i, -68670i, 38835i), vec3<u32>(5909u, 42863u, 44613u), vec3<i32>(10176i, 0i, 1i), vec3<f32>(-131f, -1523f, 1768f)), vec2<f32>(223f, -2034f), Struct_1(vec3<i32>(12095i, 2147483647i, 54354i), vec3<u32>(0u, 39243u, 0u), vec3<i32>(11453i, -1i, -1i), vec3<f32>(-590f, -2112f, 1000f)), false), Struct_2(Struct_1(vec3<i32>(23682i, 1i, 0i), vec3<u32>(25675u, 54353u, 0u), vec3<i32>(27112i, 0i, 2147483647i), vec3<f32>(-1138f, 243f, -1621f)), Struct_1(vec3<i32>(i32(-2147483648), 26112i, 2936i), vec3<u32>(0u, 15223u, 21767u), vec3<i32>(-10449i, i32(-2147483648), i32(-2147483648)), vec3<f32>(-447f, 957f, 573f)), vec2<f32>(-1669f, -1145f), Struct_1(vec3<i32>(-18148i, -9664i, -5100i), vec3<u32>(0u, 4294967295u, 1u), vec3<i32>(-26328i, -1i, 2147483647i), vec3<f32>(1798f, 1533f, -1492f)), false), Struct_2(Struct_1(vec3<i32>(-4627i, -2915i, -2715i), vec3<u32>(4294967295u, 20629u, 10214u), vec3<i32>(-9814i, -1i, -1i), vec3<f32>(345f, -842f, -1512f)), Struct_1(vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<u32>(53390u, 29268u, 4294967295u), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<f32>(-1000f, -1000f, -1885f)), vec2<f32>(-148f, -2556f), Struct_1(vec3<i32>(0i, -38386i, i32(-2147483648)), vec3<u32>(17845u, 1u, 39794u), vec3<i32>(-51022i, i32(-2147483648), 18560i), vec3<f32>(-968f, 1289f, 181f)), false));

var<private> global2: Struct_3 = Struct_3(77121i, vec2<u32>(9824u, 66176u));

var<private> global3: array<i32, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec2<i32> {
    global1 = array<Struct_2, 20>();
    var var_0 = Struct_2(Struct_1(select(-vec3<i32>(global0.x, -29240i, -48088i) >> (select(vec3<u32>(1u, u_input.a.x, 1u), vec3<u32>(0u, u_input.a.x, 1u), arg_1) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(arg_0.a, global2.a, 0i)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), reverseBits(u_input.a), ~vec3<i32>(u_input.d, global2.a, global3[_wgslsmith_index_u32(30919u, 11u)]) & _wgslsmith_mod_vec3_i32(u_input.c.yzw, vec3<i32>(arg_0.a, global3[_wgslsmith_index_u32(global2.b.x, 11u)], global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1216f, 1390f, -680f)))))), Struct_1(u_input.c.xxz, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(u_input.a), vec3<u32>(1u, u_input.a.x, u_input.a.x)), u_input.a), vec3<i32>(-_wgslsmith_mult_i32(1829i, global0.x), global3[_wgslsmith_index_u32(global2.b.x, 11u)] << (~arg_0.b.x % 32u), -_wgslsmith_add_i32(8847i, arg_0.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, -155f, -1244f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-153f, -1000f, 190f), vec3<f32>(1429f, 1684f, -1000f), vec3<bool>(true, arg_1, arg_1))))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-335f, -1142f))))), Struct_1(u_input.c.xzx, ~u_input.a, u_input.c.wwx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1022f, 179f, 758f)))) + vec3<f32>(_wgslsmith_f_op_f32(-1456f + -638f), _wgslsmith_f_op_f32(457f - 861f), 1051f))), true);
    var var_1 = abs(vec3<i32>(firstLeadingBit(select(-85806i, u_input.c.x, true)), -2147483647i, ~_wgslsmith_mod_i32(11226i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c))));
    var_0 = global1[_wgslsmith_index_u32(var_0.b.b.x, 20u)];
    let var_2 = !vec2<bool>(all(!(!vec2<bool>(arg_1, arg_1))), !(!var_0.e));
    return -abs(~(vec2<i32>(var_1.x, 1i) << (countOneBits(u_input.a.xz) % vec2<u32>(32u))));
}

fn func_2() -> Struct_1 {
    var var_0 = 43164u;
    let var_1 = func_3(Struct_3(u_input.c.x, u_input.a.yx), all(!vec3<bool>(true, any(vec4<bool>(false, true, true, false)), any(vec3<bool>(false, false, false)))));
    global3 = array<i32, 11>();
    global1 = array<Struct_2, 20>();
    let var_2 = ~(~(u_input.a >> (firstTrailingBit(~vec3<u32>(4294967295u, 25622u, u_input.a.x)) % vec3<u32>(32u))));
    return Struct_1(u_input.c.yzy, u_input.a, _wgslsmith_add_vec3_i32(select(firstLeadingBit(vec3<i32>(global0.x, u_input.b, 25047i)) & vec3<i32>(global3[_wgslsmith_index_u32(var_2.x, 11u)], -1i, 1i), vec3<i32>(-15726i, 1i, 2147483647i), vec3<bool>(true, true, true)), ~_wgslsmith_add_vec3_i32(-u_input.c.xzx, u_input.c.yzw)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(756f, 1823f, 343f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(233f - -348f), _wgslsmith_f_op_f32(148f + -2036f), 520f))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_2();
    global3 = array<i32, 11>();
    var var_1 = Struct_3(1i, max(global2.b, var_0.b.xz));
    global2 = Struct_3(-2147483647i, ~(~firstLeadingBit(var_0.b.zx)));
    global0 = var_0.c.xz;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((global2.b.x >> (~(~global2.b.x) % 32u)) >> (global2.b.x % 32u));
    var var_1 = 132809u;
    global0 = ~(-vec2<i32>(-(u_input.d >> (4294967295u % 32u)), -5954i));
    let var_2 = func_1(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false))));
    global1 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x);
}

