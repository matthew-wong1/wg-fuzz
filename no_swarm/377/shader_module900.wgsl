// {"0:0":[125,56,23,150,185,117,54,241,211,76,14,212,97,221,12,95,9,121,116,58,22,5,183,6,224,180,127,59,155,36,194,90,250,180,133,208,80,76,62,16,1,118,236,100,57,88,170,52,38,34,224,51,95,209,187,55,82,207,59,50,177,172,191,245,51,218,163,24,220,25,55,239,230,64,198,239,164,64,220,221]}
// Seed: 10231544241276412260

struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<u32>) -> bool {
    var var_0 = select(arg_0.c.b.wx, arg_0.b.a.b.xz, !(!any(vec3<bool>(arg_0.c.d, false, arg_0.a.b.x))));
    let var_1 = vec4<f32>(sign(arg_0.b.a.c.x) / abs(-866f), select(max(1080f, -210f), sign(-1475f) + max(arg_0.b.a.c.x, 1367f / -168f), !((arg_0.c.d == true) & !var_0.x)), -663f / min(abs(step(arg_1.x, arg_0.b.a.c.x)), arg_0.b.a.c.x), -(429f + (-203f / round(1000f))));
    var_0 = vec2<bool>(!true, true);
    var_0 = select(arg_0.c.b.zz, !vec2<bool>(!false, false), vec2<bool>(all(arg_0.a.b.wyx), !select(true, arg_0.b.a.b.x, var_0.x) && (!arg_0.b.a.b.x | select(true, true, false))));
    let var_2 = arg_0.b;
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: bool, arg_3: vec2<f32>) -> vec4<f32> {
    var var_0 = abs(44455u) ^ (u_input.c / u_input.c);
    var_0 = ~(~min(96119u, firstLeadingBit(u_input.c)));
    var_0 = u_input.c;
    let var_1 = ~firstLeadingBit((u_input.c ^ 88722u) + u_input.c) | ~(~(~firstLeadingBit(u_input.c)));
    var var_2 = ceil(step(-1697f, arg_1.a.c.x) * arg_1.c.c.x);
    return min(-vec4<f32>(-671f, arg_3.x, 554f, 1382f), (vec4<f32>(-1415f, ceil(-162f), max(-613f, 117f), abs(arg_3.x)) * step(vec4<f32>(-979f, 873f, arg_3.x, -225f) + vec4<f32>(-617f, arg_1.a.c.x, arg_3.x, arg_1.c.c.x), -vec4<f32>(-1000f, 1495f, arg_3.x, arg_1.a.c.x))) - vec4<f32>(arg_3.x, -arg_3.x, floor(arg_3.x) - -236f, -1617f));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = select(vec2<u32>(u_input.c, ~1u), ~(~(vec2<u32>(28565u, u_input.c) >> vec2<u32>(u_input.c, u_input.c)) & vec2<u32>(2497u << u_input.c, u_input.c)), !(12726u > abs(110428u)));
    let var_1 = vec3<bool>(false & false, 18606i <= min(30776i, arg_1), !true);
    var var_2 = func_4(arg_2.zx, Struct_3(Struct_1(299i, vec4<bool>(false, false, func_3(Struct_3(Struct_1(u_input.d.x, vec4<bool>(var_1.x, true, var_1.x, true), arg_0.xz, var_1.x), Struct_2(Struct_1(arg_3.x, vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec2<f32>(arg_0.x, arg_0.x), true), vec3<i32>(u_input.a, arg_3.x, 0i)), Struct_1(1i, vec4<bool>(arg_2.x, var_1.x, arg_2.x, true), arg_0.wz, var_1.x)), arg_0, vec4<u32>(var_0.x, 4294967295u, 0u, 30089u)), true), ceil(arg_0.zz), all(select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(var_1.x, arg_2.x, arg_2.x, false), true))), Struct_2(Struct_1(abs(i32(-2147483648)), select(vec4<bool>(var_1.x, arg_2.x, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false)), select(vec2<f32>(1830f, 180f), arg_0.zw, true), arg_2.x && var_1.x), arg_3), Struct_1(dot(u_input.e, vec4<i32>(2147483647i, arg_1, i32(-2147483648), u_input.e.x)) & ~1i, !(!vec4<bool>(var_1.x, false, arg_2.x, arg_2.x)), arg_0.xx, false)), !(var_1.x && all(arg_2)), -arg_0.wx);
    var var_3 = Struct_1(~40351i, !vec4<bool>(!(var_2.x >= arg_0.x), !var_1.x, ~arg_3.x != (arg_1 % -6350i), var_1.x), vec2<f32>(439f, var_2.x), !(!(!false)) | arg_2.x);
    let var_4 = Struct_1(-(-max(clamp(arg_3.x, 1i, 2147483647i), ~u_input.b.x)), select(var_3.b, vec4<bool>(func_3(Struct_3(Struct_1(var_3.a, var_3.b, var_3.c, var_3.d), Struct_2(Struct_1(-64148i, vec4<bool>(false, false, var_1.x, var_1.x), vec2<f32>(-1298f, 395f), true), vec3<i32>(115342i, u_input.e.x, arg_3.x)), Struct_1(37251i, vec4<bool>(var_1.x, false, arg_2.x, false), arg_0.ww, var_3.b.x)), vec4<f32>(-474f, 849f, 2099f, arg_0.x), select(vec4<u32>(u_input.c, var_0.x, u_input.c, 37074u), vec4<u32>(4294967295u, u_input.c, 1u, var_0.x), vec4<bool>(var_3.b.x, true, false, var_3.b.x))), var_3.b.x, !any(var_3.b), !(!false)), !true), -(func_4(!vec2<bool>(false, false), Struct_3(Struct_1(33480i, var_3.b, arg_0.wz, arg_2.x), Struct_2(Struct_1(u_input.b.x, var_3.b, var_2.xw, arg_2.x), vec3<i32>(27100i, 1553i, -99500i)), Struct_1(7643i, vec4<bool>(false, true, arg_2.x, true), var_3.c, var_1.x)), true, -vec2<f32>(var_2.x, arg_0.x)).ww + vec2<f32>(var_2.x, var_3.c.x)), arg_2.x);
    return Struct_2(var_4, clamp(vec3<i32>(dot(vec2<i32>(-1i, arg_3.x) + vec2<i32>(var_4.a, u_input.a), firstLeadingBit(vec2<i32>(arg_1, u_input.d.x))), u_input.d.x, clamp(31456i, -4877i << 18839u, 69618i)), vec3<i32>(2147483647i, 1i - dot(vec4<i32>(0i, arg_1, 0i, 69041i), vec4<i32>(u_input.d.x, -3333i, -1i, arg_1)), u_input.d.x), countOneBits(arg_3)));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>) -> vec4<bool> {
    var var_0 = ((u_input.c <= (dot(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 34914u, 4294967295u)) << u_input.c)) & false) || (any(arg_0.a.b.wy) || arg_0.a.b.x);
    var_0 = u_input.c == abs(52049u);
    let var_1 = func_2(exp2(-(-vec4<f32>(-214f, arg_0.a.c.x, 198f, 1312f))), 2428i, vec3<bool>(!(60003u < 4294967295u), !(false & true), select(!arg_0.a.b.x, all(vec3<bool>(true, false, false)), false | true)), vec3<i32>(arg_0.b.x + -(-74937i), arg_0.b.x, clamp(-57890i, 18637i, arg_1) << u_input.c)).a.c.x * select(-abs(trunc(1502f)), func_4(vec2<bool>(!arg_0.a.b.x, arg_0.a.d), Struct_3(arg_0.a, arg_0, func_2(vec4<f32>(1000f, arg_0.a.c.x, -800f, 1739f), -1i, vec3<bool>(false, arg_0.a.d, false), vec3<i32>(2147483647i, arg_1, arg_2.x)).a), false, vec2<f32>(-arg_0.a.c.x, -780f)).x, ~(1i * arg_2.x) > 17131i);
    var var_2 = vec4<f32>(-(-abs(-2258f)), var_1, floor(-417f), 1255f - -210f);
    var_2 = (-(-vec4<f32>(arg_0.a.c.x, -1662f, 378f, 396f)) * -(-vec4<f32>(arg_0.a.c.x, 1251f, arg_0.a.c.x, var_1) / vec4<f32>(113f, 341f, arg_0.a.c.x, -821f))) / vec4<f32>(round(-var_2.x) / 283f, var_2.x + 1072f, -((arg_0.a.c.x * arg_0.a.c.x) * -var_2.x), var_1);
    return arg_0.a.b;
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_3) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(2147483647i, func_5(func_2(vec4<f32>(-824f, -246f, -2093f, arg_1.b.x) / vec4<f32>(arg_2.a.c.x, 973f, -1000f, 1220f), arg_3.b.a.a, select(vec3<bool>(false, arg_2.a.d, true), vec3<bool>(false, arg_2.a.b.x, false), vec3<bool>(false, arg_2.a.b.x, arg_3.c.d)), arg_2.b), abs(arg_1.a - arg_2.b.x), vec2<i32>(u_input.a - 2147483647i, -44091i)), -vec2<f32>(-2482f, -arg_0), all(!vec4<bool>(true, true, arg_2.a.b.x, arg_3.a.b.x))), Struct_2(Struct_1(u_input.d.x, arg_3.b.a.b, vec2<f32>(arg_2.a.c.x / -658f, -248f), func_5(Struct_2(arg_3.a, u_input.e.yzy), countOneBits(u_input.a), u_input.e.wx).x), -u_input.e.yzw << abs(~vec3<u32>(u_input.c, 35683u, 4294967295u))), arg_3.c);
    var_0 = Struct_3(arg_2.a, func_2(func_4(func_2(vec4<f32>(-535f, arg_2.a.c.x, -2458f, arg_1.b.x), select(var_0.b.a.a, i32(-2147483648), var_0.b.a.b.x), func_2(vec4<f32>(319f, arg_0, -1040f, var_0.b.a.c.x), 7344i, vec3<bool>(false, arg_3.c.d, true), arg_3.b.b).a.b.wxx, u_input.e.wyz).a.b.xx, Struct_3(arg_2.a, func_2(vec4<f32>(1000f, arg_3.a.c.x, arg_1.b.x, var_0.c.c.x), var_0.b.a.a, vec3<bool>(false, arg_2.a.b.x, true), vec3<i32>(var_0.b.b.x, u_input.b.x, 14913i)), var_0.c), !(arg_2.a.b.x && arg_2.a.b.x), -vec2<f32>(-1650f, var_0.c.c.x) / vec2<f32>(-298f, 415f)), reverseBits(21691i), vec3<bool>(var_0.b.a.b.x, (1i * arg_3.a.a) <= arg_3.a.a, arg_2.a.b.x), vec3<i32>(-37566i, arg_1.a ^ 2147483647i, 2147483647i) >> ((vec3<u32>(4294967295u, u_input.c, 39963u) + vec3<u32>(u_input.c, 1u, 4294967295u)) * vec3<u32>(11159u, u_input.c, u_input.c))), Struct_1(~2147483647i % ~(-(-15123i)), select(!arg_2.a.b, !arg_2.a.b, arg_2.a.d), floor(vec2<f32>(-206f, 359f)) + vec2<f32>(-arg_1.b.x, var_0.b.a.c.x / arg_2.a.c.x), !func_2(arg_1.b, arg_1.a, select(vec3<bool>(true, false, arg_2.a.b.x), vec3<bool>(true, false, true), arg_3.c.b.zyx), vec3<i32>(14868i, arg_1.a, u_input.e.x) / var_0.b.b).a.b.x));
    var var_1 = Struct_5(func_2(vec4<f32>(trunc(-1043f), -430f, -1799f, step(step(-137f, arg_0), sign(661f))), arg_1.a, func_5(Struct_2(func_2(arg_1.b, arg_2.b.x, vec3<bool>(false, arg_2.a.d, var_0.c.d), vec3<i32>(arg_2.a.a, arg_3.c.a, -1i)).a, var_0.b.b), countOneBits(dot(vec3<i32>(arg_2.b.x, arg_3.b.a.a, 1i), vec3<i32>(arg_1.a, arg_2.b.x, 2147483647i))), u_input.d.xx).xyx, vec3<i32>(1034i, arg_2.a.a & (arg_3.c.a << 1u), ~(-arg_3.a.a))).a);
    var var_2 = var_0.b;
    let var_3 = -25542i;
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: Struct_4) -> u32 {
    var var_0 = exp2(vec2<f32>(round(arg_1.b.x * 1950f), 616f));
    var_0 = func_1((abs(arg_1.b.x) + trunc(func_2(arg_1.b, u_input.d.x, vec3<bool>(false, false, false), u_input.e.wzx).a.c.x)) - (var_0.x - arg_1.b.x), func_1(func_2(func_1(var_0.x, arg_1, Struct_2(Struct_1(u_input.d.x, vec4<bool>(false, false, false, true), vec2<f32>(1000f, var_0.x), false), u_input.d), Struct_3(Struct_1(1719i, vec4<bool>(false, false, false, true), vec2<f32>(var_0.x, -2319f), true), Struct_2(Struct_1(arg_1.a, vec4<bool>(false, true, false, true), vec2<f32>(183f, -199f), true), u_input.d), Struct_1(22659i, vec4<bool>(false, true, true, false), arg_1.b.xy, true))).b, dot(u_input.b, vec4<i32>(29662i, 2147483647i, 12450i, -1i) | vec4<i32>(1i, u_input.d.x, arg_0, -1i)), select(!vec3<bool>(false, false, true), func_5(Struct_2(Struct_1(-25941i, vec4<bool>(true, true, false, true), vec2<f32>(arg_1.b.x, var_0.x), true), u_input.e.zzw), 34583i, vec2<i32>(arg_0, arg_0)).zwz, vec3<bool>(false, true, true)), ~(u_input.e.wzy + vec3<i32>(u_input.a, arg_1.a, u_input.e.x))).a.c.x, arg_1, func_2(arg_1.b, i32(-2147483648), select(func_2(arg_1.b, -1i, vec3<bool>(false, true, true), u_input.e.xwz).a.b.wzx, func_5(Struct_2(Struct_1(i32(-2147483648), vec4<bool>(true, true, false, false), vec2<f32>(var_0.x, arg_1.b.x), true), u_input.e.wwy), -4378i, vec2<i32>(arg_0, 67852i)).xxx, func_2(vec4<f32>(-1000f, 711f, -617f, -1398f), -28593i, vec3<bool>(true, false, true), u_input.d).a.b.yzx), u_input.e.zyy >> countOneBits(vec3<u32>(u_input.c, 4294967295u, u_input.c))), Struct_3(Struct_1(select(arg_1.a, arg_1.a, true), func_5(Struct_2(Struct_1(-22612i, vec4<bool>(false, false, false, true), arg_1.b.xz, true), vec3<i32>(22803i, arg_1.a, 19588i)), arg_1.a, vec2<i32>(arg_1.a, u_input.b.x)), vec2<f32>(-351f, var_0.x), true), func_2(arg_1.b, ~0i, !vec3<bool>(true, false, false), vec3<i32>(0i, -7383i, arg_0) >> vec3<u32>(u_input.c, u_input.c, u_input.c)), Struct_1(u_input.b.x, vec4<bool>(true, false, true, true), vec2<f32>(var_0.x, -575f), func_3(Struct_3(Struct_1(u_input.a, vec4<bool>(false, true, true, true), vec2<f32>(var_0.x, var_0.x), false), Struct_2(Struct_1(arg_0, vec4<bool>(false, true, false, true), vec2<f32>(1000f, -1363f), true), vec3<i32>(u_input.b.x, 0i, i32(-2147483648))), Struct_1(arg_1.a, vec4<bool>(false, false, true, false), arg_1.b.wz, false)), arg_1.b, vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u))))), func_2(arg_1.b, countOneBits(abs(u_input.e.x)), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), firstLeadingBit(~u_input.b.zxx | u_input.d)), Struct_3(Struct_1(-1i, vec4<bool>(true, true & false, !true, !false), arg_1.b.zz, select(!true, arg_1.b.x == -1098f, select(false, false, false))), Struct_2(func_2(arg_1.b + vec4<f32>(arg_1.b.x, arg_1.b.x, -1779f, var_0.x), ~arg_1.a, vec3<bool>(true, true, true), clamp(vec3<i32>(u_input.e.x, u_input.b.x, 20035i), u_input.b.wzy, vec3<i32>(u_input.d.x, 36071i, -51532i))).a, u_input.d), func_2(vec4<f32>(var_0.x, -1444f, var_0.x, -780f) + (arg_1.b + arg_1.b), -1i, select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, false, true), false && false), ~min(u_input.b.wxz, vec3<i32>(arg_1.a, arg_0, arg_0))).a)).b.xw;
    var var_1 = func_2(-vec4<f32>((arg_1.b.x - -104f) + (var_0.x * var_0.x), -2625f, arg_1.b.x, (123f - 1644f) + (var_0.x + -1353f)), -func_1(2937f, Struct_4(arg_1.a, vec4<f32>(-504f, var_0.x, -1000f, -423f)), Struct_2(Struct_1(1i, vec4<bool>(true, true, true, false), vec2<f32>(var_0.x, arg_1.b.x), false), vec3<i32>(arg_0, u_input.d.x, -17836i)), Struct_3(Struct_1(u_input.d.x, vec4<bool>(true, true, false, true), arg_1.b.yy, false), Struct_2(Struct_1(arg_1.a, vec4<bool>(true, false, false, true), vec2<f32>(var_0.x, 221f), false), u_input.e.wyw), Struct_1(u_input.d.x, vec4<bool>(true, true, true, true), vec2<f32>(1271f, -801f), false))).a & ((countOneBits(arg_1.a) << (u_input.c % u_input.c)) & ~arg_0), func_5(Struct_2(func_2(floor(vec4<f32>(-1280f, var_0.x, -573f, 393f)), func_2(vec4<f32>(arg_1.b.x, -2164f, 1000f, 803f), arg_1.a, vec3<bool>(false, false, true), u_input.b.zyz).b.x, func_2(vec4<f32>(-398f, 649f, arg_1.b.x, var_0.x), 1322i, vec3<bool>(true, false, true), u_input.e.zwz).a.b.zxy, ~vec3<i32>(arg_0, 0i, arg_0)).a, abs(~vec3<i32>(u_input.d.x, 1759i, 1i))), arg_0, u_input.b.zz).wxw, u_input.b.zxw).a;
    let var_2 = floor(func_4(vec2<bool>(!var_1.b.x, false), Struct_3(Struct_1(-60749i & -17669i, var_1.b, -var_1.c, var_1.d), func_2(arg_1.b, ~(-33179i), var_1.b.xxx, u_input.b.wxx ^ vec3<i32>(2147483647i, var_1.a, -23216i)), Struct_1(func_1(var_0.x, Struct_4(i32(-2147483648), arg_1.b), Struct_2(Struct_1(u_input.d.x, vec4<bool>(false, true, false, var_1.d), arg_1.b.ww, false), vec3<i32>(i32(-2147483648), 0i, -1i)), Struct_3(Struct_1(arg_1.a, vec4<bool>(var_1.b.x, var_1.d, true, var_1.b.x), arg_1.b.wy, false), Struct_2(Struct_1(arg_0, var_1.b, arg_1.b.xw, var_1.d), vec3<i32>(arg_1.a, -57391i, u_input.d.x)), Struct_1(2147483647i, vec4<bool>(true, var_1.d, var_1.b.x, var_1.d), vec2<f32>(1000f, var_0.x), var_1.d))).a, select(vec4<bool>(false, var_1.d, var_1.b.x, true), vec4<bool>(true, var_1.d, var_1.d, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, var_1.d, true)), vec2<f32>(-1000f, arg_1.b.x), !true)), any(!func_2(vec4<f32>(var_1.c.x, 397f, -355f, arg_1.b.x), 2147483647i, vec3<bool>(var_1.d, var_1.b.x, true), vec3<i32>(-27769i, 2147483647i, arg_1.a)).a.b.zz), vec2<f32>(-(-796f / arg_1.b.x), -(arg_1.b.x + var_0.x))).x);
    let var_3 = Struct_1(-4817i, var_1.b, -var_1.c, all(var_1.b.zyz));
    return ~(~max(1u, 12298u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~countOneBits(func_6(-1i % u_input.e.x, func_1(649f, Struct_4(22448i, vec4<f32>(-253f, -1136f, -1386f, 1549f)), Struct_2(Struct_1(u_input.e.x, vec4<bool>(true, false, true, false), vec2<f32>(-890f, 1000f), false), u_input.e.zxz), Struct_3(Struct_1(u_input.a, vec4<bool>(true, true, true, false), vec2<f32>(-1053f, 848f), true), Struct_2(Struct_1(-55947i, vec4<bool>(false, false, true, false), vec2<f32>(179f, -666f), true), u_input.e.wzy), Struct_1(-14879i, vec4<bool>(true, false, false, false), vec2<f32>(-1255f, -1410f), false))))), clamp(~firstLeadingBit(u_input.c), reverseBits(abs(4294967295u)), select(u_input.c, func_6(86778i, Struct_4(u_input.b.x, vec4<f32>(166f, 526f, 406f, 1446f))) % ~0u, !(-842f < -2561f))), u_input.c, ~u_input.c);
    var var_1 = 712f;
    var var_2 = !vec4<bool>(-(399f * 1814f) >= func_1(-1461f, Struct_4(-96408i, vec4<f32>(-1113f, -673f, -241f, -966f)), func_2(vec4<f32>(-1000f, 922f, 380f, -1201f), u_input.b.x, vec3<bool>(true, false, true), u_input.e.wzy), Struct_3(Struct_1(62687i, vec4<bool>(true, true, false, false), vec2<f32>(592f, 207f), true), Struct_2(Struct_1(u_input.e.x, vec4<bool>(true, false, false, true), vec2<f32>(-759f, 351f), false), vec3<i32>(u_input.d.x, 2147483647i, u_input.e.x)), Struct_1(-41690i, vec4<bool>(true, true, true, true), vec2<f32>(327f, 1372f), true))).b.x, false, all(vec2<bool>(true, false)) | !(!false), all(func_2(-vec4<f32>(975f, -1000f, -232f, -588f), u_input.e.x, !vec3<bool>(false, false, false), vec3<i32>(1i, u_input.d.x, u_input.d.x) / vec3<i32>(0i, u_input.b.x, 1i)).a.b.zzy));
    let var_3 = func_2(abs(-vec4<f32>(-1932f / 764f, 262f, -1470f, -1493f)), i32(-2147483648), !var_2.wxy, u_input.b.xyx ^ max(vec3<i32>(2147483647i, 21538i - 6389i, -1i), vec3<i32>(u_input.e.x, 1i, -22176i - u_input.a))).a;
    var_2 = select(!vec4<bool>(var_2.x, var_2.x, all(!vec4<bool>(true, var_3.d, true, false)), !func_3(Struct_3(Struct_1(3393i, var_3.b, vec2<f32>(689f, 1283f), false), Struct_2(var_3, vec3<i32>(var_3.a, 2147483647i, -13783i)), Struct_1(2147483647i, vec4<bool>(var_2.x, true, var_2.x, var_2.x), var_3.c, true)), vec4<f32>(var_3.c.x, var_3.c.x, -1000f, -969f), vec4<u32>(u_input.c, u_input.c, 73429u, var_0.x))), !select(var_3.b, vec4<bool>(any(vec2<bool>(var_2.x, var_2.x)), var_2.x, !true, true), var_3.b), var_3.b);
    var var_4 = var_3.a % 1i;
    let var_5 = -var_3.c.x / abs(var_3.c.x / exp2(-340f * var_3.c.x));
    var_1 = ceil(var_3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_0.yxz)), ceil(-vec3<f32>(step(381f, var_5), func_4(var_3.b.yx, Struct_3(Struct_1(0i, var_3.b, vec2<f32>(317f, -875f), false), Struct_2(Struct_1(-5165i, var_3.b, var_3.c, var_3.b.x), vec3<i32>(u_input.b.x, u_input.b.x, i32(-2147483648))), Struct_1(u_input.a, vec4<bool>(false, true, var_2.x, var_2.x), var_3.c, var_3.b.x)), false, var_3.c).x, var_5)), u_input.b);
}

