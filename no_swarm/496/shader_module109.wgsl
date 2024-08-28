// {"0:0":[224,175,49,154,4,177,180,93,187,197,109,23,119,150,30,5,48,3,167,13,175,63,43,169,179,59,185,192,208,130,149,132,13,207,249,26,53,147,136,122,236,145,36,228,23,75,73,26]}
// Seed: 993450074729057904

struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec2<f32>, 2>;

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = countOneBits(u_input.b);
    let var_1 = Struct_2(select(max(-684f / (1938f * -414f), -(-832f)), -1000f, !false), vec2<i32>(~(u_input.a ^ ~u_input.a), 1i), 5854u, Struct_1(select(step(vec2<f32>(-742f, -871f) * vec2<f32>(-394f, -1372f), vec2<f32>(801f, 349f) - vec2<f32>(-1079f, -1055f)), ceil(global1[abs(u_input.d)]), !select(vec2<bool>(true, false), vec2<bool>(true, false), false)), false, -vec3<f32>(-227f / -1551f, -880f, -157f), 2147483647i * (global0[u_input.d & 0u] & arg_0.x), -vec2<i32>(global0[~11440u], 2185i)), Struct_1(-global1[0u], true, select(-min(vec3<f32>(966f, 1628f, -994f), vec3<f32>(363f, 1142f, -695f)), -ceil(vec3<f32>(-179f, -218f, -1000f)), any(vec2<bool>(false, false))), arg_0.x, -u_input.c.xz));
    var var_2 = Struct_4(~vec3<i32>((global0[25966u] << var_1.c) - (-1i + i32(-2147483648)), ~48563i, u_input.a));
    var var_3 = select(select(!(!vec3<bool>(var_1.e.b, true, var_1.d.b)), select(vec3<bool>(!var_1.d.b, var_2.a.x >= -6033i, all(vec3<bool>(var_1.e.b, false, false))), vec3<bool>(false && var_1.e.b, var_1.d.b && false, var_1.d.b), true), all(!(!vec3<bool>(true, var_1.e.b, var_1.d.b)))), select(select(select(!vec3<bool>(true, false, var_1.e.b), select(vec3<bool>(false, false, var_1.e.b), vec3<bool>(false, true, true), false), !vec3<bool>(var_1.d.b, var_1.e.b, true)), !(!vec3<bool>(false, var_1.d.b, var_1.e.b)), !select(vec3<bool>(true, var_1.e.b, true), vec3<bool>(true, false, var_1.e.b), false)), vec3<bool>((var_1.c != u_input.e) && var_1.d.b, var_1.d.b, any(!vec3<bool>(true, true, false))), all(vec4<bool>(var_1.e.b, all(vec4<bool>(true, var_1.e.b, var_1.d.b, var_1.d.b)), var_1.e.b, var_1.e.b))), false);
    var var_4 = var_1.e;
    return var_1.e.b;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(-floor(min(527f, -141f)), u_input.c.zy, ~4294967295u, arg_0.d, Struct_1(arg_3.d.a / -(vec2<f32>(arg_0.d.c.x, -2162f) - arg_3.d.c.xz), arg_0.d.b & (arg_3.c < select(0u, 0u, true)), min(-arg_0.d.c, arg_3.d.c), arg_2, u_input.c.xy));
    let var_1 = Struct_1(vec2<f32>(arg_1, arg_3.d.c.x) / abs(step(vec2<f32>(355f, 1000f), var_0.d.c.zx)), all(select(!vec3<bool>(arg_3.d.b, var_0.d.b, true), !vec3<bool>(var_0.d.b, var_0.e.b, var_0.d.b), true)), vec3<f32>(exp2(var_0.d.a.x), var_0.e.a.x - select(floor(-1265f), 1048f, arg_3.d.b || true), -411f), -40722i, vec2<i32>(abs(dot(arg_3.d.e, vec2<i32>(1i, -1i))), 2147483647i % 26184i) >> vec2<u32>(dot(vec2<u32>(arg_0.c, 32462u), vec2<u32>(arg_3.c, 4294967295u)), u_input.e));
    let var_2 = vec2<bool>(false, var_0.e.b);
    let var_3 = Struct_3(Struct_2(-2072f, vec2<i32>(clamp(1i, -2324i | arg_0.e.e.x, -(-1i)), var_0.b.x >> ~var_0.c), 1u >> 20595u, var_1, Struct_1(-max(var_0.d.c.zx, arg_3.e.a), !any(vec3<bool>(var_2.x, var_1.b, var_0.d.b)), -vec3<f32>(-303f, arg_0.d.a.x, var_0.d.c.x) / abs(vec3<f32>(-740f, 131f, -255f)), ~(-var_0.e.d), (vec2<i32>(-1i, arg_3.b.x) - vec2<i32>(arg_2, -13591i)) << ~vec2<u32>(arg_3.c, 1u))), u_input.c.yw, vec4<u32>(dot(~vec2<u32>(9893u, 1574u), vec2<u32>(1u, arg_0.c)) << 46431u, 1u, ~(arg_0.c | (arg_0.c & 43085u)), select(19214u, countOneBits(3569u), all(vec3<bool>(false, var_2.x, var_1.b)))), var_0, -(-(-(-var_0.e.e))));
    let var_4 = ~u_input.c.x;
    return var_3.c.wyx;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_4 {
    global1 = array<vec2<f32>, 2>();
    let var_0 = ~func_4(Struct_2(-225f, -vec2<i32>(15957i, 0i), (4294967295u / 30563u) - (4294967295u - u_input.e), Struct_1(arg_0.wz, false, select(arg_0.xwz, arg_0.xww, vec3<bool>(false, true, true)), ~global0[u_input.d], u_input.c.wz ^ u_input.c.zz), Struct_1(-vec2<f32>(arg_0.x, 1218f), func_3(u_input.c.yx), vec3<f32>(-930f, arg_0.x, 435f), ~1971i, vec2<i32>(arg_1, arg_1) | vec2<i32>(2147483647i, global0[0u]))), -(1279f - 649f), u_input.c.x, Struct_2(647f, ~(vec2<i32>(1i, global0[1u]) << vec2<u32>(1u, 0u)), 1u, Struct_1(arg_0.zw, arg_1 >= -1049i, sign(vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), -arg_1, u_input.c.wx), Struct_1(-arg_0.xy, false, arg_0.yxx, 1i & 86433i, clamp(vec2<i32>(global0[u_input.d], -52204i), vec2<i32>(-15015i, u_input.b), vec2<i32>(u_input.c.x, global0[2511u])))));
    return Struct_4(~(u_input.c.wxw + (vec3<i32>(u_input.c.x, i32(-2147483648), arg_1) ^ select(u_input.c.xyw, vec3<i32>(1i, arg_1, arg_1), true))));
}

