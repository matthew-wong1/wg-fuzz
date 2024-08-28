// {"0:0":[233,250,128,84,160,219,6,226,111,114,169,155,243,155,236,235,139,19,49,154,177,189,179,44,194,204,36,112,12,180,141,137,26,177,142,38,15,147,44,88,45,173,24,142,134,16,11,48,151,208,211,128,114,56,243,154,110,101,199,20,139,82,198,95]}
// Seed: 6445646800726407521

struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<f32>,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: f32;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<i32, 19> = array<i32, 19>(2147483647i, 0i, i32(-2147483648), -16994i, -24270i, 38594i, 0i, -32249i, -74217i, 51890i, -1i, 12885i, -34933i, i32(-2147483648), -1i, -15315i, -31094i, 1i, -1i);

var<private> global4: array<vec3<f32>, 1>;

fn func_3() -> vec2<i32> {
    var var_0 = Struct_4(-(-417f), Struct_3(~(~(0u % 0u)), Struct_2(!vec4<bool>(false, true, true, true), !(false || true), ~(~vec2<u32>(82594u, 6285u)), Struct_1(all(vec4<bool>(true, false, false, true)), true, -2360f))), exp2(-(-(-vec4<f32>(1101f, global0[0u], -597f, global0[4294967295u])))), -332f, Struct_2(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true || true, true | true, true), false), false, reverseBits(~u_input.e.zy), Struct_1(false, !(1u == u_input.c.x), sign(global0[35308u & 0u]))));
    let var_1 = vec4<u32>(~35573u, ~(~u_input.c.x), var_0.e.c.x >> ~(~0u), var_0.b.b.c.x);
    return -select(-((u_input.d.wz & u_input.d.yw) << vec2<u32>(27396u, 68987u)), reverseBits(u_input.d.wz), vec2<bool>(all(vec2<bool>(var_0.b.b.a.x, var_0.e.d.b)), all(var_0.b.b.a.yyx)));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = i32(-2147483648) ^ abs((arg_1.x << (arg_2.c.x | arg_2.c.x)) & -1i);
    global0 = array<f32, 13>();
    let var_1 = -(~u_input.d.xxy % vec3<i32>(0i, 2147483647i, (arg_1.x ^ -1i) & arg_1.x));
    global2 = abs(-(~global3[~u_input.e.x])) >> abs(abs(17928u % 1u));
    var_0 = -(firstLeadingBit(global3[u_input.e.x]) & global3[117546u % ~arg_2.c.x]);
    return ~u_input.c.x ^ ((dot(~vec3<u32>(0u, 0u, u_input.c.x), vec3<u32>(1u, 61590u, arg_2.c.x) % vec3<u32>(arg_2.c.x, 1u, 1u)) - 7379u) ^ arg_2.c.x);
}

