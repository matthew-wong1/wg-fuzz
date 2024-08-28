// {"0:0":[93,119,185,8,36,222,15,85]}
// Seed: 14862076950858376470

struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(40250u, Struct_1(-51940i));

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = max(-(-820f), arg_0.x) - -2328f;
    global0 = arg_2.c;
    var var_1 = -(((arg_0.xxy * step(arg_1.zww, vec3<f32>(arg_2.d, -672f, 1405f))) + sign(arg_0.xzz)) - vec3<f32>(-(-110f), exp2(-1000f), 510f + (var_0 * arg_0.x)));
    var var_2 = Struct_2(clamp(global0.a, 1u, dot(countOneBits(vec3<u32>(global0.a, 4294967295u, global0.a)), arg_2.b)), arg_2.c.b);
    var_1 = arg_1.xzy;
    return Struct_2(1u, global0.b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    global0 = Struct_2(~reverseBits(~(~arg_2.a)), func_2(vec4<f32>(min(arg_1, round(1739f)), arg_1, step(step(arg_1, -1000f), round(-355f)), 1230f), vec4<f32>(arg_1, arg_1 / -1307f, -(-1000f), 2060f) - -vec4<f32>(871f, arg_1, arg_1, -483f), Struct_3(func_2(vec4<f32>(arg_1, 828f, arg_1, arg_1) * vec4<f32>(533f, arg_1, 1893f, arg_1), -vec4<f32>(arg_1, arg_1, arg_1, 603f), Struct_3(Struct_1(arg_2.b.a), vec3<u32>(0u, 38257u, u_input.a), arg_2, -527f, true)).b, ~vec3<u32>(4294967295u, 56489u, 1u) >> firstLeadingBit(vec3<u32>(global0.a, 0u, 1u)), func_2(round(vec4<f32>(arg_1, -1577f, -1080f, 1000f)), vec4<f32>(-678f, -169f, arg_1, -1197f), Struct_3(arg_2.b, vec3<u32>(arg_2.a, u_input.a, u_input.a), arg_2, arg_1, false)), (-763f - arg_1) + -arg_1, false)).b);
    var var_0 = -(-sign(-1134f));
    let var_1 = min(vec2<u32>(1u, abs(global0.a)), ~(~vec2<u32>(arg_2.a, 0u)) - select(vec2<u32>(11745u, 104600u) * vec2<u32>(0u, u_input.a), ~vec2<u32>(arg_2.a, arg_2.a), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))) ^ ~vec2<u32>(arg_2.a, ~4294967295u % ~0u);
    var var_2 = Struct_2((arg_2.a / u_input.a) - ((~arg_2.a / var_1.x) / ~(4294967295u & 0u)), Struct_1(2147483647i));
    var_0 = -254f;
    return vec3<i32>(abs(~57264i >> func_2(round(vec4<f32>(732f, arg_1, arg_1, arg_1)), ceil(vec4<f32>(arg_1, 904f, 2297f, 465f)), Struct_3(arg_2.b, vec3<u32>(var_2.a, arg_2.a, 1u), Struct_2(27255u, Struct_1(var_2.b.a)), arg_1, false)).a), ~(-abs(26172i)) >> abs(~(global0.a ^ var_2.a)), -65918i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = func_2(vec4<f32>(round(-arg_2), ceil(1525f), arg_2 - arg_2, -round(arg_2)) + (abs(vec4<f32>(-1000f, arg_2, arg_2, arg_2)) + select(vec4<f32>(arg_2, arg_2, 610f, -1258f) + vec4<f32>(arg_2, arg_2, -749f, -1000f), vec4<f32>(arg_2, 1498f, arg_2, arg_2), arg_3.x)), vec4<f32>(-min(sign(arg_2), -996f), 299f - 554f, arg_2, arg_2), Struct_3(func_2(vec4<f32>(exp2(arg_2), min(arg_2, -299f), arg_2, 688f), step(vec4<f32>(-1000f, 509f, arg_2, -1016f), vec4<f32>(384f, arg_2, arg_2, arg_2) + vec4<f32>(arg_2, arg_2, -864f, arg_2)), Struct_3(func_2(vec4<f32>(963f, 222f, arg_2, 2113f), vec4<f32>(arg_2, arg_2, arg_2, arg_2), Struct_3(Struct_1(66224i), vec3<u32>(1u, u_input.a, 0u), Struct_2(24438u, Struct_1(arg_1.a)), -1425f, arg_3.x)).b, vec3<u32>(u_input.a, 41436u, global0.a) ^ vec3<u32>(4294967295u, global0.a, global0.a), Struct_2(0u, Struct_1(9873i)), arg_2, 634u == 0u)).b, reverseBits(vec3<u32>(4294967295u, 1u, u_input.a) | vec3<u32>(731u, global0.a, global0.a)) / (vec3<u32>(39780u, 48771u, 38778u) & (vec3<u32>(14724u, global0.a, u_input.a) - vec3<u32>(40797u, global0.a, 1u))), Struct_2(13391u % (34290u ^ 1u), arg_1), trunc(arg_2) + arg_2, (1i % -global0.b.a) != 46943i));
    let var_1 = arg_3;
    global0 = func_2(vec4<f32>((-993f * (595f / 569f)) * arg_2, exp2(arg_2), 1023f, exp2(-1000f)), exp2(vec4<f32>(-1414f, -885f, -1352f, -112f)), Struct_3(arg_1, select(select(vec3<u32>(global0.a, u_input.a, u_input.a), clamp(vec3<u32>(9283u, 4294967295u, global0.a), vec3<u32>(27897u, 5684u, u_input.a), vec3<u32>(1u, var_0.a, 21654u)), vec3<bool>(false, arg_3.x, false)), vec3<u32>(firstLeadingBit(14139u), 1u, u_input.a >> 4294967295u), vec3<bool>(!var_1.x, false, true)), Struct_2(var_0.a, arg_1), 1239f, any(!(!arg_3))));
    global0 = var_0;
    global0 = Struct_2(countOneBits(abs(~global0.a)), var_0.b);
    return var_0;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = func_4(countOneBits(dot(func_3(arg_0.a, -2293f, func_2(vec4<f32>(-404f, 1783f, 557f, -1221f), vec4<f32>(-442f, -1435f, -693f, -207f), Struct_3(global0.b, vec3<u32>(global0.a, u_input.a, u_input.a), Struct_2(u_input.a, global0.b), 488f, false))), ~vec3<i32>(u_input.b, 0i, -5023i) | -vec3<i32>(13157i, u_input.b, -24568i))), global0.b, -(-1091f * -302f), vec4<bool>(any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)), !true, !false && select(false, !false, false | true), true));
    let var_0 = ~abs(69698u);
    let var_1 = ~(~min(~vec2<u32>(23426u, var_0), ~vec2<u32>(u_input.a, global0.a)) - vec2<u32>(1u, 4294967295u * u_input.a));
    global0 = Struct_2(0u % dot((vec3<u32>(var_1.x, global0.a, u_input.a) / vec3<u32>(102242u, var_0, var_1.x)) + (vec3<u32>(0u, global0.a, var_0) % vec3<u32>(global0.a, 1u, 0u)), abs(clamp(vec3<u32>(global0.a, u_input.a, var_1.x), vec3<u32>(u_input.a, 52485u, var_0), vec3<u32>(4294967295u, var_1.x, var_1.x)))), func_4(1i, func_4(-(i32(-2147483648)), Struct_1(u_input.b), -330f, select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), any(vec4<bool>(true, true, true, true)))).b, -select(143f, -1050f, false) - (abs(1295f) / -468f), !vec4<bool>(-45172i >= i32(-2147483648), all(vec3<bool>(true, true, true)), !false, false || true)).b);
    let var_2 = min(vec3<u32>(clamp(clamp(57495u, dot(var_1, vec2<u32>(58192u, var_1.x)), var_0), u_input.a, countOneBits(var_0 >> 3164u)), func_2(-vec4<f32>(-252f, -1000f, -342f, -1100f), -select(vec4<f32>(-812f, -1626f, 317f, -1539f), vec4<f32>(779f, 267f, 1010f, -680f), true), Struct_3(func_2(vec4<f32>(413f, -124f, 611f, -132f), vec4<f32>(-1000f, -839f, 138f, -666f), Struct_3(arg_0, vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_2(global0.a, Struct_1(u_input.b)), -130f, false)).b, vec3<u32>(global0.a, 0u, var_1.x), func_2(vec4<f32>(1000f, -1475f, -1000f, -1802f), vec4<f32>(721f, 401f, -458f, -579f), Struct_3(Struct_1(arg_0.a), vec3<u32>(4294967295u, var_0, var_0), Struct_2(0u, Struct_1(arg_0.a)), -866f, true)), round(2589f), true)).a, ~u_input.a), min(vec3<u32>(select(~var_1.x, 135079u, !true), 40208u, 3257u), vec3<u32>((24196u / var_0) / (var_0 - 4294967295u), ~11903u, min(0u, u_input.a))));
    return trunc(-112f);
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = !select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(u_input.b == 26618i, 22319u >= 40159u, !true), !all(vec3<bool>(true, false, false))), vec3<bool>(select(select(false, false, false), !false, !true), !true, u_input.a >= abs(1u)), select(select(!vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), true), !(!vec3<bool>(false, false, false)), !(!vec3<bool>(false, true, false))));
    var var_1 = ~(-(select(arg_1, global0.b.a, false) ^ ~64961i)) + (arg_2.a >> ~max(64689u, ~4294967295u));
    var var_2 = arg_1;
    var var_3 = vec4<f32>(arg_3, arg_3, func_1(Struct_1(0i)), -1447f + 1257f) / (-arg_0 + arg_0);
    var_0 = !select(select(!(!vec3<bool>(false, false, var_0.x)), select(!vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, false), false), !(!vec3<bool>(true, var_0.x, var_0.x))), !vec3<bool>(var_0.x, !false, 935f <= 1934f), vec3<bool>(select(false, false, var_0.x) & true, var_0.x, (53664u * 0u) > (u_input.a >> 1u)));
    return func_2(arg_0, arg_0, Struct_3(Struct_1(i32(-2147483648)), vec3<u32>(44273u / 10423u, u_input.a, ~4294967295u) | (vec3<u32>(u_input.a, 8513u, global0.a) - vec3<u32>(0u, global0.a, 20079u)), Struct_2(~u_input.a << (u_input.a + global0.a), Struct_1(arg_2.a)), 994f, !(!true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<f32>(-(-(-245f * -757f)), -1586f, -func_1(global0.b), min(-(-339f) + (-807f - -357f), select(-1139f, min(740f, -1000f), !true))), 12607i, global0.b, 1248f);
    var var_1 = -(ceil(1221f) * -1549f) <= 1648f;
    global0 = func_2(vec4<f32>(round(step(select(673f, -1000f, false), -(-589f))), -(-1900f), step(-(-1000f), round(989f / -661f)), (-932f / -1000f) - -(-606f - -820f)), -vec4<f32>(ceil(exp2(493f)), -(688f * 472f), step(826f, 974f) - -(-142f), -790f + sign(-1000f)), Struct_3(var_0.b, ~vec3<u32>(12167u, u_input.a, global0.a) * ~select(vec3<u32>(u_input.a, 24481u, 1460u), vec3<u32>(0u, 1u, 0u), vec3<bool>(false, true, true)), func_2(-(-vec4<f32>(-1000f, -951f, -1000f, -930f)), -(-vec4<f32>(644f, -1407f, -1198f, -321f)), Struct_3(Struct_1(var_0.b.a), vec3<u32>(1u, 49520u, var_0.a) / vec3<u32>(global0.a, u_input.a, 4294967295u), func_2(vec4<f32>(803f, 141f, -1506f, -845f), vec4<f32>(-133f, -768f, -612f, 805f), Struct_3(Struct_1(var_0.b.a), vec3<u32>(var_0.a, var_0.a, var_0.a), var_0, -1390f, false)), func_1(global0.b), false)), -407f, !(false & true) || !true));
    var_1 = all(!vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false)), (false | false) && all(vec3<bool>(false, true, false)), (u_input.a < u_input.a) & false, false));
    var var_2 = !vec2<bool>(select(false, false, 1749f != max(-910f, -2123f)), true);
    let var_3 = ((~var_0.b.a * 21398i) & 0i) - -42870i;
    global0 = Struct_2(~(~max(global0.a, global0.a) | (u_input.a + var_0.a)), func_2((vec4<f32>(1491f, 542f, -618f, -672f) / (vec4<f32>(-1871f, -1000f, -1287f, 474f) + vec4<f32>(3226f, -1163f, -474f, 730f))) * min(exp2(vec4<f32>(1000f, 816f, -873f, 279f)), vec4<f32>(-916f, 2678f, -195f, 1808f) + vec4<f32>(1226f, 345f, 1000f, 714f)), vec4<f32>(1159f, -608f, func_1(global0.b), -(-772f) + -1488f), Struct_3(func_2(-vec4<f32>(-261f, -1000f, 1157f, -1185f), -vec4<f32>(-648f, -2119f, 236f, 137f), Struct_3(global0.b, vec3<u32>(1u, u_input.a, 61024u), Struct_2(0u, Struct_1(var_3)), 144f, var_2.x)).b, vec3<u32>(global0.a, u_input.a >> var_0.a, func_2(vec4<f32>(1612f, 158f, -1513f, -2247f), vec4<f32>(1525f, 873f, -1358f, 796f), Struct_3(global0.b, vec3<u32>(u_input.a, 1u, 4294967295u), var_0, 1609f, var_2.x)).a), func_4(i32(-2147483648), var_0.b, floor(1139f), !vec4<bool>(true, var_2.x, var_2.x, false)), max(988f, 282f) / 237f, false)).b);
    var var_4 = !vec2<bool>(-floor(246f) >= 1556f, any(select(!vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, true), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, true, var_2.x), vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-sign(exp2(-132f)) * ((-1674f / (-679f * -140f)) + -trunc(-160f)), vec3<i32>(firstLeadingBit(dot(~vec2<i32>(-1i, global0.b.a), func_3(global0.b.a, 183f, Struct_2(38252u, global0.b)).xz)), abs(-var_3), -1i & firstLeadingBit(-24055i)));
}

