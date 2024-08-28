struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(357f, vec4<i32>(-1i, -59250i, -95063i, -41608i), vec2<i32>(i32(-2147483648), 1i), vec4<u32>(0u, 7903u, 29953u, 27253u)), Struct_4(-1564f, vec4<i32>(2147483647i, -37171i, 18219i, 1i), vec2<i32>(-1i, -1i), vec4<u32>(33893u, 0u, 1u, 4294967295u)), Struct_4(336f, vec4<i32>(0i, 2147483647i, 14998i, -1i), vec2<i32>(2876i, 2147483647i), vec4<u32>(96467u, 45395u, 0u, 4294967295u)), Struct_4(522f, vec4<i32>(1i, -8617i, 1175i, 5031i), vec2<i32>(12452i, -1i), vec4<u32>(4294967295u, 42447u, 4294967295u, 1u)), Struct_4(1799f, vec4<i32>(-14119i, 1i, i32(-2147483648), 1i), vec2<i32>(4702i, -80104i), vec4<u32>(7851u, 21940u, 1u, 0u)), Struct_4(-370f, vec4<i32>(-60142i, 31272i, i32(-2147483648), 0i), vec2<i32>(2147483647i, 31214i), vec4<u32>(97653u, 17989u, 32793u, 51880u)), Struct_4(1000f, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 1i), vec2<i32>(-1i, 2147483647i), vec4<u32>(1u, 22482u, 99541u, 4294967295u)), Struct_4(-386f, vec4<i32>(i32(-2147483648), -4432i, 1i, 0i), vec2<i32>(0i, 1i), vec4<u32>(4294967295u, 54551u, 39834u, 1u)), Struct_4(1006f, vec4<i32>(3338i, 0i, i32(-2147483648), 37564i), vec2<i32>(-1i, 0i), vec4<u32>(41250u, 20093u, 16130u, 35014u)), Struct_4(1515f, vec4<i32>(35846i, 14803i, 1012i, 3139i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<u32>(37355u, 0u, 1u, 0u)), Struct_4(152f, vec4<i32>(-12812i, 2147483647i, 0i, 1i), vec2<i32>(52552i, 2147483647i), vec4<u32>(1u, 4294967295u, 4835u, 1u)), Struct_4(-748f, vec4<i32>(-231i, 6018i, i32(-2147483648), 0i), vec2<i32>(-1i, 1i), vec4<u32>(13940u, 0u, 0u, 5666u)), Struct_4(1000f, vec4<i32>(-1i, 1i, 42952i, 101024i), vec2<i32>(-39595i, -16015i), vec4<u32>(4294967295u, 30860u, 17012u, 19291u)), Struct_4(995f, vec4<i32>(0i, 1i, -19392i, 2147483647i), vec2<i32>(0i, 23098i), vec4<u32>(11709u, 18309u, 4294967295u, 0u)), Struct_4(1019f, vec4<i32>(-1i, -46619i, 2147483647i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec4<u32>(4294967295u, 24134u, 0u, 57484u)), Struct_4(-1015f, vec4<i32>(26582i, i32(-2147483648), 0i, -21462i), vec2<i32>(31202i, -22281i), vec4<u32>(4294967295u, 132249u, 44041u, 0u)), Struct_4(2422f, vec4<i32>(33749i, 55966i, 1i, -33327i), vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(0u, 4294967295u, 8759u, 13269u)), Struct_4(-983f, vec4<i32>(0i, -1i, 34467i, 59685i), vec2<i32>(2147483647i, 33303i), vec4<u32>(42816u, 68482u, 4294967295u, 1u)), Struct_4(190f, vec4<i32>(27100i, -1i, 2147483647i, 27299i), vec2<i32>(-1i, 15071i), vec4<u32>(4294967295u, 0u, 4294967295u, 21200u)), Struct_4(-406f, vec4<i32>(41760i, i32(-2147483648), 36574i, 2147483647i), vec2<i32>(47739i, 1469i), vec4<u32>(1u, 1u, 53076u, 1u)), Struct_4(-442f, vec4<i32>(-2858i, 2147483647i, -65577i, -37065i), vec2<i32>(-6695i, 0i), vec4<u32>(4294967295u, 0u, 4294967295u, 146013u)), Struct_4(-1785f, vec4<i32>(-8126i, -59874i, -1i, -30637i), vec2<i32>(i32(-2147483648), -1i), vec4<u32>(13080u, 1u, 0u, 42790u)), Struct_4(115f, vec4<i32>(-8275i, 2147483647i, i32(-2147483648), 12880i), vec2<i32>(5716i, 17220i), vec4<u32>(8325u, 7643u, 4294967295u, 8087u)), Struct_4(491f, vec4<i32>(1i, i32(-2147483648), 21036i, 17852i), vec2<i32>(0i, 24662i), vec4<u32>(1u, 4294967295u, 15954u, 46076u)), Struct_4(121f, vec4<i32>(-1i, 2147483647i, 14974i, 2147483647i), vec2<i32>(1i, -22619i), vec4<u32>(1757u, 15174u, 4775u, 38569u)));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec2<i32>(0i, 69986i), Struct_1(-1954f, false, vec2<f32>(1000f, 983f), true), 1u), Struct_2(vec3<i32>(-33287i, -1i, i32(-2147483648)), vec2<i32>(-20796i, -1i), Struct_1(-1449f, false, vec2<f32>(-902f, 490f), true), 45569u), Struct_2(vec3<i32>(2147483647i, 2147483647i, -14689i), vec2<i32>(50465i, 2147483647i), Struct_1(-1261f, true, vec2<f32>(-1000f, 691f), true), 77136u), Struct_2(vec3<i32>(0i, 23643i, 2147483647i), vec2<i32>(2147483647i, 17395i), Struct_1(-591f, true, vec2<f32>(-632f, 1126f), true), 1u), Struct_2(vec3<i32>(1i, -46360i, -1i), vec2<i32>(12020i, 1i), Struct_1(-423f, false, vec2<f32>(-353f, -255f), false), 44994u), Struct_2(vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), Struct_1(-372f, false, vec2<f32>(-1270f, 411f), true), 0u), Struct_2(vec3<i32>(i32(-2147483648), 0i, 1i), vec2<i32>(3262i, -1i), Struct_1(689f, true, vec2<f32>(907f, -162f), true), 21867u), Struct_2(vec3<i32>(-1i, -49634i, 33557i), vec2<i32>(49637i, 31338i), Struct_1(416f, false, vec2<f32>(928f, 447f), false), 1u), Struct_2(vec3<i32>(53279i, 1i, -62234i), vec2<i32>(0i, -9775i), Struct_1(336f, false, vec2<f32>(-676f, 2472f), false), 4294967295u), Struct_2(vec3<i32>(27649i, -1i, -40934i), vec2<i32>(-1i, 87696i), Struct_1(337f, true, vec2<f32>(300f, -1565f), true), 4294967295u), Struct_2(vec3<i32>(29188i, 1i, 36484i), vec2<i32>(17925i, -6713i), Struct_1(1478f, false, vec2<f32>(-1000f, -1000f), true), 39969u), Struct_2(vec3<i32>(-1i, 70054i, 24548i), vec2<i32>(2147483647i, -22914i), Struct_1(-850f, false, vec2<f32>(-687f, 208f), true), 4294967295u), Struct_2(vec3<i32>(0i, -1i, 1i), vec2<i32>(0i, 43696i), Struct_1(-119f, false, vec2<f32>(684f, 1183f), false), 13993u), Struct_2(vec3<i32>(-1i, -2503i, 2147483647i), vec2<i32>(20218i, 0i), Struct_1(-805f, false, vec2<f32>(1315f, -383f), true), 25373u), Struct_2(vec3<i32>(2147483647i, -15313i, 2147483647i), vec2<i32>(2147483647i, -27241i), Struct_1(-985f, true, vec2<f32>(556f, 1043f), false), 69775u), Struct_2(vec3<i32>(2147483647i, 2147483647i, 7627i), vec2<i32>(1i, -17050i), Struct_1(-351f, false, vec2<f32>(-1163f, -921f), true), 18004u), Struct_2(vec3<i32>(24175i, -25323i, 2147483647i), vec2<i32>(-48080i, i32(-2147483648)), Struct_1(506f, true, vec2<f32>(460f, -1000f), true), 18318u), Struct_2(vec3<i32>(i32(-2147483648), 1i, 53207i), vec2<i32>(i32(-2147483648), 1i), Struct_1(-445f, true, vec2<f32>(-817f, -1000f), false), 4294967295u), Struct_2(vec3<i32>(-78911i, 1i, -27293i), vec2<i32>(0i, -1i), Struct_1(-521f, true, vec2<f32>(1029f, 1000f), false), 1u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_3(all(!vec4<bool>(global1.x, true, global2.a.x > -18002i, any(vec3<bool>(false, global1.x, true)))));
    var var_1 = !global2.c.d;
    return global2.c;
}

