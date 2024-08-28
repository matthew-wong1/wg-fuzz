// {"0:0":[134,129,121,226,46,201,50,66,22,177,47,1,146,147,31,8]}
// Seed: 7384639265734623650

struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = 619f;
    let var_1 = sign(vec2<f32>(692f, 1410f));
    var var_2 = abs(~(((vec2<i32>(6438i, -1i) / vec2<i32>(arg_2.c, 41028i)) / vec2<i32>(20000i, 1i)) >> ~firstLeadingBit(arg_1.a)));
    var var_3 = arg_0.b.c;
    var var_4 = i32(-2147483648);
    return arg_1.e.b.b;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    return Struct_1(select(func_3(Struct_3(firstTrailingBit(u_input.b), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), 13201i, vec2<f32>(669f, 814f), 1000f), u_input.a.x, Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), i32(-2147483648), vec2<f32>(-661f, 116f), -2614f), Struct_2(vec2<bool>(false, true), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), -58441i, vec2<f32>(545f, 1548f), 491f), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), 1i, vec2<f32>(1848f, 526f), -1191f), -1i)), Struct_3(u_input.b, Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), 13388i, vec2<f32>(408f, 1403f), 414f), dot(vec3<u32>(arg_0.x, 4294967295u, 38796u), vec3<u32>(arg_0.x, arg_0.x, 4294967295u)), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), 43256i, vec2<f32>(-192f, 667f), 1424f), Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), i32(-2147483648), vec2<f32>(-1000f, 1473f), -1049f), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), 1i, vec2<f32>(-2370f, 385f), 1615f), 2147483647i)), Struct_1(!vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true), 2147483647i >> u_input.b.x, vec2<f32>(-145f, 1222f) / vec2<f32>(1328f, 847f), exp2(1186f))), !(!vec4<bool>(true, true, true, false)), all(!vec2<bool>(false, true))), vec4<bool>(!(u_input.b.x >= 32819u), false, any(vec3<bool>(!true, any(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, true)))), !(!(!true))), -(~dot(vec3<i32>(-48145i, -3896i, 1i), vec3<i32>(13307i, -1i, 35520i))) * (2147483647i % abs(1i)), -vec2<f32>(min(636f, -(-1116f)), 1439f), 355f);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = select(min(ceil(vec4<f32>(trunc(arg_2.x), 256f, -1262f, arg_0.b.e)), max(vec4<f32>(arg_2.x, -1788f, -1000f, 442f) - step(vec4<f32>(arg_2.x, 494f, 963f, arg_2.x), vec4<f32>(1266f, -671f, 1000f, arg_2.x)), vec4<f32>(arg_0.b.e, -948f + -247f, -1078f, -1196f))), vec4<f32>(arg_0.c.e + max(arg_0.b.d.x + -448f, -683f), arg_0.c.e, -1423f, min(-119f, select(sign(arg_2.x), round(-469f), arg_0.c.a.x))), !vec4<bool>(true | !true, (49615u << arg_1.x) == arg_1.x, arg_0.c.b.x, arg_0.b.b.x));
    let var_1 = arg_0.c.b.x;
    var var_2 = 68614u;
    return 933f;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = vec3<f32>(-(-(-(-693f))), (trunc(-(-1370f)) - (max(-774f, -1000f) / round(400f))) + func_4(Struct_2(select(vec2<bool>(true, false), vec2<bool>(true, false), false), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), arg_0, vec2<f32>(-163f, 319f), -1020f), func_2(vec4<u32>(4294967295u, 1u, 1u, u_input.b.x)), 2147483647i), reverseBits(vec3<u32>(1u, 1u, 4294967295u)), abs(vec2<f32>(189f, -433f) + vec2<f32>(1972f, 1000f)), select(func_2(vec4<u32>(u_input.a.x, u_input.a.x, 43402u, 0u)).b, func_2(vec4<u32>(u_input.b.x, 44964u, u_input.a.x, u_input.a.x)).a, false)), -(min(789f, -1387f) * 179f));
    return Struct_2(!(!(!(!vec2<bool>(false, true)))), func_2(~(~(vec4<u32>(38154u, 0u, u_input.b.x, 54600u) | vec4<u32>(1u, u_input.b.x, 1u, u_input.b.x)))), Struct_1(!func_3(Struct_3(u_input.a, Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), arg_0, vec2<f32>(870f, -2039f), 313f), 4294967295u, Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), arg_0, vec2<f32>(-346f, var_1.x), var_1.x), Struct_2(vec2<bool>(true, false), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), arg_0, vec2<f32>(-291f, var_1.x), var_1.x), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), arg_0, var_1.yx, var_1.x), 34980i)), Struct_3(vec2<u32>(4294967295u, 8686u), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), 33005i, var_1.yy, -248f), u_input.a.x, Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), 0i, vec2<f32>(var_1.x, 2650f), -1056f), Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), -61021i, vec2<f32>(var_1.x, -825f), 510f), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), arg_0, var_1.yz, -480f), i32(-2147483648))), func_2(vec4<u32>(29148u, 69641u, 4294967295u, u_input.b.x))), select(!(!vec4<bool>(false, false, false, false)), vec4<bool>(!true, !false, true, true), !(!false)), -15652i, var_1.xx, -1479f), -8099i << u_input.b.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    return Struct_3(abs(u_input.a << (~u_input.a | vec2<u32>(0u, 9575u))), func_2(~(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.b.x) + (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<u32>(0u, u_input.b.x, 1u, 4294967295u)))), 2241u, Struct_1(arg_2.c.b, select(func_3(Struct_3(vec2<u32>(4294967295u, 4294967295u), arg_0.b, 23863u, Struct_1(arg_1.a, arg_2.c.b, 14391i, arg_0.b.d, -396f), Struct_2(arg_0.a, arg_2.c, arg_2.b, i32(-2147483648))), Struct_3(vec2<u32>(27039u, u_input.b.x), Struct_1(vec4<bool>(false, false, arg_0.c.a.x, true), arg_0.c.a, 41847i, vec2<f32>(arg_0.c.d.x, arg_2.c.d.x), arg_1.e), u_input.b.x, arg_1, arg_2), arg_0.c), arg_0.b.b, select(!arg_2.c.b, select(vec4<bool>(false, false, arg_2.a.x, arg_0.b.a.x), vec4<bool>(arg_0.c.a.x, true, arg_2.a.x, false), arg_2.b.b), vec4<bool>(false, arg_2.c.a.x, arg_2.a.x, true))), arg_1.c, arg_0.b.d, -(-675f)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(-1i & 32851i), Struct_1(func_3(Struct_3(~vec2<u32>(u_input.b.x, 38413u), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), -24998i, vec2<f32>(673f, 1579f), -524f), firstTrailingBit(1546u), func_2(vec4<u32>(u_input.b.x, 28003u, 4294967295u, u_input.b.x)), func_1(1i)), Struct_3(~vec2<u32>(u_input.b.x, 1u), func_1(2147483647i).b, 4945u, func_1(-1804i).b, Struct_2(vec2<bool>(true, false), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), -1i, vec2<f32>(746f, 1779f), -1532f), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), 18896i, vec2<f32>(606f, 2078f), -319f), 2147483647i)), Struct_1(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), func_3(Struct_3(vec2<u32>(u_input.b.x, u_input.a.x), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), -83633i, vec2<f32>(961f, 478f), -429f), u_input.a.x, Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), 22436i, vec2<f32>(183f, -437f), -1276f), Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), 15445i, vec2<f32>(-415f, -123f), 552f), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), i32(-2147483648), vec2<f32>(-443f, -398f), -232f), -52841i)), Struct_3(vec2<u32>(u_input.a.x, u_input.b.x), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), 8671i, vec2<f32>(1000f, 2186f), 464f), u_input.b.x, Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), 0i, vec2<f32>(688f, 288f), -153f), Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), 49435i, vec2<f32>(-798f, 161f), 1000f), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), -1i, vec2<f32>(2084f, -295f), -1000f), 17456i)), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), 0i, vec2<f32>(-900f, 171f), -929f)), -6412i, vec2<f32>(900f, -293f) + vec2<f32>(113f, -1276f), max(-111f, 1300f))), vec4<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), false, (691f / 280f) >= -146f), i32(-2147483648), vec2<f32>(select(-362f * 313f, -1390f, u_input.a.x < u_input.b.x), 326f), -1006f - -floor(-277f)), Struct_2(select(func_1(2147483647i).c.a.ww, vec2<bool>(false | false, true), select(!false, true && false, false)), Struct_1(vec4<bool>(true, !true, !true, !false), !(!vec4<bool>(true, true, true, false)), max(~27279i, 48516i & 1i), (vec2<f32>(414f, -958f) - vec2<f32>(384f, -788f)) / step(vec2<f32>(246f, 1000f), vec2<f32>(1091f, 386f)), 2292f), Struct_1(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), !vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, true, true), !vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), 2147483647i, func_1(131i << u_input.a.x).b.d, -trunc(-230f)), (clamp(0i, 18373i, 4696i) * clamp(0i, -1i, -13097i)) / 16518i));
    let var_1 = var_0.e;
    var var_2 = Struct_2(var_1.a, func_5(Struct_2(select(var_0.b.b.yz, vec2<bool>(var_1.b.a.x, false), !var_1.a), func_5(var_0.e, Struct_1(var_1.c.b, vec4<bool>(var_1.b.b.x, var_0.e.b.b.x, var_0.b.a.x, var_1.b.b.x), var_0.e.b.c, vec2<f32>(var_0.e.b.e, 1000f), 900f), var_0.e).e.c, var_1.b, var_0.d.c), Struct_1(func_3(Struct_3(vec2<u32>(var_0.a.x, var_0.c), Struct_1(var_1.b.a, var_0.d.b, i32(-2147483648), vec2<f32>(var_0.b.e, var_1.c.e), var_1.b.d.x), var_0.a.x, var_1.b, Struct_2(var_1.c.a.yx, Struct_1(var_0.d.a, var_0.d.a, var_0.d.c, vec2<f32>(var_1.c.d.x, -431f), var_0.e.b.d.x), Struct_1(vec4<bool>(false, var_1.c.a.x, false, true), var_1.b.b, i32(-2147483648), var_1.b.d, var_1.b.e), -3457i)), Struct_3(u_input.a, Struct_1(vec4<bool>(true, var_1.c.a.x, false, true), vec4<bool>(false, var_1.c.a.x, false, var_0.b.b.x), var_0.b.c, vec2<f32>(-577f, 111f), -674f), 1u, Struct_1(var_1.c.b, var_0.d.a, -1i, vec2<f32>(var_1.b.e, -545f), -1328f), var_0.e), Struct_1(vec4<bool>(true, var_1.b.b.x, var_0.b.b.x, var_0.d.b.x), vec4<bool>(false, var_0.d.b.x, false, false), -1i, vec2<f32>(-513f, -423f), var_1.b.e)), vec4<bool>(true, var_1.c.d.x <= -430f, any(vec4<bool>(false, var_1.c.a.x, false, var_1.b.a.x)), var_0.b.a.x), firstTrailingBit(-(i32(-2147483648))), -min(var_1.c.d, vec2<f32>(var_0.d.e, var_1.c.d.x)), ceil(var_1.c.d.x)), Struct_2(!(!var_0.b.b.yz), Struct_1(vec4<bool>(false, false, var_0.d.a.x, false), !vec4<bool>(var_0.e.b.a.x, false, var_0.e.b.b.x, true), ~(-51039i), abs(vec2<f32>(-369f, 1536f)), 2198f), var_0.e.b, -max(var_1.b.c, var_0.e.c.c))).e.b, Struct_1(vec4<bool>(func_1(var_0.b.c).a.x, any(vec3<bool>(var_1.a.x, true, var_0.e.c.b.x)), true, any(vec4<bool>(true, var_1.c.b.x, true, var_1.a.x))), !(!(!vec4<bool>(true, true, false, false))), -26235i, vec2<f32>(func_2(vec4<u32>(u_input.b.x, u_input.b.x, var_0.a.x, var_0.c) >> vec4<u32>(1u, 11468u, 0u, 0u)).e, round(-762f) / trunc(var_1.c.d.x)), 758f), -var_1.d);
    var_0 = func_5(Struct_2(func_2(vec4<u32>(54372u, firstTrailingBit(var_0.c), ~13406u, ~57346u)).a.xy, Struct_1(!func_3(Struct_3(vec2<u32>(var_0.c, u_input.b.x), var_0.d, u_input.a.x, Struct_1(vec4<bool>(false, var_0.b.b.x, false, false), vec4<bool>(false, var_0.e.a.x, var_2.c.a.x, var_1.c.a.x), -52417i, vec2<f32>(-271f, var_2.b.e), var_1.b.e), Struct_2(vec2<bool>(true, var_0.b.a.x), var_1.c, var_0.d, var_2.d)), Struct_3(var_0.a, var_2.c, 0u, var_2.c, Struct_2(var_2.c.a.ww, var_2.b, var_1.c, -1i)), var_1.b), select(var_1.b.a, func_3(Struct_3(var_0.a, var_1.b, 11279u, Struct_1(var_0.d.a, var_2.c.a, i32(-2147483648), var_0.b.d, var_1.c.e), Struct_2(vec2<bool>(true, var_0.d.a.x), var_2.c, Struct_1(vec4<bool>(var_2.a.x, var_0.b.b.x, false, true), var_1.b.b, var_1.c.c, var_2.b.d, 1572f), 38190i)), Struct_3(vec2<u32>(var_0.c, u_input.a.x), Struct_1(var_1.b.b, vec4<bool>(var_2.c.b.x, var_2.c.a.x, true, var_2.a.x), 1i, var_2.c.d, -567f), var_0.a.x, Struct_1(var_2.c.b, vec4<bool>(true, var_0.e.c.a.x, false, var_2.a.x), i32(-2147483648), vec2<f32>(var_0.e.c.e, 1000f), var_0.b.d.x), var_0.e), var_1.c), true), 0i, -vec2<f32>(-1838f, -1518f) * -var_2.c.d, -var_0.e.c.e), func_1(~(-3681i) & -(-1i)).b, var_2.c.c), Struct_1(var_0.b.b, !(!var_1.b.b), reverseBits(~(i32(-2147483648) ^ var_0.d.c)), -(vec2<f32>(var_1.c.d.x, var_2.c.e) * var_2.b.d), max(-938f, -2467f + trunc(var_2.b.e))), func_5(Struct_2(!vec2<bool>(var_1.b.a.x, false), Struct_1(var_2.c.a, select(vec4<bool>(true, var_1.c.a.x, false, var_0.e.c.a.x), var_1.c.a, true), abs(0i), vec2<f32>(-476f, 929f) - vec2<f32>(-1090f, var_2.c.d.x), -1180f), func_5(var_0.e, var_0.e.c, func_1(var_1.c.c)).e.b, -2147483647i & (-7114i - var_2.b.c)), Struct_1(var_2.c.a, vec4<bool>(!true, var_0.d.a.x | var_0.d.b.x, var_2.b.a.x, var_2.c.b.x), var_2.c.c, var_2.c.d, select(-894f + 2092f, -var_2.b.d.x, all(vec3<bool>(true, var_1.a.x, var_2.a.x)))), func_1(firstLeadingBit(-2147483647i))).e);
    let var_3 = vec2<bool>(false, true);
    let var_4 = sign(select(782f, 785f, var_2.c.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, vec3<f32>(var_0.d.e * 247f, ceil(-967f), func_4(func_1(func_5(Struct_2(var_2.c.b.zw, Struct_1(vec4<bool>(var_2.a.x, var_1.a.x, var_3.x, false), var_0.d.b, 2147483647i, vec2<f32>(-889f, var_0.e.b.e), var_1.c.d.x), var_1.c, var_2.b.c), var_2.c, var_0.e).b.c), ~(vec3<u32>(var_0.c, u_input.a.x, var_0.a.x) * vec3<u32>(14401u, u_input.b.x, 33756u)), floor(-vec2<f32>(1068f, var_4)), var_1.b.a)));
}