fn func_5(arg_0: Struct_4) -> f32 {
    var var_0 = u_input.e;
    global0 = array<i32, 32>();
    let var_1 = countOneBits(vec4<u32>(countOneBits(reverseBits(~27324u)), 72149u, u_input.e / ~4294967295u, ~u_input.e));
    var var_2 = func_2(vec4<f32>(abs(floor(1823f)) + round(1141f), ceil(ceil(-(-410f))), -(-156f), round(-413f)), abs(-firstTrailingBit(-u_input.c.x)));
    var var_3 = ~var_2.a.x;
    return -1934f;
}

fn func_1() -> vec4<u32> {
    global1 = array<vec2<f32>, 2>();
    global1 = array<vec2<f32>, 2>();
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    var var_0 = Struct_2(-ceil(-(-207f)), vec2<i32>(firstLeadingBit(-59842i), 0i), u_input.d, Struct_1(sign(-(-global1[u_input.e])), false, step(-vec3<f32>(-1770f, 1187f, -815f), vec3<f32>(-1048f, -458f / 1168f, -442f / -2398f)), select(11913i, 1i, true) >> ~(1u & 57686u), vec2<i32>(5186i, 16831i)), Struct_1(vec2<f32>(-(-545f), func_5(func_2(vec4<f32>(396f, 357f, 539f, 483f), 33375i))), any(vec2<bool>(false, false)), select(floor(vec3<f32>(-1068f, 328f, -208f) * vec3<f32>(-585f, -342f, -268f)), -vec3<f32>(-480f, 917f, -1213f) / step(vec3<f32>(1225f, -971f, -1612f), vec3<f32>(-385f, -797f, 1287f)), true), -1i & -(0i | u_input.c.x), ~vec2<i32>(-13054i, u_input.a * i32(-2147483648))));
    return vec4<u32>(45308u, ~49764u, ~4294967295u + (~2846u & var_0.c), 48053u | ~(1u + 24440u)) & ~vec4<u32>(dot(clamp(vec3<u32>(4294967295u, 0u, u_input.d), vec3<u32>(28308u, 1u, var_0.c), vec3<u32>(var_0.c, var_0.c, 0u)), ~vec3<u32>(0u, 1u, 4294967295u)), dot(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.d, var_0.c)), ~20311u, max(u_input.d, clamp(u_input.d, 46713u, u_input.d)));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    var var_0 = arg_3.a.d;
    var var_1 = u_input.c;
    var var_2 = vec3<bool>(true, !func_3(-vec2<i32>(10329i, 32626i)) == arg_3.a.d.b, all(select(!select(vec3<bool>(var_0.b, true, arg_0.d.d.b), vec3<bool>(true, var_0.b, arg_3.d.e.b), arg_3.a.d.b), vec3<bool>(arg_1.x == -46065i, !var_0.b, arg_3.d.a == -1259f), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, arg_0.a.d.b), vec3<bool>(false, true, arg_0.d.d.b))))));
    global1 = array<vec2<f32>, 2>();
    let var_3 = 33807i * ~9664i;
    return 756u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(firstLeadingBit(u_input.d), ~u_input.d >> 1u, ~(~u_input.d)) & vec3<u32>(~(~(u_input.d - u_input.e)), firstTrailingBit(func_6(Struct_3(Struct_2(453f, vec2<i32>(global0[u_input.d], -1i), 27513u, Struct_1(global1[u_input.d], true, vec3<f32>(-1922f, -2045f, -105f), global0[u_input.d], vec2<i32>(-19514i, u_input.c.x)), Struct_1(global1[94871u], false, vec3<f32>(-1440f, -112f, 323f), 1i, vec2<i32>(global0[u_input.e], global0[u_input.e]))), vec2<i32>(global0[u_input.d], -10517i), vec4<u32>(0u, 0u, 20778u, u_input.d), Struct_2(-1540f, vec2<i32>(u_input.b, global0[u_input.d]), 1u, Struct_1(global1[u_input.d], false, vec3<f32>(347f, -1000f, 797f), u_input.b, vec2<i32>(-1i, u_input.b)), Struct_1(global1[u_input.d], true, vec3<f32>(-1063f, 337f, 794f), i32(-2147483648), vec2<i32>(-3599i, -1i))), vec2<i32>(1i, u_input.b)), ~u_input.c.wx, func_1(), Struct_3(Struct_2(1000f, u_input.c.xz, 0u, Struct_1(global1[u_input.e], true, vec3<f32>(-228f, 379f, 271f), global0[0u], u_input.c.yw), Struct_1(global1[1u], false, vec3<f32>(-1308f, 461f, 1422f), global0[u_input.e], u_input.c.yx)), vec2<i32>(i32(-2147483648), 0i), vec4<u32>(4294967295u, u_input.e, u_input.d, u_input.d), Struct_2(2147f, vec2<i32>(2147483647i, 0i), u_input.d, Struct_1(global1[u_input.d], true, vec3<f32>(311f, 1021f, 988f), 38162i, vec2<i32>(2147483647i, 1i)), Struct_1(global1[u_input.d], true, vec3<f32>(456f, 1234f, -503f), global0[60899u], u_input.c.zy)), vec2<i32>(u_input.b, 10665i)))), 0u);
    global1 = array<vec2<f32>, 2>();
    let var_1 = ~func_6(Struct_3(Struct_2(-1280f, select(vec2<i32>(-1i, global0[var_0.x]), u_input.c.xx, vec2<bool>(false, false)), u_input.d * var_0.x, Struct_1(global1[var_0.x], true, vec3<f32>(768f, 317f, 389f), global0[17498u], vec2<i32>(-63062i, u_input.a)), Struct_1(global1[u_input.e], false, vec3<f32>(372f, 103f, -1278f), 2147483647i, vec2<i32>(16667i, global0[var_0.x]))), countOneBits(u_input.c.wy - vec2<i32>(global0[u_input.d], -1i)), vec4<u32>(u_input.e, u_input.d, ~1u, ~var_0.x), Struct_2(round(578f), abs(u_input.c.wy), countOneBits(var_0.x), Struct_1(global1[var_0.x], false, vec3<f32>(-1000f, 175f, 1813f), u_input.c.x, u_input.c.zz), Struct_1(vec2<f32>(-505f, 1284f), true, vec3<f32>(-1461f, 367f, -103f), u_input.b, u_input.c.xw)), clamp(vec2<i32>(u_input.b, -26500i), vec2<i32>(global0[96148u], -44517i), -u_input.c.wz)), u_input.c.xz, vec4<u32>(~var_0.x << u_input.d, var_0.x, max(91450u, u_input.e << 78484u), firstTrailingBit(var_0.x)), Struct_3(Struct_2(-(-484f), vec2<i32>(9443i, -5699i) - vec2<i32>(u_input.a, -60153i), u_input.e, Struct_1(global1[1u], false, vec3<f32>(-1669f, 1000f, 458f), -47372i, u_input.c.yy), Struct_1(global1[4294967295u], true, vec3<f32>(-564f, 892f, 265f), global0[var_0.x], vec2<i32>(0i, u_input.a))), vec2<i32>(i32(-2147483648) & u_input.a, 35142i), firstTrailingBit(~vec4<u32>(117909u, 14472u, u_input.e, 1599u)), Struct_2(1978f / 1000f, u_input.c.wx / vec2<i32>(i32(-2147483648), -9529i), 0u, Struct_1(vec2<f32>(-235f, -615f), false, vec3<f32>(1000f, -948f, -488f), i32(-2147483648), vec2<i32>(38839i, i32(-2147483648))), Struct_1(vec2<f32>(-1640f, -618f), false, vec3<f32>(190f, -2457f, 909f), global0[var_0.x], vec2<i32>(u_input.a, u_input.c.x))), u_input.c.yz));
    var var_2 = Struct_1(ceil(global1[40623u * (~var_1 / (1u & 4294967295u))]), true, (((vec3<f32>(1000f, -445f, -711f) + vec3<f32>(668f, -1000f, 538f)) + round(vec3<f32>(-1102f, -479f, -473f))) - -vec3<f32>(956f, -108f, 2286f)) + (-(vec3<f32>(-113f, -260f, -1476f) - vec3<f32>(500f, 219f, -208f)) + vec3<f32>(min(181f, 856f), 1760f, -(-899f))), (2147483647i >> func_1().x) + ~countOneBits(global0[22039u] - u_input.c.x), reverseBits(-firstLeadingBit(select(u_input.c.xz, u_input.c.wz, vec2<bool>(true, true)))));
    global1 = array<vec2<f32>, 2>();
    global1 = array<vec2<f32>, 2>();
    let var_3 = abs(dot(abs(max(vec3<i32>(54655i, u_input.a, 41790i), u_input.c.xwy)) * ((u_input.c.xww >> vec3<u32>(var_0.x, 1u, 58137u)) ^ vec3<i32>(14509i, var_2.d, -22295i)), abs(u_input.c.yww)));
    global0 = array<i32, 32>();
    var var_4 = Struct_3(Struct_2(exp2(var_2.c.x) / var_2.c.x, u_input.c.yx, var_0.x, Struct_1(vec2<f32>(-(-234f), var_2.c.x * -218f), true, vec3<f32>(var_2.a.x, 1169f + -261f, var_2.c.x), ~(0i), vec2<i32>(var_3, i32(-2147483648) / 2147483647i)), Struct_1(vec2<f32>(-627f, -1000f / 418f), var_2.b, var_2.c, var_3, var_2.e)), vec2<i32>(37113i, min(var_2.e.x, u_input.c.x)), ~(~select(vec4<u32>(71475u, 11595u, u_input.d, 17076u), vec4<u32>(4294967295u, var_0.x, 22306u, var_0.x), var_2.b)), Struct_2(var_2.a.x * trunc(-var_2.a.x), ~abs(vec2<i32>(var_3, -1i)) - countOneBits(vec2<i32>(var_2.d, u_input.b)), func_4(Struct_2(1075f, vec2<i32>(var_3, var_2.d), u_input.e, Struct_1(global1[var_0.x], false, vec3<f32>(582f, var_2.a.x, var_2.a.x), global0[1602u], vec2<i32>(2147483647i, 0i)), Struct_1(global1[var_0.x], true, vec3<f32>(-374f, -724f, var_2.a.x), 0i, var_2.e)), var_2.c.x + -526f, firstTrailingBit(59241i), Struct_2(-201f, vec2<i32>(2147483647i, var_2.e.x), 17680u, Struct_1(global1[u_input.e], false, vec3<f32>(var_2.c.x, var_2.a.x, 216f), 24432i, var_2.e), Struct_1(var_2.c.yy, true, vec3<f32>(var_2.c.x, var_2.c.x, var_2.a.x), global0[21039u], u_input.c.wx))).x | 11155u, Struct_1(select(global1[14416u | u_input.e], vec2<f32>(var_2.a.x, -355f), select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(true, false), var_2.b)), var_2.b, vec3<f32>(1685f - var_2.a.x, -1713f, -var_2.c.x), ~var_2.e.x + clamp(u_input.c.x, global0[4294967295u], 23806i), -u_input.c.yw), Struct_1(sign(vec2<f32>(var_2.a.x, var_2.c.x)), func_3(vec2<i32>(-39958i, -1i)), vec3<f32>(-var_2.c.x, -1790f, -1000f / var_2.c.x), 2147483647i / ~var_3, vec2<i32>(1i, -2146i))), max(-(-var_2.e) - countOneBits(vec2<i32>(global0[u_input.d], 2147483647i) >> var_0.xx), select(~(vec2<i32>(global0[38264u], var_2.d) % var_2.e), -(-vec2<i32>(-1i, var_3)), !(!vec2<bool>(false, var_2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, func_5(Struct_4(vec3<i32>(var_4.a.e.e.x, -1i, ~var_2.e.x))), -select(vec4<f32>(var_4.a.a, var_4.a.e.c.x, var_2.c.x, 1948f), -vec4<f32>(var_4.a.d.c.x, 235f, -725f, var_2.c.x), vec4<bool>(var_2.b, true, var_2.b, false)) * (ceil(vec4<f32>(-215f, var_4.d.a, var_2.a.x, var_2.c.x)) + -abs(vec4<f32>(var_4.a.d.c.x, var_2.a.x, var_2.c.x, var_4.d.d.a.x))));
}