fn func_3(arg_0: vec3<i32>) -> vec3<i32> {
    global1 = select(!select(select(!vec2<bool>(global1.x, false), vec2<bool>(global1.x, true), false), !vec2<bool>(global2.c.b, false), global1.x), vec2<bool>(true || select(true != global2.c.d, false, global2.c.b), global1.x), global2.c.b);
    global1 = select(select(select(!select(vec2<bool>(false, global2.c.d), vec2<bool>(global1.x, global2.c.b), vec2<bool>(global2.c.d, global2.c.d)), select(!vec2<bool>(global2.c.b, global1.x), select(vec2<bool>(false, true), vec2<bool>(global1.x, global1.x), false), vec2<bool>(false, true)), any(!vec2<bool>(false, global2.c.b))), vec2<bool>(global2.c.b, !global2.c.d | all(vec4<bool>(global2.c.d, global1.x, true, false))), select(select(vec2<bool>(true, true), !vec2<bool>(true, global2.c.d), !global1.x), select(vec2<bool>(global1.x, false), vec2<bool>(global2.c.d, true), global1.x), !select(vec2<bool>(global1.x, false), vec2<bool>(false, global1.x), vec2<bool>(global1.x, true)))), select(vec2<bool>(false, all(!vec4<bool>(global2.c.d, global2.c.b, true, true))), vec2<bool>(false, !(!global2.c.d)), false), true && all(select(select(vec3<bool>(false, false, global2.c.b), vec3<bool>(global1.x, false, global1.x), global2.c.b), select(vec3<bool>(global2.c.d, global2.c.b, global2.c.d), vec3<bool>(true, false, true), vec3<bool>(true, global1.x, global2.c.b)), global1.x)));
    var var_0 = ~(~(~(~(~vec3<u32>(4294967295u, u_input.a, 45076u)))));
    var var_1 = firstTrailingBit(global2.d);
    let var_2 = false;
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = func_2(~(~(~vec3<u32>(global2.d, 35608u, 1u) << (select(vec3<u32>(5016u, global2.d, u_input.a), vec3<u32>(u_input.a, 24478u, 0u), vec3<bool>(global2.c.d, false, true)) % vec3<u32>(32u)))), reverseBits(_wgslsmith_add_u32(1u, firstLeadingBit(max(0u, global2.d)))));
    global2 = Struct_2(func_3(vec3<i32>(-1i) * -abs(vec3<i32>(global2.b.x, global2.a.x, 22163i))), _wgslsmith_sub_vec2_i32(-global2.a.zx, u_input.c) ^ vec2<i32>(global2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(21284i, global2.b.x, global2.b.x, global2.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(-4962i, 62804i, global2.b.x, 0i), vec4<i32>(47869i, -20932i, u_input.d, -31291i)))), arg_0, 4294967295u);
    return vec4<i32>(~global2.a.x, u_input.b, -2147483647i, global2.b.x);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = vec3<u32>(0u, 0u, global2.d);
    var var_1 = !select(select(vec3<bool>(any(vec2<bool>(true, arg_0)), true, global1.x), select(select(vec3<bool>(true, true, arg_0), vec3<bool>(global1.x, true, false), vec3<bool>(arg_0, global2.c.b, global1.x)), select(vec3<bool>(true, false, arg_0), vec3<bool>(true, global2.c.b, global1.x), true), vec3<bool>(global1.x, true, false)), any(vec4<bool>(arg_0, true, true, arg_0))), select(select(!vec3<bool>(global2.c.d, global2.c.d, true), select(vec3<bool>(false, global2.c.b, false), vec3<bool>(true, false, global2.c.b), vec3<bool>(false, true, global1.x)), false), select(vec3<bool>(false, global1.x, global2.c.b), vec3<bool>(global1.x, arg_0, global2.c.b), vec3<bool>(global2.c.b, false, false)), !select(vec3<bool>(global1.x, false, global2.c.b), vec3<bool>(global2.c.b, true, false), false)), !vec3<bool>(-214f >= global2.c.c.x, all(vec3<bool>(global2.c.d, global2.c.d, false)), true));
    let var_2 = reverseBits(vec2<i32>(i32(-1i) * -(~arg_1.x), abs(u_input.b)));
    global2 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(reverseBits(~var_0) >> (firstLeadingBit(max(var_0, vec3<u32>(var_0.x, 33936u, global2.d))) % vec3<u32>(32u)), vec3<u32>(~global2.d, 1u, global2.d)), 19u)];
    let var_3 = any(vec4<bool>(var_1.x, true, true, all(vec4<bool>(global2.c.d, !var_1.x, arg_0, all(vec4<bool>(false, global2.c.b, false, true))))));
    return Struct_2(abs(arg_1.zxz), global2.a.xx, global2.c, ~min(4294967295u, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c.d;
    global2 = func_4(max(-_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(global2.b.x, -20514i)), min(u_input.c.x, 28989i)) > -(~23109i), _wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(10971i, 0i, u_input.c.x, 13415i), _wgslsmith_mod_vec4_i32(vec4<i32>(-16790i, global2.a.x, -2147483647i, u_input.d), vec4<i32>(global2.a.x, 0i, 8809i, 2147483647i)), func_1(Struct_1(1577f, false, vec2<f32>(global2.c.c.x, global2.c.c.x), global1.x)))), select(_wgslsmith_add_vec4_i32(vec4<i32>(global2.b.x, -43150i, 0i, global2.b.x), min(vec4<i32>(-1i, 29361i, global2.b.x, u_input.d), vec4<i32>(0i, global2.b.x, -9107i, global2.b.x))), firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, 3302i, global2.b.x)), (u_input.d ^ 1i) != -1i)));
    global2 = global3[_wgslsmith_index_u32(u_input.a, 19u)];
    global1 = select(!(!select(!vec2<bool>(global2.c.d, false), vec2<bool>(true, true), !global1.x)), select(vec2<bool>(true, true), select(vec2<bool>(global1.x, global2.c.c.x > global2.c.c.x), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))), vec2<bool>(any(!vec4<bool>(global1.x, global1.x, true, global1.x)), !(!global1.x))), all(!select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, true), all(vec3<bool>(global2.c.d, global2.c.d, false)))));
    let var_1 = !any(vec3<bool>(global2.c.d, any(vec3<bool>(false, false, false)), global2.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.c.x) - -1406f), global2.c.a);
}

