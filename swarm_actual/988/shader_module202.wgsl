// {"0:0":[131,232,81,181,81,48,148,26,225,145,30,192,36,157,4,2,239,232,173,191,177,238,250,77,210,172,158,234,243,24,252,100,61,229,218,54,200,201,3,161,98,145,175,146,5,169,178,108]}
// Seed: 3043095902209114115

struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(6384u, 70966u, 15466u, 0u), vec4<u32>(1u, 4294967295u, 87432u, 0u), vec4<u32>(40416u, 14179u, 22834u, 0u), vec4<u32>(1u, 30726u, 15737u, 333u), vec4<u32>(4294967295u, 1u, 4294967295u, 64043u), vec4<u32>(6935u, 33338u, 0u, 26560u), vec4<u32>(1u, 0u, 37388u, 10723u), vec4<u32>(8610u, 34207u, 16617u, 144536u), vec4<u32>(4058u, 37827u, 19984u, 13893u), vec4<u32>(651u, 19511u, 0u, 14695u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(19068u, 46909u, 0u, 4294967295u), vec4<u32>(17040u, 53416u, 4294967295u, 56396u), vec4<u32>(5946u, 7419u, 0u, 0u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 30374u, 4294967295u), vec4<u32>(1u, 1u, 21906u, 4294967295u), vec4<u32>(42540u, 4294967295u, 73639u, 40889u), vec4<u32>(1u, 54843u, 4294967295u, 78239u), vec4<u32>(1u, 61820u, 0u, 86063u), vec4<u32>(6698u, 1u, 4294967295u, 16311u), vec4<u32>(1u, 4167u, 0u, 0u), vec4<u32>(1u, 0u, 1u, 6249u), vec4<u32>(0u, 25167u, 0u, 4294967295u), vec4<u32>(40569u, 709u, 14991u, 21698u), vec4<u32>(2342u, 25303u, 119685u, 1u), vec4<u32>(1u, 22159u, 4294967295u, 1u), vec4<u32>(21893u, 4294967295u, 0u, 4294967295u));

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global2: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-2157f, -1635f, 800f), vec3<f32>(-453f, -382f, 877f), vec3<f32>(-331f, -1277f, -1307f), vec3<f32>(-149f, 341f, -668f), vec3<f32>(1000f, 1000f, 745f), vec3<f32>(-2638f, -1000f, 1000f), vec3<f32>(-1000f, -1394f, -1294f), vec3<f32>(-1000f, -1310f, -147f), vec3<f32>(-1086f, -602f, 1190f), vec3<f32>(-508f, 600f, 1061f), vec3<f32>(383f, 661f, -515f), vec3<f32>(-812f, 771f, -1151f), vec3<f32>(-843f, -623f, -659f), vec3<f32>(-673f, 686f, -187f));

var<private> global3: vec2<i32> = vec2<i32>(-51609i, -68069i);

var<private> global4: vec2<i32> = vec2<i32>(-7512i, i32(-2147483648));