fn func_2(arg_0: Struct_5, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_4(391f, Struct_3(func_4(!arg_0.a.b.b, func_3(), Struct_2(arg_0.a.b.a, false, vec2<u32>(0u, arg_0.b.x), arg_0.a.b.d)) << u_input.c.x, Struct_2(vec4<bool>(!true, !arg_0.a.b.d.b, u_input.d.x != 7305i, arg_0.a.b.d.a && arg_0.a.b.d.a), !true, vec2<u32>(arg_0.b.x, ~4288u), arg_0.a.b.d)), -(-vec4<f32>(759f, -775f, -523f, arg_1.x) + -(-vec4<f32>(-384f, global0[arg_0.b.x], arg_1.x, arg_1.x))), select(global0[u_input.e.x], ((arg_1.x / 2414f) - global0[arg_0.a.b.c.x]) / (global0[144702u ^ arg_0.a.b.c.x] + min(-773f, arg_0.a.b.d.c)), true), arg_0.a.b);
    global1 = -global0[var_0.e.c.x / ~(firstTrailingBit(u_input.c.x) << min(u_input.c.x, 0u))];
    let var_1 = arg_0.a.b.d.c;
    let var_2 = u_input.c.zx;
    var var_3 = Struct_3(var_2.x, Struct_2(select(!select(vec4<bool>(var_0.e.b, false, false, true), vec4<bool>(arg_0.a.b.d.b, var_0.e.a.x, true, var_0.b.b.b), var_0.b.b.d.a), var_0.b.b.a, any(select(vec2<bool>(arg_0.a.b.a.x, false), vec2<bool>(false, false), var_0.e.d.a))), any(vec2<bool>(arg_0.a.b.d.b, true)), vec2<u32>(countOneBits(var_2.x), ~12980u), Struct_1(var_0.e.b, !all(arg_0.a.b.a.yxy), -var_0.b.b.d.c)));
    return arg_0.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_4 {
    global0 = array<f32, 13>();
    let var_0 = ~70269u;
    var var_1 = func_2(Struct_5(Struct_3(~var_0, Struct_2(!vec4<bool>(true, true, arg_0.b.b, arg_1.b.b.d.a), !arg_0.b.d.b, arg_0.b.c >> arg_0.b.c, func_2(Struct_5(Struct_3(arg_1.e.c.x, arg_0.b), arg_1.b.b.c), vec3<f32>(arg_1.a, -451f, arg_1.d)).b.d)), vec2<u32>(abs(1u), select(u_input.e.x, u_input.e.x, true)) >> ~func_2(Struct_5(Struct_3(arg_0.b.c.x, arg_0.b), vec2<u32>(23740u, 16860u)), arg_1.c.wxw).b.c), round(min(vec3<f32>(max(1606f, arg_0.b.d.c), -1000f, -1150f), global4[func_4(arg_1.b.b.b | arg_0.b.d.a, u_input.d.wz, func_2(Struct_5(arg_0, vec2<u32>(u_input.c.x, u_input.c.x)), vec3<f32>(global0[1u], arg_1.e.d.c, arg_0.b.d.c)).b)]))).b.d;
    var var_2 = ~clamp(4234i, i32(-2147483648), abs(15989i << arg_1.e.c.x) << (arg_0.b.c.x & 1u));
    var var_3 = Struct_4(-global0[4294967295u], Struct_3(44573u, arg_0.b), vec4<f32>(-abs(-810f * 271f), -ceil(1764f) / -(-1000f * -450f), -(-(var_1.c / global0[var_0])), -(-(-218f)) * abs(arg_1.b.b.d.c + 1008f)), -401f, arg_1.e);
    return arg_1;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32, arg_3: vec2<u32>) -> vec2<u32> {
    var var_0 = select(vec3<bool>((arg_1.b.c.x << (arg_1.a / 4294967295u)) >= arg_1.a, select((true && arg_1.b.d.a) | arg_0.b.b.b, true, u_input.b <= ~(-26244i)), u_input.e.x > (arg_1.b.c.x & ~arg_0.b.b.c.x)), !arg_1.b.a.zwy, any(func_5(Struct_3(firstTrailingBit(19708u), arg_1.b), func_5(arg_0.b, arg_0)).b.b.a.wzz));
    let var_1 = select(reverseBits(u_input.e.xyz), u_input.c, (max(arg_2, -1645f) >= global0[~u_input.e.x]) && var_0.x) % ~min(vec3<u32>(dot(vec3<u32>(arg_3.x, arg_3.x, arg_0.b.a), u_input.c), 22388u, 4294967295u & u_input.c.x), u_input.c);
    var var_2 = ~(u_input.c.x & 4272u);
    let var_3 = -(-clamp(-vec4<i32>(u_input.d.x, -1i, u_input.a, u_input.d.x), u_input.d, vec4<i32>(u_input.d.x, global3[arg_0.b.b.c.x], -33068i, global3[23833u])) >> vec4<u32>(abs(abs(1u)), ~arg_3.x, arg_3.x, 4294967295u));
    let var_4 = Struct_1(true, !(!true), select(-arg_2 - (678f - -1101f), 541f - arg_2, false));
    return (~u_input.e.ww ^ clamp(arg_1.b.c, vec2<u32>(arg_3.x, arg_0.b.a), arg_1.b.c)) % func_5(func_2(Struct_5(Struct_3(1u, Struct_2(vec4<bool>(false, arg_0.b.b.d.b, var_4.b, var_4.b), arg_0.e.a.x, vec2<u32>(2435u, arg_1.b.c.x), Struct_1(var_4.a, var_4.b, arg_2))), firstLeadingBit(u_input.e.wx)), ceil(-vec3<f32>(1000f, -1221f, -1570f))), arg_0).e.c;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_4 {
    var var_0 = u_input.d.zx;
    var var_1 = ~(~4735u);
    var var_2 = -4388i - ~min(global3[(u_input.c.x << u_input.e.x) & 25595u], (u_input.a >> u_input.c.x) & 2147483647i);
    global2 = firstLeadingBit(firstTrailingBit(0i));
    let var_3 = ~(func_6(func_5(func_2(Struct_5(Struct_3(u_input.c.x, Struct_2(vec4<bool>(true, arg_1, arg_0.a, arg_1), true, vec2<u32>(u_input.e.x, u_input.e.x), Struct_1(true, false, 629f))), vec2<u32>(1u, 0u)), global4[u_input.e.x]), Struct_4(151f, Struct_3(0u, Struct_2(vec4<bool>(false, arg_0.a, true, false), false, vec2<u32>(4294967295u, u_input.c.x), arg_0)), vec4<f32>(-1069f, arg_0.c, arg_0.c, -1471f), global0[0u], Struct_2(vec4<bool>(arg_1, true, arg_1, false), false, vec2<u32>(u_input.c.x, 45060u), Struct_1(arg_1, false, -715f)))), func_2(Struct_5(Struct_3(0u, Struct_2(vec4<bool>(arg_0.b, arg_0.b, arg_0.a, arg_1), arg_0.b, vec2<u32>(79810u, u_input.c.x), arg_0)), vec2<u32>(u_input.c.x, u_input.c.x)), vec3<f32>(arg_0.c, global0[u_input.e.x], -688f)), -682f, func_2(Struct_5(Struct_3(u_input.e.x, Struct_2(vec4<bool>(arg_0.b, true, true, true), false, u_input.c.yy, arg_0)), u_input.e.wy), global4[countOneBits(2237u)]).b.c) % vec2<u32>(u_input.c.x, u_input.c.x));
    return func_5(func_5(Struct_3(firstLeadingBit(61458u & 1u), Struct_2(!vec4<bool>(arg_0.b, arg_0.a, true, false), arg_0.b, u_input.e.yw, arg_0)), func_5(Struct_3(u_input.c.x, func_2(Struct_5(Struct_3(u_input.c.x, Struct_2(vec4<bool>(arg_1, arg_0.b, true, false), arg_1, u_input.c.zx, Struct_1(true, true, global0[0u]))), vec2<u32>(u_input.e.x, u_input.e.x)), global4[19559u]).b), func_5(Struct_3(54854u, Struct_2(vec4<bool>(arg_1, false, true, arg_1), true, u_input.c.xz, arg_0)), func_5(Struct_3(13898u, Struct_2(vec4<bool>(true, false, arg_1, true), arg_0.a, vec2<u32>(4294967295u, 24034u), arg_0)), Struct_4(-196f, Struct_3(var_3.x, Struct_2(vec4<bool>(arg_0.a, arg_0.b, arg_1, arg_0.a), false, var_3, arg_0)), vec4<f32>(arg_0.c, -1000f, 953f, arg_0.c), global0[var_3.x], Struct_2(vec4<bool>(false, false, false, arg_0.b), arg_1, vec2<u32>(0u, var_3.x), arg_0)))))).b, Struct_4(940f, func_5(func_5(func_5(Struct_3(var_3.x, Struct_2(vec4<bool>(arg_1, true, arg_0.a, arg_0.b), true, u_input.e.xz, Struct_1(true, arg_1, -1537f))), Struct_4(-320f, Struct_3(var_3.x, Struct_2(vec4<bool>(arg_0.a, false, true, arg_1), arg_0.b, var_3, Struct_1(false, true, arg_0.c))), vec4<f32>(arg_0.c, -470f, 576f, -642f), global0[var_3.x], Struct_2(vec4<bool>(true, arg_1, arg_0.a, arg_0.a), false, var_3, arg_0))).b, Struct_4(-1308f, Struct_3(0u, Struct_2(vec4<bool>(arg_1, arg_0.b, true, arg_1), true, u_input.e.xx, Struct_1(false, arg_0.b, global0[0u]))), vec4<f32>(global0[1u], arg_0.c, global0[1u], 1745f), -1412f, Struct_2(vec4<bool>(true, arg_1, arg_0.a, arg_0.b), false, vec2<u32>(46066u, u_input.e.x), arg_0))).b, func_5(func_2(Struct_5(Struct_3(16777u, Struct_2(vec4<bool>(arg_1, arg_0.b, arg_0.b, arg_0.a), true, var_3, arg_0)), var_3), vec3<f32>(arg_0.c, 1000f, arg_0.c)), Struct_4(global0[0u], Struct_3(u_input.e.x, Struct_2(vec4<bool>(false, arg_0.a, false, true), true, vec2<u32>(u_input.e.x, var_3.x), Struct_1(false, true, -743f))), vec4<f32>(1000f, global0[var_3.x], 1000f, global0[48542u]), arg_0.c, Struct_2(vec4<bool>(false, false, arg_0.b, arg_0.a), false, var_3, arg_0)))).b, vec4<f32>(arg_0.c, global0[~33424u + 1u], global0[dot(u_input.e, ~vec4<u32>(var_3.x, 45643u, 59016u, 24157u))], -202f), func_5(func_2(Struct_5(Struct_3(var_3.x, Struct_2(vec4<bool>(true, false, true, false), true, vec2<u32>(var_3.x, u_input.e.x), arg_0)), vec2<u32>(var_3.x, 0u)), round(vec3<f32>(787f, -1442f, global0[24008u]))), func_5(func_2(Struct_5(Struct_3(u_input.c.x, Struct_2(vec4<bool>(arg_0.a, arg_1, arg_1, arg_0.a), false, var_3, arg_0)), vec2<u32>(31322u, 0u)), global4[21152u]), Struct_4(661f, Struct_3(42062u, Struct_2(vec4<bool>(true, arg_0.a, false, arg_1), false, vec2<u32>(0u, var_3.x), Struct_1(arg_1, true, -1455f))), vec4<f32>(arg_0.c, global0[20130u], global0[0u], arg_0.c), -1938f, Struct_2(vec4<bool>(arg_1, arg_0.a, arg_0.b, false), false, var_3, Struct_1(arg_1, true, arg_0.c))))).c.x, Struct_2(vec4<bool>(arg_0.a, false & arg_1, arg_0.a && arg_1, arg_1), 22417u < firstLeadingBit(u_input.e.x), select(u_input.e.xy, vec2<u32>(0u, 0u), !vec2<bool>(true, true)), arg_0)));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = -((sign(arg_1.c.xxw / global4[arg_3.c.x]) + vec3<f32>(-929f, arg_3.d.c + 515f, 1307f)) + min(min(sign(vec3<f32>(1000f, -850f, -322f)), max(vec3<f32>(2109f, arg_0.x, 1118f), global4[4294967295u])), func_1(Struct_1(true, arg_3.a.x, 1000f), arg_1.b.b.d.a).c.wxz));
    global4 = array<vec3<f32>, 1>();
    var var_1 = arg_3.a;
    let var_2 = Struct_1(arg_3.d.b, !false, max(-1767f, -1000f));
    var var_3 = true;
    return round(-1043f) / (sign(arg_3.d.c) / arg_3.d.c);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<f32>, 1>();
    let var_0 = u_input.e.x;
    global1 = 275f;
    let var_1 = func_7(global4[dot((u_input.e / ~vec4<u32>(var_0, u_input.e.x, 1u, 38923u)) - select(vec4<u32>(11198u, u_input.e.x, 0u, u_input.e.x) % vec4<u32>(var_0, var_0, var_0, 1u), u_input.e, all(vec2<bool>(true, false))), ~u_input.e)], func_1(Struct_1(!true, false, -513f), !(!all(vec4<bool>(false, false, true, true)))), func_1(func_1(func_5(func_2(Struct_5(Struct_3(0u, Struct_2(vec4<bool>(true, true, false, false), true, vec2<u32>(0u, u_input.c.x), Struct_1(false, false, 245f))), u_input.c.zz), vec3<f32>(global0[1u], global0[var_0], 1814f)), func_5(Struct_3(71388u, Struct_2(vec4<bool>(true, false, true, true), true, vec2<u32>(52310u, var_0), Struct_1(false, true, -811f))), Struct_4(-409f, Struct_3(var_0, Struct_2(vec4<bool>(true, false, true, true), true, u_input.c.yy, Struct_1(false, false, global0[68945u]))), vec4<f32>(824f, global0[67886u], 1000f, 864f), global0[var_0], Struct_2(vec4<bool>(false, true, false, false), false, vec2<u32>(4294967295u, 22261u), Struct_1(true, true, global0[var_0]))))).b.b.d, true | true).e.d, abs(-1i) > ~(-2147483647i)).e.a.zxw, Struct_2(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), !(!all(vec4<bool>(false, false, false, true))), ~max(reverseBits(vec2<u32>(1u, 17403u)), u_input.e.wz ^ u_input.e.ww), func_1(func_2(Struct_5(Struct_3(u_input.e.x, Struct_2(vec4<bool>(false, false, true, false), true, u_input.c.xy, Struct_1(true, true, 126f))), u_input.e.xz), global4[4294967295u]).b.d, false).e.d));
    global0 = array<f32, 13>();
    let var_2 = !any(vec4<bool>(false, false, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.d.wwy), global3[var_0], -max(func_5(func_5(Struct_3(4294967295u, Struct_2(vec4<bool>(var_2, false, var_2, var_2), var_2, u_input.e.xx, Struct_1(false, var_2, global0[var_0]))), Struct_4(global0[75149u], Struct_3(u_input.c.x, Struct_2(vec4<bool>(true, true, false, var_2), var_2, u_input.c.xx, Struct_1(var_2, var_2, var_1))), vec4<f32>(var_1, global0[u_input.e.x], 578f, global0[32537u]), global0[var_0], Struct_2(vec4<bool>(true, true, false, var_2), true, vec2<u32>(var_0, 1u), Struct_1(false, true, var_1)))).b, Struct_4(global0[1u], Struct_3(15947u, Struct_2(vec4<bool>(var_2, false, false, false), var_2, vec2<u32>(46717u, 87169u), Struct_1(var_2, false, global0[var_0]))), vec4<f32>(var_1, global0[var_0], var_1, 560f), 1484f, Struct_2(vec4<bool>(true, var_2, var_2, false), var_2, u_input.e.yy, Struct_1(var_2, var_2, var_1)))).c.yw, vec2<f32>(-1094f - global0[4294967295u], floor(global0[var_0]))), u_input.c << u_input.e.zyz);
}

