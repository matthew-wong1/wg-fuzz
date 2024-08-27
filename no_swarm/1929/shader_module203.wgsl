struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, false, true, true, true);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<bool>(false, false, false), vec2<f32>(1844f, 130f), vec3<f32>(-182f, 760f, 1358f), vec4<i32>(-31514i, 2147483647i, -46651i, 1i)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-409f, -293f), vec3<f32>(2308f, 1000f, 811f), vec4<i32>(1i, 0i, -8899i, -1i)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1357f, 1312f), vec3<f32>(929f, 607f, -455f), vec4<i32>(-1i, -32583i, 0i, 1i)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-1696f, -833f), vec3<f32>(-1115f, -218f, -2431f), vec4<i32>(56727i, -56558i, -19717i, -37195i)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(1011f, 2289f), vec3<f32>(-1099f, -400f, 1000f), vec4<i32>(0i, 1i, 2147483647i, 1i)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(1189f, 1190f), vec3<f32>(-1058f, -244f, -1006f), vec4<i32>(-51339i, -76044i, 1i, 30749i)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1000f, 1000f), vec3<f32>(1000f, -862f, 1215f), vec4<i32>(-32331i, -5679i, 0i, 2147483647i)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(225f, -945f), vec3<f32>(232f, -1122f, -2260f), vec4<i32>(1i, 4444i, -1i, -32869i)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(810f, 1086f), vec3<f32>(489f, 972f, -1925f), vec4<i32>(-1i, 1i, 92i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-617f, -1175f), vec3<f32>(337f, -138f, 1000f), vec4<i32>(-1i, 25190i, 2147483647i, 0i)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-751f, -305f), vec3<f32>(263f, -267f, 1062f), vec4<i32>(35131i, 1i, -2858i, 1i)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-927f, -2037f), vec3<f32>(1000f, 1430f, -2756f), vec4<i32>(0i, 2147483647i, i32(-2147483648), -1524i)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-1006f, -1338f), vec3<f32>(-506f, 191f, 428f), vec4<i32>(59092i, -1i, -19945i, 2147483647i)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(1493f, 483f), vec3<f32>(-681f, -545f, -1000f), vec4<i32>(i32(-2147483648), 24935i, 1i, -13582i)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(571f, 704f), vec3<f32>(1118f, 688f, 616f), vec4<i32>(2147483647i, -25761i, 2147483647i, 0i)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-1422f, -607f), vec3<f32>(-537f, 1406f, 260f), vec4<i32>(-1i, -1i, -1i, 2147483647i)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(483f, 549f), vec3<f32>(1227f, -620f, 2092f), vec4<i32>(1i, i32(-2147483648), 0i, 6444i)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(1008f, -449f), vec3<f32>(565f, 811f, 524f), vec4<i32>(-33063i, -13648i, -1i, 0i)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(-1266f, -1000f), vec3<f32>(-148f, -712f, 1021f), vec4<i32>(-41148i, 57994i, -20249i, 5320i)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-1101f, 458f), vec3<f32>(271f, -209f, -893f), vec4<i32>(33629i, -25380i, -100i, 54062i)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-302f, -940f), vec3<f32>(833f, -161f, 123f), vec4<i32>(2147483647i, i32(-2147483648), 20901i, -34932i)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(451f, 1444f), vec3<f32>(801f, -1252f, -115f), vec4<i32>(61445i, 60140i, -6402i, 9977i)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-100f, -301f), vec3<f32>(-1513f, 343f, 1416f), vec4<i32>(1i, 2147483647i, -41522i, 52418i)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(1533f, 528f), vec3<f32>(-137f, -197f, 517f), vec4<i32>(-25100i, 27394i, 6562i, -31289i)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(368f, -1940f), vec3<f32>(-322f, 1654f, 492f), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-1410f, 271f), vec3<f32>(1000f, -100f, 1606f), vec4<i32>(9302i, -17645i, 2147483647i, -572i)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(1000f, 830f), vec3<f32>(-145f, 841f, 986f), vec4<i32>(i32(-2147483648), -20868i, 10752i, 81608i)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1000f, -878f), vec3<f32>(598f, 1087f, 1588f), vec4<i32>(-30957i, 42325i, 0i, 7004i)));