fn func_3() -> vec4<u32> {
    let var_0 = !false;
    var var_1 = Struct_1(select(true, !any(global1[~1u]), !var_0), ~(~(~(vec4<u32>(4294967295u, 3820u, 14668u, u_input.a) << vec4<u32>(4294967295u, u_input.d, 38044u, 7370u)))), -946f * (((-714f + 1692f) - sign(1209f)) + ((1257f - -256f) - -781f)), max(min(ceil(vec4<f32>(1000f, 251f, -1433f, 1000f)), -(vec4<f32>(-1724f, 1000f, -1537f, -344f) + vec4<f32>(-1229f, -1195f, -110f, -151f))), -((vec4<f32>(2641f, 865f, -1444f, 1656f) - vec4<f32>(-1173f, -267f, -854f, 541f)) / -vec4<f32>(-1000f, -644f, -1531f, -1453f))));
    var var_2 = Struct_1(true, vec4<u32>(19900u | 68642u, u_input.a, dot(~var_1.b.xx, (var_1.b.zy / var_1.b.xy) << (var_1.b.wx | var_1.b.xx)), ~reverseBits(u_input.d)), 1000f, vec4<f32>(max(480f, ceil(-506f) / -186f), -1476f, (161f * abs(161f)) * -var_1.d.x, -397f));
    let var_3 = global3.x;
    var var_4 = Struct_1(~(~1i) < i32(-2147483648), abs(~global0[~1u]), 686f, var_1.d);
    return firstTrailingBit(vec4<u32>(~(0u << 60037u), dot(abs(var_1.b.zw), ~vec2<u32>(var_2.b.x, var_1.b.x)), firstLeadingBit(var_2.b.x + u_input.a), select(reverseBits(23053u), ~1u, true)) % global0[~(~var_1.b.x & var_1.b.x)]);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    global3 = firstTrailingBit(vec2<i32>(-global3.x, ~(-arg_0.x) & -23299i));
    var var_0 = arg_2;
    var var_1 = Struct_1(true, arg_2.b, -(-806f), round(round(arg_2.d) / exp2(vec4<f32>(arg_2.d.x, 280f, arg_2.d.x, -688f))) + vec4<f32>(abs(-550f), sign(-1874f), var_0.d.x + -(-1459f), (436f / 557f) / (206f + -1000f)));
    let var_2 = global3.x & 31756i;
    var var_3 = Struct_1(true, vec4<u32>(u_input.d, abs(abs(arg_1)), ~(~var_1.b.x), var_1.b.x) << global0[firstLeadingBit(~var_0.b.x) * 1u], 522f - arg_2.d.x, select(vec4<f32>(var_0.c * abs(-568f), abs(-625f / 1531f), -136f, -698f), -select(vec4<f32>(711f, var_1.d.x, 488f, -459f), var_0.d, !vec4<bool>(true, var_1.a, true, var_1.a)), select(vec4<bool>(arg_2.a, all(vec4<bool>(true, arg_2.a, true, arg_2.a)), var_0.a, false), !select(vec4<bool>(false, var_1.a, arg_2.a, var_0.a), vec4<bool>(false, true, arg_2.a, var_1.a), true), false)));
    return -(-1000f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = arg_0.d.x;
    let var_1 = Struct_1(true, firstLeadingBit(~vec4<u32>(0u, max(0u, 4294967295u), u_input.a, ~u_input.d)), arg_0.c, -select(abs(arg_1.d + vec4<f32>(-815f, -162f, -511f, arg_2)), vec4<f32>(578f - arg_0.d.x, arg_0.c, -1324f, ceil(138f)), !(!vec4<bool>(false, arg_0.a, true, true))));
    let var_2 = -func_4(u_input.c.xyz, ~var_1.b.x, Struct_1(any(vec4<bool>(true, true, true, true)), reverseBits(func_3()), 609f, -(-vec4<f32>(arg_1.d.x, arg_0.c, var_0, arg_2))));
    let var_3 = global2[~(4294967295u / (~countOneBits(u_input.d) / ~52906u))];
    var var_4 = vec2<u32>(reverseBits((~0u >> (1u >> 1u)) | countOneBits(4294967295u / 54512u)), countOneBits(~arg_0.b.x));
    return arg_1.a;
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = (u_input.c.xzy / ~vec3<i32>(clamp(global4.x, -5633i, global3.x), u_input.b, dot(vec4<i32>(-7561i, global3.x, global4.x, -1i), u_input.c))) & abs(vec3<i32>(~2147483647i + (-43039i - -1673i), countOneBits(i32(-2147483648)) % 1i, dot(min(vec3<i32>(global4.x, global4.x, global3.x), u_input.c.xxx), u_input.c.zxx)));
    let var_1 = vec2<f32>(sign((-1000f * 767f) / abs(-431f)) - -(-156f), -(-(-305f - 252f) - -1000f));
    let var_2 = Struct_1(select(-1825f * (1784f - -1509f), -1338f, true) >= 1000f, ~vec4<u32>(select(u_input.d, u_input.a, arg_0.x) >> (u_input.d & u_input.d), ~(~77920u), u_input.d, 8740u), (round(-(-471f)) * min(703f + -572f, var_1.x + -1774f)) - func_4(firstTrailingBit(u_input.c.xww) | -vec3<i32>(var_0.x, 0i, -7254i), u_input.d, Struct_1(true || false, vec4<u32>(4294967295u, 1u, 24060u, 88046u) >> vec4<u32>(u_input.a, u_input.a, u_input.d, 19526u), var_1.x, -vec4<f32>(-795f, var_1.x, -1061f, -968f))), vec4<f32>(-(-449f + (366f / var_1.x)), -(-(-1610f - -1223f)), var_1.x, floor(step(var_1.x, var_1.x) / (-349f + var_1.x))));
    var var_3 = var_2;
    let var_4 = Struct_1(all(select(!select(arg_0, vec4<bool>(false, true, true, var_2.a), arg_0.x), select(!arg_0, select(vec4<bool>(false, false, var_3.a, true), vec4<bool>(false, false, var_3.a, var_2.a), vec4<bool>(false, false, var_2.a, true)), select(arg_0, arg_0, false)), arg_0)), firstTrailingBit(select(var_2.b, vec4<u32>(~u_input.a, 1u, u_input.d, 26959u), select(vec4<bool>(var_2.a, false, var_3.a, var_3.a), arg_0, false))), -2420f, -vec4<f32>(min(var_2.c, sign(731f)), -(-var_2.d.x), var_1.x, -924f));
    return var_4;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = func_5(select(vec4<bool>(~global4.x < (0i >> 1u), select(func_2(Struct_1(false, global0[39995u], 301f, vec4<f32>(343f, 1503f, -434f, -967f)), Struct_1(false, global0[85617u], 215f, vec4<f32>(696f, -193f, 1559f, -417f)), -1942f), !true, false && false), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true))), vec4<bool>(false, true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true)), !(!true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true)));
    global0 = array<vec4<u32>, 29>();
    var var_1 = vec2<i32>(2147483647i >> (arg_0 << u_input.d), u_input.e);
    var var_2 = var_0.b.wzy ^ var_0.b.zww;
    let var_3 = var_0.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 5>();
    global1 = array<vec3<bool>, 5>();
    global2 = array<vec3<f32>, 14>();
    global1 = array<vec3<bool>, 5>();
    let var_0 = ceil(-(floor(sign(237f)) - ceil(-(-1000f))));
    global3 = vec2<i32>(u_input.b, global3.x);
    let var_1 = select(-(((vec2<f32>(var_0, var_0) - vec2<f32>(var_0, 826f)) + (vec2<f32>(var_0, 1000f) + vec2<f32>(var_0, 906f))) - -vec2<f32>(var_0, var_0)), sign(round(-vec2<f32>(var_0, var_0) * vec2<f32>(var_0, var_0))), vec2<bool>(func_1(~u_input.a), false));
    let var_2 = Struct_1(func_5(!vec4<bool>(true, false, true, false)).a & all(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), ((vec4<u32>(41897u, u_input.d, 0u, 59270u) >> vec4<u32>(u_input.a, 35560u, 35792u, u_input.d)) & min(~global0[u_input.a], ~vec4<u32>(16986u, u_input.d, u_input.a, u_input.d))) << vec4<u32>(~u_input.d, u_input.a & max(u_input.a, u_input.d), ~u_input.a, u_input.d), -func_5(vec4<bool>(true && true, func_1(u_input.a), func_2(Struct_1(false, global0[1u], var_1.x, vec4<f32>(var_0, var_0, var_1.x, var_0)), Struct_1(true, vec4<u32>(u_input.d, 7324u, u_input.a, u_input.d), 454f, vec4<f32>(-1000f, var_0, var_0, -1000f)), var_0), !true)).d.x, ceil(-vec4<f32>(359f, -194f, 1340f, 548f) - vec4<f32>(var_0, -736f, var_1.x, 757f)) + (-(-vec4<f32>(var_1.x, 321f, 607f, 750f)) / -(-vec4<f32>(var_0, -1144f, 1909f, var_1.x))));
    global4 = (vec2<i32>(max(~1i, ~global4.x), global3.x | clamp(global4.x, global3.x, -1580i)) + vec2<i32>(u_input.c.x % u_input.b, abs(firstTrailingBit(-5938i)))) - max(-vec2<i32>(u_input.b | global3.x, u_input.b), -(vec2<i32>(u_input.e, 132i) ^ u_input.c.wy) << func_5(select(vec4<bool>(true, var_2.a, true, false), vec4<bool>(false, true, var_2.a, true), var_2.a)).b.yy);
    let x = u_input.a;
    s_output = StorageBuffer(global4.x, u_input.e, 4294967295u % ~dot(vec3<u32>(u_input.d, 55933u, u_input.a), abs(var_2.b.zzy)), trunc(-(-1704f)), firstLeadingBit(-22549i));
}