var<private> global2: array<i32, 27> = array<i32, 27>(-28329i, 0i, 0i, -1i, 1i, 1i, -32742i, 30849i, 8560i, -1i, -1i, 2147483647i, 2147483647i, 33009i, -15947i, 5078i, -1i, 1i, -1i, -15475i, -49363i, 6733i, 1i, 657i, i32(-2147483648), 488i, 14125i);

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<f32>(1000f, -651f), vec3<f32>(1000f, -785f, -754f), vec4<i32>(-1i, 0i, -1i, i32(-2147483648))), vec2<u32>(0u, 1u), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-461f, -1021f), vec3<f32>(-1564f, 656f, -1000f), vec4<i32>(1i, 0i, -18395i, 22678i)), vec3<u32>(4294967295u, 108278u, 15297u)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<f32>(-1327f, -134f), vec3<f32>(169f, 2099f, -250f), vec4<i32>(0i, 12888i, 60737i, -1i)), vec2<u32>(65619u, 4294967295u), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-841f, -561f), vec3<f32>(850f, 674f, -380f), vec4<i32>(-46527i, -3825i, -29807i, 1i)), vec3<u32>(1u, 53982u, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<f32>(211f, -540f), vec3<f32>(-131f, -1087f, 304f), vec4<i32>(33532i, -37088i, 20391i, -49531i)), vec2<u32>(0u, 0u), Struct_1(vec3<bool>(true, false, false), vec2<f32>(2069f, 747f), vec3<f32>(399f, 1000f, -1077f), vec4<i32>(2147483647i, -21649i, 1i, 4482i)), vec3<u32>(0u, 1u, 5196u)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<f32>(230f, 287f), vec3<f32>(1346f, -1000f, -150f), vec4<i32>(-26154i, i32(-2147483648), 18784i, -212i)), vec2<u32>(4294967295u, 58302u), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-602f, 814f), vec3<f32>(-354f, 1000f, -586f), vec4<i32>(1i, -40750i, 2149i, 0i)), vec3<u32>(23346u, 10735u, 0u)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<f32>(163f, -830f), vec3<f32>(-1429f, -392f, 199f), vec4<i32>(863i, i32(-2147483648), 21228i, 1i)), vec2<u32>(23028u, 51805u), Struct_1(vec3<bool>(false, false, true), vec2<f32>(1321f, -297f), vec3<f32>(-1018f, 286f, -374f), vec4<i32>(2147483647i, 22432i, 57341i, -4016i)), vec3<u32>(22752u, 4294967295u, 1u)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<f32>(-625f, 172f), vec3<f32>(579f, 857f, 1009f), vec4<i32>(64806i, 2147483647i, -1i, -7793i)), vec2<u32>(30327u, 2802u), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1000f, 340f), vec3<f32>(-278f, -1229f, 1056f), vec4<i32>(7865i, -1i, 15562i, 84i)), vec3<u32>(1u, 120143u, 17095u)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<f32>(766f, 269f), vec3<f32>(650f, -1189f, 1000f), vec4<i32>(-45919i, 1i, 2147483647i, 1i)), vec2<u32>(0u, 0u), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-101f, 1328f), vec3<f32>(1066f, -937f, 215f), vec4<i32>(18694i, i32(-2147483648), -11781i, -1i)), vec3<u32>(55982u, 29968u, 1u)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<f32>(-470f, 918f), vec3<f32>(-1146f, -553f, -722f), vec4<i32>(i32(-2147483648), 1i, 38129i, 0i)), vec2<u32>(3470u, 23292u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(918f, 753f), vec3<f32>(-579f, -437f, 1109f), vec4<i32>(-11610i, 1i, 56105i, 60496i)), vec3<u32>(30355u, 37383u, 55802u)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<f32>(-671f, -102f), vec3<f32>(-973f, -631f, 983f), vec4<i32>(35493i, -7409i, 18313i, 0i)), vec2<u32>(26252u, 32833u), Struct_1(vec3<bool>(false, false, true), vec2<f32>(1072f, 1725f), vec3<f32>(-1097f, 439f, -238f), vec4<i32>(-24244i, -6447i, -18376i, 2147483647i)), vec3<u32>(117940u, 4294967295u, 4294967295u)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<f32>(1000f, 512f), vec3<f32>(818f, -1073f, 298f), vec4<i32>(2147483647i, 0i, 5265i, 2147483647i)), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-540f, -1765f), vec3<f32>(838f, 588f, -118f), vec4<i32>(-1i, -27157i, -17590i, 0i)), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<f32>(-1625f, 440f), vec3<f32>(559f, 705f, -1277f), vec4<i32>(0i, 1i, 1i, -1i)), vec2<u32>(35401u, 1u), Struct_1(vec3<bool>(true, false, false), vec2<f32>(613f, 2020f), vec3<f32>(-1092f, -184f, -2492f), vec4<i32>(1i, 2147483647i, 0i, 1i)), vec3<u32>(86039u, 1u, 41570u)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = -420f;
    global3 = array<Struct_2, 11>();
    var var_1 = global0[_wgslsmith_index_u32(max(select(_wgslsmith_add_u32(~arg_0.a.x, _wgslsmith_div_u32(1u, arg_0.a.x)) >> (_wgslsmith_sub_u32(u_input.b, ~arg_0.a.x) % 32u), 60507u, select(global0[_wgslsmith_index_u32(~min(arg_0.a.x, 0u), 5u)], !(!global0[_wgslsmith_index_u32(u_input.b, 5u)]), !global0[_wgslsmith_index_u32(1063u << (arg_0.a.x % 32u), 5u)])), ~(~(~0u))), 5u)];
    var var_2 = ~vec3<u32>(~_wgslsmith_clamp_u32(arg_0.a.x, ~u_input.b, 0u), ~(1u << (_wgslsmith_div_u32(arg_0.a.x, u_input.b) % 32u)), 1127u);
    global1 = array<Struct_1, 28>();
    return ~firstLeadingBit(var_2.x);
}

fn func_2() -> u32 {
    global3 = array<Struct_2, 11>();
    global1 = array<Struct_1, 28>();
    let var_0 = -_wgslsmith_add_i32(-38191i, i32(-1i) * -_wgslsmith_mod_i32(0i, 1441i));
    global1 = array<Struct_1, 28>();
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.b)), 27u)];
    return _wgslsmith_dot_vec3_u32(vec3<u32>(4029u, 37516u, 49287u), ~vec3<u32>(u_input.b >> (func_3(Struct_3(vec2<u32>(72283u, 50014u))) % 32u), u_input.b, 4294967295u));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(u_input.b), 28u)];
    global3 = array<Struct_2, 11>();
    global3 = array<Struct_2, 11>();
    global0 = array<bool, 5>();
    let var_1 = _wgslsmith_mod_i32(2147483647i, 2499i);
    return var_0.a;
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_1, 28>();
    global2 = array<i32, 27>();
    global3 = array<Struct_2, 11>();
    global0 = array<bool, 5>();
    var var_0 = select(func_4(global0[_wgslsmith_index_u32(func_2(), 5u)], Struct_3(~abs(vec2<u32>(u_input.b, u_input.b))), vec2<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 5u)])), false)), !(!(!(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 5u)])))), false);
    return Struct_3(vec2<u32>(u_input.b, ~_wgslsmith_sub_u32(u_input.b, u_input.b)) ^ vec2<u32>(u_input.b, ~_wgslsmith_add_u32(24092u, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(var_0.a.x & u_input.b), 28u)];
    let var_2 = _wgslsmith_sub_vec2_u32(var_0.a, ~max(abs(var_0.a), var_0.a));
    var var_3 = global1[_wgslsmith_index_u32(22216u, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_3.c.yz), vec2<f32>(var_1.b.x, -520f), all(vec3<bool>(var_1.a.x, true, var_1.a.x)))))))), _wgslsmith_f_op_vec3_f32(max(var_3.c, var_1.c)));
}

